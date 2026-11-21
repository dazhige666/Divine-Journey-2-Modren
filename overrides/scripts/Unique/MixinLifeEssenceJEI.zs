#loader mixin

#mixin {targets: "kport.modularmagic.common.crafting.requirement.RequirementLifeEssence"}
zenClass MixinRequirementLifeEssence extends native.hellfirepvp.modularmachinery.common.crafting.helper.ComponentRequirement {
    function provideJEIComponent() as native.kport.modularmagic.common.integration.jei.component.JEIComponentLifeEssence {
        return null;
    }
}
