// ContentTweaker item recipes from the Noel357 addon (selected).
// Tooltips are intentionally omitted.

import mods.modularmachinery.RecipeBuilder;

// Big Void Seed
recipes.addShaped(<contenttweaker:noel357_big_void_seed>, [
  [<thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:void_seed>],
  [<thaumcraft:void_seed>, <contenttweaker:binding_reagent>, <thaumcraft:void_seed>],
  [<thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:void_seed>]
]);

// Tough Galactic Plating
RecipeBuilder.newBuilder("noel357_tough_galactic_plating_ultimate_compressor_recipe", "ultimate_compressor", 1)
  .addEnergyPerTickInput(6000)
  .addItemInput(<thermalfoundation:material:325> * 16)
  .addItemInput(<thermalfoundation:material:327> * 16)
  .addItemInput(<thermalfoundation:material:328> * 16)
  .addItemOutput(<contenttweaker:tough_galactic_plating> * 4)
  .build();

// Basic Steel Casing
recipes.addShaped(<contenttweaker:noel357_basic_steel_casing>, [
  [<projectred-core:resource_item:103>, <mekanism:controlcircuit>, <projectred-core:resource_item:103>],
  [<contenttweaker:enriched_gum>, <mekanism:basicblock:8>, <contenttweaker:enriched_gum>],
  [<projectred-core:resource_item:103>, <mekanism:controlcircuit>, <projectred-core:resource_item:103>]
]);

// Advanced Steel Casing
recipes.addShaped(<contenttweaker:noel357_advanced_steel_casing>, [
  [<enderio:item_alloy_ingot:6>, <mekanism:controlcircuit:1>, <enderio:item_alloy_ingot:6>],
  [<mekanism:controlcircuit:1>, <contenttweaker:noel357_basic_steel_casing>, <mekanism:controlcircuit:1>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:cosmic_alloy>, <enderio:item_alloy_ingot:6>]
]);

// Elite Steel Casing
recipes.addShaped(<contenttweaker:noel357_elite_steel_casing>, [
  [<enderio:block_alloy:6>, <contenttweaker:steaming_restonia_crystal_block>, <enderio:block_alloy:6>],
  [<contenttweaker:cosmic_alloy>, <contenttweaker:noel357_advanced_steel_casing>, <contenttweaker:cosmic_alloy>],
  [<enderio:block_alloy:6>, <contenttweaker:steaming_restonia_crystal_block>, <enderio:block_alloy:6>]
]);

// Fake Energy Tablet
recipes.addShaped(<contenttweaker:noel357_energy_tablet>, [
  [<thermalfoundation:material:160>, <mekanism:enrichedalloy>, <thermalfoundation:material:160>],
  [<plustic:osgloglasingot>, <plustic:osgloglasingot>, <plustic:osgloglasingot>],
  [<thermalfoundation:material:160>, <mekanism:enrichedalloy>, <thermalfoundation:material:160>]
]);
recipes.addShapeless(<contenttweaker:noel357_energy_tablet>, [<mekanism:energytablet>]);

// Fake Basic Energy Cube
recipes.addShaped(<contenttweaker:noel357_basic_energy_cube>, [
  [<plustic:osgloglasingot>, <contenttweaker:noel357_energy_tablet>, <plustic:osgloglasingot>],
  [<thermalfoundation:material:160>, <immersiveengineering:metal_device0:2>, <thermalfoundation:material:160>],
  [<plustic:osgloglasingot>, <contenttweaker:noel357_energy_tablet>, <plustic:osgloglasingot>]
]);
recipes.addShapeless(<contenttweaker:noel357_basic_energy_cube>, [<mekanism:energycube>.withTag({tier: 0})]);

// Fake Advanced Energy Cube
recipes.addShaped(<contenttweaker:noel357_advanced_energy_cube>, [
  [<enderio:item_alloy_ingot:1>, <contenttweaker:noel357_energy_tablet>, <enderio:item_alloy_ingot:1>],
  [<contenttweaker:energized_osmium_ingot>, <contenttweaker:noel357_basic_energy_cube>, <contenttweaker:energized_osmium_ingot>],
  [<enderio:item_alloy_ingot:1>, <contenttweaker:noel357_energy_tablet>, <enderio:item_alloy_ingot:1>]
]);
recipes.addShapeless(<contenttweaker:noel357_advanced_energy_cube>, [<mekanism:energycube>.withTag({tier: 1})]);

