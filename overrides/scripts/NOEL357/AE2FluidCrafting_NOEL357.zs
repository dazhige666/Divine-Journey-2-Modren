// Author: NOEL357

print("STARTING AE2FluidCrafting_NOEL357.zs");

// Drop of Water/Lava
mods.jei.JEI.hide(<ae2fc:fluid_drop>.withTag({Fluid:"water"}));
mods.jei.JEI.hide(<ae2fc:fluid_drop>.withTag({Fluid:"lava"}));

// ME Fluid Assembler
mods.jei.JEI.removeAndHide(<ae2fc:fluid_assembler>);

// ME Fluid Discretizer
recipes.remove(<ae2fc:fluid_discretizer>);
recipes.addShaped(<ae2fc:fluid_discretizer>, [
  [<enderio:item_alloy_ingot>, <contenttweaker:methodology_processor>, <enderio:item_alloy_endergy_ingot:1>],
  [<appliedenergistics2:part:221>, <appliedenergistics2:condenser>, <appliedenergistics2:part:220>],
  [<enderio:item_alloy_endergy_ingot:1>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot>]
]);


// Fluid Pattern Encoder
recipes.remove(<ae2fc:fluid_pattern_encoder>);
recipes.addShaped(<ae2fc:fluid_pattern_encoder>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:material:52>, <enderio:item_alloy_endergy_ingot:1>],
  [<contenttweaker:methodology_processor>, <actuallyadditions:block_misc:8>, <contenttweaker:methodology_processor>],
  [<enderio:item_alloy_endergy_ingot:1>, <ironchest:iron_chest:6>, <enderio:item_alloy_ingot>]
]);


// ME Fluid Packet Decoder
recipes.remove(<ae2fc:fluid_packet_decoder>);
recipes.addShaped(<ae2fc:fluid_packet_decoder>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:material:22>, <enderio:item_alloy_endergy_ingot:1>],
  [<enderio:item_material:13>, <appliedenergistics2:fluid_interface>, <enderio:item_material:13>],
  [<enderio:item_alloy_endergy_ingot:1>, <appliedenergistics2:material:22>, <enderio:item_alloy_ingot>]
]);


// Ingredient Buffer
recipes.remove(<ae2fc:ingredient_buffer>);
recipes.addShaped(<ae2fc:ingredient_buffer>, [
  [<enderio:item_alloy_ingot>, <contenttweaker:operation_processor>, <enderio:item_alloy_endergy_ingot:1>],
  [<enderio:item_material:13>, <ae2fc:dual_interface>, <enderio:item_material:13>],
  [<enderio:item_alloy_endergy_ingot:1>, <contenttweaker:operation_processor>, <enderio:item_alloy_ingot>]
]);


// Large Ingredient Buffer
recipes.remove(<ae2fc:large_ingredient_buffer>);
recipes.addShaped(<ae2fc:large_ingredient_buffer>, [
  [<enderio:item_alloy_ingot>, <ae2fc:ingredient_buffer>, <enderio:item_alloy_endergy_ingot:1>],
  [<ae2fc:ingredient_buffer>, <appliedenergistics2:material:24>, <ae2fc:ingredient_buffer>],
  [<enderio:item_alloy_endergy_ingot:1>, <ae2fc:ingredient_buffer>, <enderio:item_alloy_ingot>]
]);


// Precision Burette
recipes.remove(<ae2fc:burette>);
recipes.addShaped(<ae2fc:burette>, [
  [<thermalfoundation:material:32>, <openblocks:tank>, <thermalfoundation:material:32>],
  [<appliedenergistics2:material:23>, <mekanism:basicblock:8>, <appliedenergistics2:material:23>],
  [<thermalfoundation:material:32>, <storagedrawers:basicdrawers>, <thermalfoundation:material:32>]
]);


// ME Dual Interface
recipes.remove(<ae2fc:dual_interface>);
recipes.addShaped(<ae2fc:dual_interface>, [
  [null, <enderio:item_alloy_ingot>, null],
  [<appliedenergistics2:interface>, <appliedenergistics2:material:24>, <appliedenergistics2:fluid_interface>],
  [null, <enderio:item_alloy_endergy_ingot:1>, null]
]);

recipes.addShapeless(<ae2fc:dual_interface>, [<ae2fc:part_dual_interface>]);

// ME Fluid Level Maintainer
mods.jei.JEI.removeAndHide(<ae2fc:fluid_level_maintainer>);

// ME Ultimate Encoder
recipes.remove(<ae2fc:ultimate_encoder>);
recipes.addShaped(<ae2fc:ultimate_encoder>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:material:24>, <enderio:item_alloy_endergy_ingot:1>],
  [<appliedenergistics2:part:341>, <actuallyadditions:block_misc:8>, <ae2fc:part_fluid_pattern_ex_terminal>],
  [<enderio:item_alloy_endergy_ingot:1>, <ironchest:iron_chest:6>, <enderio:item_alloy_ingot>]
]);


// ME Fluid Pattern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_terminal>, [
  [null, <enderio:item_alloy_ingot>, null],
  [<appliedenergistics2:part:340>, <appliedenergistics2:material:24>, <ae2fc:fluid_pattern_encoder>],
  [null, <enderio:item_alloy_endergy_ingot:1>, null]
]);


// ME Extended Processing Fluid Pattern Terminal
recipes.remove(<ae2fc:part_fluid_pattern_ex_terminal>);
recipes.addShaped(<ae2fc:part_fluid_pattern_ex_terminal>, [
  [<contenttweaker:estimation_processor>, null, <contenttweaker:estimation_processor>],
  [<ae2fc:part_fluid_pattern_terminal>, <appliedenergistics2:material:24>, <ae2fc:part_fluid_pattern_terminal>],
  [<contenttweaker:estimation_processor>, null, <contenttweaker:estimation_processor>]
]);


// Wireless Fluid Pattern Terminal
recipes.remove(<ae2fc:wireless_fluid_pattern_terminal>);
recipes.addShaped(<ae2fc:wireless_fluid_pattern_terminal>, [
  [null, <contenttweaker:methodology_processor>, null],
  [<appliedenergistics2:wireless_terminal>, <botania:corporeaspark:1>, <ae2fc:part_fluid_pattern_terminal>],
  [null, <contenttweaker:methodology_processor>, null]
]);


print("ENDING AE2FluidCrafting_NOEL357.zs");
