// Author: NOEL357

print("STARTING NeevesAE2ExtendedLifeAdditions_NOEL357.zs");

// ME Void Storage Component
recipes.remove(<nae2:material>);
recipes.addShaped(<nae2:material>, [
  [null, <extrautils2:trashcan>, null],
  [<appliedenergistics2:material:44>, <appliedenergistics2:material:35>, <appliedenergistics2:material:44>],
  [null, <extrautils2:trashcanfluid>, null]
]);


// Pattern Multi-Tool
recipes.remove(<nae2:pattern_multiplier>);
recipes.addShaped(<nae2:pattern_multiplier>, [
  [null, <appliedenergistics2:material:52>, null],
  [<appliedenergistics2:material:23>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:material:24>],
  [null, <ironchest:iron_chest:6>, null]
]);


// ME (Fluid) Void Storage Cell

// ME Beam Former
recipes.remove(<nae2:part>);
recipes.addShaped(<nae2:part>, [
  [<mekanism:ingot:3>, <actuallyadditions:block_laser_relay_extreme>, <mekanism:ingot:3>],
  [<enderio:item_alloy_ingot:6>, <enderio:item_material:13>, <enderio:item_alloy_ingot:6>],
  [null, <actuallyadditions:block_misc:8>, null]
]);


// P2P Tunnel - ME Interface

// Hyper-Acceleration Card
recipes.remove(<nae2:upgrade>);
recipes.addShaped(<nae2:upgrade>, [
  [<thermalfoundation:material:32>, <appliedenergistics2:material:30>, <thermalfoundation:material:32>],
  [<appliedenergistics2:material:30>, <appliedenergistics2:material:23>, <appliedenergistics2:material:30>],
  [<thermalfoundation:material:32>, <appliedenergistics2:material:30>, <thermalfoundation:material:32>]
]);


// Job Auto-Complete Card
recipes.remove(<nae2:upgrade:1>);
recipes.addShaped(<nae2:upgrade:1>, [
  [<thermalfoundation:material:327>, <enderio:item_material:13>, <thermalfoundation:material:327>],
  [<enderio:item_material:13>, <appliedenergistics2:material:28>, <enderio:item_material:13>],
  [<thermalfoundation:material:327>, <enderio:item_material:13>, <thermalfoundation:material:327>]
]);


// 4x Crafting Co-Processing Unit
recipes.remove(<nae2:coprocessor_4x>);
recipes.addShaped(<nae2:coprocessor_4x>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:crafting_accelerator>, <enderio:item_alloy_ingot>],
  [<appliedenergistics2:crafting_accelerator>, <extrautils2:ingredients:6>, <appliedenergistics2:crafting_accelerator>],
  [<enderio:item_alloy_ingot>, <appliedenergistics2:crafting_accelerator>, <enderio:item_alloy_ingot>]
]);


// 16x Crafting Co-Processing Unit
recipes.remove(<nae2:coprocessor_16x>);
recipes.addShaped(<nae2:coprocessor_16x>, [
  [<enderio:item_alloy_ingot>, <nae2:coprocessor_4x>, <enderio:item_alloy_ingot>],
  [<nae2:coprocessor_4x>, <extrautils2:ingredients:15>, <nae2:coprocessor_4x>],
  [<enderio:item_alloy_ingot>, <nae2:coprocessor_4x>, <enderio:item_alloy_ingot>]
]);


// 64x Crafting Co-Processing Unit
recipes.remove(<nae2:coprocessor_64x>);
recipes.addShaped(<nae2:coprocessor_64x>, [
  [<enderio:item_alloy_ingot>, <nae2:coprocessor_16x>, <enderio:item_alloy_ingot>],
  [<nae2:coprocessor_16x>, <extrautils2:ingredients:16>, <nae2:coprocessor_16x>],
  [<enderio:item_alloy_ingot>, <nae2:coprocessor_16x>, <enderio:item_alloy_ingot>]
]);


print("ENDING NeevesAE2ExtendedLifeAdditions_NOEL357.zs");
