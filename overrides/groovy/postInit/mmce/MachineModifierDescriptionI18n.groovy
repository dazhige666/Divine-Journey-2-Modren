// Divine Journey 2 Modern - added content (not present in the original pack).
// Modular Machinery stores modifier descriptions as literal strings: the machine
// JSON holds a lang-like key, and this script swaps those keys for text once the
// player is in a world. The text lives in resources/mmce/description/<locale>.lang,
// outside the assets/<domain>/lang path, so it is never merged into LanguageMap.
// GroovyScript rewrites java.io.File into its sandboxed GroovyFile (which resolves
// paths against the Minecraft home) and blacklists java.nio.file, so the file is
// read through GroovyFile. Machine display names are ordinary lang keys in
// resources/mmce/lang/ and need no script.
//
// Uses GroovyScript's eventManager instead of @SubscribeEvent: script classes are
// not scanned by Forge, so annotated methods would never fire.

import com.cleanroommc.groovyscript.event.GroovyEventManager
import com.cleanroommc.groovyscript.helper.GroovyFile
import hellfirepvp.modularmachinery.common.machine.MachineRegistry
import net.minecraft.client.Minecraft
import net.minecraftforge.fml.common.gameevent.TickEvent


Map<String, String> descriptions = [:]
int changedLines = 0
boolean applied = false

def log = { Object message ->
    System.out.println("[mmce-i18n] " + message)
}

def findDescriptionFile = { String locale ->
    try {
        List<String> codes = [locale, locale == null ? null : locale.toLowerCase(), 'en_us']
        for (String code : codes.findAll { it != null }.unique()) {
            // GroovyFile resolves this against the Minecraft home directory.
            GroovyFile file = new GroovyFile('resources/mmce/description/' + code + '.lang')
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

def readDescriptionFile = { GroovyFile file ->
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
                if (line != null && descriptions.containsKey(line)) {
                    lines.set(i, descriptions.get(line))
                    changedLines++
                }
            }
        }
    }
}

log('script loaded')

if (Minecraft.getMinecraft() != null) {
    GroovyEventManager.INSTANCE.listen(TickEvent.ClientTickEvent) {
        def mc = Minecraft.getMinecraft()
        if (mc.world == null || mc.player == null) {
            // Left the world: allow one more pass after the next join.
            applied = false
            return
        }
        if (applied) {
            return
        }
        applied = true
        try {
            String locale = mc.getLanguageManager().getCurrentLanguage().getLanguageCode()
            GroovyFile file = findDescriptionFile(locale)
            if (file == null) {
                log('description file not found for locale=' + locale)
                return
            }
            descriptions = readDescriptionFile(file)
            log('read locale=' + locale + ' file=' + file + ' keys=' + descriptions.size())
            translateAll()
            log('applied machines=' + (MachineRegistry.getLoadedMachines()?.size()) + ' lines=' + changedLines)
        } catch (Throwable t) {
            log('apply failed: ' + t)
        }
    }
}
