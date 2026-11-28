// Author: NOEL357

print("STARTING AE2FluidCrafting_NOEL357.zs");

// Drop of Water/Lava
mods.jei.JEI.hide(<ae2fc:fluid_drop>.withTag({Fluid:"water"}));
mods.jei.JEI.hide(<ae2fc:fluid_drop>.withTag({Fluid:"lava"}));

// ME Fluid Assembler
mods.jei.JEI.removeAndHide(<ae2fc:fluid_assembler>);

// ME Fluid Discretizer (obsolete in AE2FCRU)
mods.jei.JEI.removeAndHide(<ae2fc:fluid_discretizer>);


// Fluid Pattern Encoder (obsolete in AE2FCRU: base Pattern Terminal handles fluids)
mods.jei.JEI.removeAndHide(<ae2fc:fluid_pattern_encoder>);


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


// Precision Burette (removed)
mods.jei.JEI.removeAndHide(<ae2fc:burette>);


// ME Dual Interface
recipes.remove(<ae2fc:dual_interface>);
recipes.addShaped(<ae2fc:dual_interface>, [
  [null, <enderio:item_alloy_ingot>, null],
  [<appliedenergistics2:interface>, <appliedenergistics2:material:24>, <appliedenergistics2:fluid_interface>],
  [null, <enderio:item_alloy_endergy_ingot:1>, null]
]);

recipes.addShapeless(<ae2fc:dual_interface>, [<ae2fc:part_dual_interface>]);

// ME General Level Maintainer (disabled in this pack)
mods.jei.JEI.removeAndHide(<ae2fc:fluid_level_maintainer>);

// Dedicated fluid pattern terminals are removed; the vanilla Pattern Terminal now handles fluid patterns.
mods.jei.JEI.removeAndHide(<ae2fc:part_fluid_pattern_terminal>);
mods.jei.JEI.removeAndHide(<ae2fc:part_fluid_pattern_ex_terminal>);
mods.jei.JEI.removeAndHide(<ae2fc:wireless_fluid_pattern_terminal>);

// ME Ultimate Encoder
recipes.remove(<ae2fc:ultimate_encoder>);
recipes.addShaped(<ae2fc:ultimate_encoder>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:material:24>, <enderio:item_alloy_endergy_ingot:1>],
  [<actuallyadditions:block_misc:8>, <appliedenergistics2:part:341>, <actuallyadditions:block_misc:8>],
  [<enderio:item_alloy_endergy_ingot:1>, <ironchest:iron_chest:6>, <enderio:item_alloy_ingot>]
]);

print("ENDING AE2FluidCrafting_NOEL357.zs");
