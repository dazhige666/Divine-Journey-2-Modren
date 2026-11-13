// Divine Journey 2 Modern - added content (not present in the original pack).
// Modular Machinery stores modifier descriptions as literal strings. The machine
// JSON now holds a lang key, and this script turns those keys into text on the
// client. GroovyScript rewrites java.io.File into its sandboxed GroovyFile (which
// resolves paths against the Minecraft home) and blacklists java.nio.file, so the
// lang file is read through GroovyFile. Keys are injected into LanguageMap, which
// also localizes the machine display names (AbstractMachine.getLocalizedName()).
//
// Uses GroovyScript's eventManager instead of @SubscribeEvent: script classes are
// not scanned by Forge, so annotated methods would never fire.

import com.cleanroommc.groovyscript.event.GroovyEventManager
import com.cleanroommc.groovyscript.helper.GroovyFile
import hellfirepvp.modularmachinery.common.machine.MachineRegistry
import net.minecraft.client.Minecraft
import net.minecraft.client.resources.I18n
import net.minecraft.util.text.translation.LanguageMap
import net.minecraftforge.fml.common.gameevent.TickEvent


Map<String, String> translations = [:]
int cooldown = 0
int changedLines = 0

def log = { Object message ->
    System.out.println("[mmce-i18n] " + message)
}

def findLangFile = { String locale ->
    try {
        List<String> codes = [locale]
        if (locale != null) {
            codes.add(locale.toLowerCase())
        }
        for (String code : codes.unique()) {
            // GroovyFile resolves this against the Minecraft home directory.
            GroovyFile file = new GroovyFile('resources/mmce/lang/' + code + '.lang')
            if (file.isFile()) {
                return file
            }
        }
        return null
    } catch (Throwable t) {
        log('find failed: ' + t)
        return null
    }
}

def readLangFile = { GroovyFile file ->
    Map<String, String> map = [:]
    try {
        file.eachLine('UTF-8') { String line ->
            String trimmed = line.trim()
            if (!trimmed.isEmpty() && !trimmed.startsWith('#') && trimmed.contains('=')) {
                int split = trimmed.indexOf('=')
                map[trimmed.substring(0, split).trim()] = trimmed.substring(split + 1)
            }
        }
    } catch (Throwable t) {
        log('read failed: ' + t)
    }
    return map
}

def injectTranslations = { Map<String, String> map ->
    if (map.isEmpty()) {
        return
    }
    StringBuilder builder = new StringBuilder()
    map.each { String key, String value ->
        builder.append(key).append('=').append(value).append('\n')
    }
    // java.io.ByteArrayInputStream is blacklisted by the sandbox, so write the
    // keys to a temporary file and hand its stream to LanguageMap instead.
    GroovyFile temp = new GroovyFile('config/mmce_i18n_runtime.lang')
    temp.setText(builder.toString(), 'UTF-8')
    try {
        temp.withInputStream { stream -> LanguageMap.inject(stream) }
    } finally {
        temp.delete()
    }
}

def translateAll = {
    changedLines = 0
    Collection machines = MachineRegistry.getLoadedMachines()
    if (machines == null) {
        return
    }
    machines.each { machine ->
        List replacements = []
        def modifiers = machine.getModifiers()
        if (modifiers != null) {
            modifiers.values().each { list -> replacements.addAll(list) }
        }
        def multiBlockModifiers = machine.getMultiBlockModifiers()
        if (multiBlockModifiers != null) {
            replacements.addAll(multiBlockModifiers)
        }
        replacements.each { replacement ->
            List lines = replacement.getDescriptionLines()
            if (lines == null) {
                return
            }
            for (int i = 0; i < lines.size(); i++) {
                String line = lines.get(i)
                if (line != null && translations.containsKey(line)) {
                    lines.set(i, translations.get(line))
                    changedLines++
                }
            }
        }
    }
}

log('script loaded')

if (Minecraft.getMinecraft() != null) {
    GroovyEventManager.INSTANCE.listen(TickEvent.ClientTickEvent) {
        if (cooldown > 0) {
            cooldown--
            return
        }
        // ClientTickEvent fires twice per tick; 1200 is roughly 30 seconds.
        cooldown = 1200
        try {
            def mc = Minecraft.getMinecraft()
            if (mc.world == null) {
                return
            }
            String locale = mc.getLanguageManager().getCurrentLanguage().getLanguageCode()
            GroovyFile file = findLangFile(locale)
            if (file == null) {
                log('lang file not found for locale=' + locale)
                return
            }
            translations = readLangFile(file)
            log('read locale=' + locale + ' file=' + file + ' keys=' + translations.size())
            if (translations.isEmpty()) {
                return
            }
            try {
                injectTranslations(translations)
            } catch (Throwable t) {
                log('inject failed: ' + t)
            }
            translateAll()
            log('applied keys=' + translations.size() + ' machines=' + (MachineRegistry.getLoadedMachines()?.size()) + ' lines=' + changedLines)
            log('check name=' + I18n.format('modularmachinery.chemical_caster'))
            log('check desc=' + I18n.format('modularmachinery.mob_loot_fabricator.modifier.celestial_crystal.desc'))
        } catch (Throwable t) {
            log('tick failed: ' + t)
        }
    }
}
