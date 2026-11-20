// Divine Journey 2 Modern
// Life essence (LP) numbers are never shown on MMCE recipe pages: the JEI layout part
// draws the orb but has no tooltip, and DynamicRecipeWrapper only reports duration.
// This appends the numbers as plain recipe tooltip lines, which drawInfo paints at the
// bottom of the page for every recipe of the machine.

import hellfirepvp.modularmachinery.common.crafting.RecipeRegistry
import hellfirepvp.modularmachinery.common.machine.MachineRegistry
import hellfirepvp.modularmachinery.common.machine.IOType
import kport.modularmagic.common.crafting.requirement.RequirementLifeEssence


def log = { Object message ->
    System.out.println("[dj2-mmce-tips] " + message)
}

// Prefixes double as the idempotency marker: a reload must not stack duplicate lines.
String costMarker = "\u00a77\u6d88\u8017 \u00a7f"
String gainMarker = "\u00a77\u4ea7\u51fa \u00a7f"

int tagged = 0
int skipped = 0
for (def machine : MachineRegistry.getLoadedMachines()) {
    for (def recipe : RecipeRegistry.getRecipesFor(machine)) {
        def essences = recipe.getCraftingRequirements().findAll { it instanceof RequirementLifeEssence }
        if (essences.isEmpty()) {
            continue
        }
        if (recipe.getTooltipList().any { it != null && (it.startsWith(costMarker) || it.startsWith(gainMarker)) }) {
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
            recipe.addTooltip(costMarker + cost + (costPerTick ? " LP/t" : " LP"))
        }
        if (gain > 0) {
            recipe.addTooltip(gainMarker + gain + (gainPerTick ? " LP/t" : " LP"))
        }
        tagged++
    }
}

log("life essence tooltips: tagged=" + tagged + " skipped=" + skipped)
