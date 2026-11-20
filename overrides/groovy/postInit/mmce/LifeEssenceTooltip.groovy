// Divine Journey 2 Modern
// Life essence (LP) numbers are never shown on MMCE recipe pages: the JEI layout part
// draws the orb but has no tooltip, and DynamicRecipeWrapper only reports duration.
// This appends the numbers as plain recipe tooltip lines, which drawInfo paints at the
// bottom of the page for every recipe of the machine.
//
// Language keys cannot be used here: getFormattedTooltip only runs the string through
// I18n.canTranslate/I18n.format with no arguments, so a numbered line has to be built
// as a literal.

import hellfirepvp.modularmachinery.common.crafting.RecipeRegistry
import hellfirepvp.modularmachinery.common.machine.MachineRegistry
import hellfirepvp.modularmachinery.common.machine.IOType
import kport.modularmagic.common.crafting.requirement.RequirementLifeEssence
import net.minecraft.client.Minecraft


def log = { Object message ->
    System.out.println("[dj2-mmce-tips] " + message)
}

// The two words follow the client language; the amount and unit stay literal because
// getFormattedTooltip cannot interpolate arguments into a language key. Both the words
// and the language are read once at load, so switching language needs a reload.
boolean zh = Minecraft.getMinecraft()?.gameSettings?.language?.toLowerCase()?.startsWith("zh")
String consumeWord = zh ? "消耗" : "Consume"
String produceWord = zh ? "产出" : "Produce"

// Doubles as the idempotency marker: a reload must not stack duplicate lines.
// Matches both the English wording and the older Chinese one, so switching does not
// leave a stale line behind.
def isOwnLine = { Object line ->
    line != null && line.startsWith("\u00a77") && line.contains(" LP")
}

int tagged = 0
int skipped = 0
for (def machine : MachineRegistry.getLoadedMachines()) {
    for (def recipe : RecipeRegistry.getRecipesFor(machine)) {
        def essences = recipe.getCraftingRequirements().findAll { it instanceof RequirementLifeEssence }
        if (essences.isEmpty()) {
            continue
        }
        if (recipe.getTooltipList().any(isOwnLine)) {
            skipped++
            continue
        }

        int cost = 0
        int gain = 0
        boolean costPerTick = false
        boolean gainPerTick = false
        for (def essence : essences) {
            if (essence.getActionType() == IOType.OUTPUT) {
                gain += essence.essenceAmount
                gainPerTick |= essence.perTick
            } else {
                cost += essence.essenceAmount
                costPerTick |= essence.perTick
            }
        }

        if (cost > 0) {
            recipe.addTooltip("\u00a77" + consumeWord + " \u00a7f" + cost + (costPerTick ? " LP/t" : " LP"))
        }
        if (gain > 0) {
            recipe.addTooltip("\u00a77" + produceWord + " \u00a7f" + gain + (gainPerTick ? " LP/t" : " LP"))
        }
        tagged++
    }
}

log("life essence tooltips: tagged=" + tagged + " skipped=" + skipped)