// Fake Elite Energy Cube
recipes.addShaped(<contenttweaker:noel357_elite_energy_cube>, [
  [<mekanism:reinforcedalloy>, <contenttweaker:noel357_energy_tablet>, <mekanism:reinforcedalloy>],
  [<enderio:item_alloy_endergy_ingot:5>, <contenttweaker:noel357_advanced_energy_cube>, <enderio:item_alloy_endergy_ingot:5>],
  [<mekanism:reinforcedalloy>, <contenttweaker:noel357_energy_tablet>, <mekanism:reinforcedalloy>]
]);
recipes.addShapeless(<contenttweaker:noel357_elite_energy_cube>, [<mekanism:energycube>.withTag({tier: 2})]);

// Fake Ultimate Energy Cube
recipes.addShaped(<contenttweaker:noel357_ultimate_energy_cube>, [
  [<mekanism:atomicalloy>, <contenttweaker:noel357_energy_tablet>, <mekanism:atomicalloy>],
  [<mekanism:reinforcedalloy>, <contenttweaker:noel357_elite_energy_cube>, <mekanism:reinforcedalloy>],
  [<mekanism:atomicalloy>, <contenttweaker:noel357_energy_tablet>, <mekanism:atomicalloy>]
]);
recipes.addShapeless(<contenttweaker:noel357_ultimate_energy_cube>, [<mekanism:energycube>.withTag({tier: 3})]);

// Fake Pressurized Air Tank
recipes.addShaped(<contenttweaker:noel357_pressurized_air_tank>, [
  [null, <thermalfoundation:material:131>, <minecraft:bucket>],
  [<thermalfoundation:material:131>, <minecraft:bucket>, <thermalfoundation:material:131>],
  [<immersiveengineering:material:8>, <thermalfoundation:material:131>, null]
]);

// Fake Magnetic Glove
recipes.addShaped(<contenttweaker:noel357_magnetic_glove>, [
  [<minecraft:leather>, null, null],
  [null, <immersiveengineering:metal_decoration0>, <minecraft:leather>],
  [<minecraft:leather>, <thermalfoundation:material:32>, <minecraft:leather>]
]);

// Aquasalus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aquasalus>, [<contenttweaker:simple_catalyst>, <contenttweaker:noel357_water_crystal>, <contenttweaker:noel357_water_crystal>, <minecraft:dye>, <roots:dewgonia>, <minecraft:waterlily>], 100, 10, 1);

// Incendium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:incendium>, [<contenttweaker:simple_catalyst>, <contenttweaker:noel357_lava_crystal>, <thermalfoundation:material:1024>, <thermalfoundation:material:1024>, <roots:infernal_bulb>, <minecraft:netherrack>], 100, 10, 1);

// Air Reagent
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:2>, [<minecraft:glass_bottle>, <minecraft:glass_bottle>, <contenttweaker:noel357_pressurized_air_tank>, <immersiveengineering:wooden_device1:1>], 8, 4);

// Water Reagent
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component>, [<contenttweaker:noel357_water_crystal>, <contenttweaker:noel357_water_crystal>, <quark:sugar_block>, <mekanism:saltblock>], 8, 4);

// Lava Reagent
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:1>, [<contenttweaker:noel357_lava_crystal>, <contenttweaker:noel357_lava_crystal>, <contenttweaker:fluxed_electrum_block>, <minecraft:coal_block>], 8, 4);

// Damage Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:damage_reagent>, [<abyssalcraft:dreadiumsword>, <spartanshields:shield_abyssalcraft_dreadium>, <minecraft:potion>.withTag({Potion: "cofhcore:harming4"}), <contenttweaker:noel357_lava_crystal>], 300, 36);

// Strength Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:strength_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}), <contenttweaker:noel357_magnetic_glove>, <contenttweaker:steaming_restonia_crystal>, <quantumflux:craftingpiece:2>], 300, 36);

// Suppression Reagent
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:9>, [<actuallyadditions:block_misc:8>, <contenttweaker:noel357_dew_of_the_void_crystal>, <contenttweaker:noel357_vapor_of_levity_crystal>, <enderio:item_material:44>], 500, 72);
