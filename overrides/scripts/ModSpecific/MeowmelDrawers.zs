// Meowmel Drawers - Stone Upgrade tiers
// Tier 1 is unchanged; tiers 2-6 use the previous tier in the corners,
// the stage material on the edges, and the upgrade template in the center.

// Tier 1: Stone Upgrade I
recipes.remove(<storagedrawers:produce_stone>);
recipes.addShaped(<storagedrawers:produce_stone>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<extrautils2:ingredients:8>, <storagedrawers:upgrade_template>, <extrautils2:ingredients:8>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

// Tier 2: Stone Upgrade II
recipes.remove(<storagedrawers:produce_stone:1>);
recipes.addShaped(<storagedrawers:produce_stone:1>, [
    [<storagedrawers:produce_stone>, <minecraft:diamond>, <storagedrawers:produce_stone>],
    [<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
    [<storagedrawers:produce_stone>, <minecraft:diamond>, <storagedrawers:produce_stone>]
]);

// Tier 3: Stone Upgrade III
recipes.remove(<storagedrawers:produce_stone:2>);
recipes.addShaped(<storagedrawers:produce_stone:2>, [
    [<storagedrawers:produce_stone:1>, <immersiveengineering:material:19>, <storagedrawers:produce_stone:1>],
    [<immersiveengineering:material:19>, <storagedrawers:upgrade_template>, <immersiveengineering:material:19>],
    [<storagedrawers:produce_stone:1>, <immersiveengineering:material:19>, <storagedrawers:produce_stone:1>]
]);

// Tier 4: Stone Upgrade IV
recipes.remove(<storagedrawers:produce_stone:3>);
recipes.addShaped(<storagedrawers:produce_stone:3>, [
    [<storagedrawers:produce_stone:2>, <plustic:osgloglasingot>, <storagedrawers:produce_stone:2>],
    [<plustic:osgloglasingot>, <storagedrawers:upgrade_template>, <plustic:osgloglasingot>],
    [<storagedrawers:produce_stone:2>, <plustic:osgloglasingot>, <storagedrawers:produce_stone:2>]
]);

// Tier 5: Stone Upgrade V
recipes.remove(<storagedrawers:produce_stone:4>);
recipes.addShaped(<storagedrawers:produce_stone:4>, [
    [<storagedrawers:produce_stone:3>, <contenttweaker:steaming_restonia_crystal>, <storagedrawers:produce_stone:3>],
    [<contenttweaker:steaming_restonia_crystal>, <storagedrawers:upgrade_template>, <contenttweaker:steaming_restonia_crystal>],
    [<storagedrawers:produce_stone:3>, <contenttweaker:steaming_restonia_crystal>, <storagedrawers:produce_stone:3>]
]);

// Tier 6: Stone Upgrade VI
recipes.remove(<storagedrawers:produce_stone:5>);
recipes.addShaped(<storagedrawers:produce_stone:5>, [
    [<storagedrawers:produce_stone:4>, <botania:manaresource:4>, <storagedrawers:produce_stone:4>],
    [<botania:manaresource:4>, <storagedrawers:upgrade_template>, <botania:manaresource:4>],
    [<storagedrawers:produce_stone:4>, <botania:manaresource:4>, <storagedrawers:produce_stone:4>]
]);

// Wireless Upgrade tiers
// Tier 1 outputs 8; tiers 2-6 use the previous tier, the stage capacitor,
// the stage ingot and the upgrade template in the same layout.

// Wireless Upgrade I
recipes.remove(<storagedrawers:ender_linker>);
recipes.addShaped(<storagedrawers:ender_linker> * 8, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_material:14>, <enderio:block_transceiver>, <enderio:item_material:14>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>]
]);

// Wireless Upgrade II
recipes.remove(<storagedrawers:ender_linker:1>);
recipes.addShaped(<storagedrawers:ender_linker:1> * 2, [
    [<storagedrawers:ender_linker>, <enderio:item_alloy_ingot:6>, <storagedrawers:ender_linker>],
    [<enderio:item_alloy_ingot:6>, <storagedrawers:upgrade_template>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:6>, <enderio:item_basic_capacitor:1>]
]);

// Wireless Upgrade III
recipes.remove(<storagedrawers:ender_linker:2>);
recipes.addShaped(<storagedrawers:ender_linker:2> * 2, [
    [<storagedrawers:ender_linker:1>, <enderio:item_alloy_ingot:2>, <storagedrawers:ender_linker:1>],
    [<enderio:item_alloy_ingot:2>, <storagedrawers:upgrade_template>, <enderio:item_alloy_ingot:2>],
    [<enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>]
]);

// Wireless Upgrade IV
recipes.remove(<storagedrawers:ender_linker:3>);
recipes.addShaped(<storagedrawers:ender_linker:3> * 2, [
    [<storagedrawers:ender_linker:2>, <enderio:item_alloy_ingot:8>, <storagedrawers:ender_linker:2>],
    [<enderio:item_alloy_ingot:8>, <storagedrawers:upgrade_template>, <enderio:item_alloy_ingot:8>],
    [<enderio:item_capacitor_crystalline>, <enderio:item_alloy_ingot:8>, <enderio:item_capacitor_crystalline>]
]);

// Wireless Upgrade V
recipes.remove(<storagedrawers:ender_linker:4>);
recipes.addShaped(<storagedrawers:ender_linker:4>, [
    [<storagedrawers:ender_linker:3>, <contenttweaker:ingot_of_elevation>, <storagedrawers:ender_linker:3>],
    [<contenttweaker:ingot_of_elevation>, <storagedrawers:upgrade_template>, <contenttweaker:ingot_of_elevation>],
    [<enderio:item_capacitor_melodic>, <contenttweaker:ingot_of_elevation>, <enderio:item_capacitor_melodic>]
]);

// Wireless Upgrade VI
recipes.remove(<storagedrawers:ender_linker:5>);
recipes.addShaped(<storagedrawers:ender_linker:5>, [
    [<storagedrawers:ender_linker:4>, <botania:manaresource:4>, <storagedrawers:ender_linker:4>],
    [<botania:manaresource:4>, <storagedrawers:upgrade_template>, <botania:manaresource:4>],
    [<enderio:item_capacitor_stellar>, <botania:manaresource:4>, <enderio:item_capacitor_stellar>]
]);

// Compact Drawers
// The 1x2 drawer uses stone; the two half-height variants use stone slabs
// in the same positions. All three use iron plates instead of iron ingots.

// 1x2 Compact Drawer
recipes.remove(<storagedrawers:compact_drawer_2by1>);
recipes.addShaped(<storagedrawers:compact_drawer_2by1>, [
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
    [<minecraft:stone>, <ore:drawerBasic>, <minecraft:stone>],
    [<ore:plateIron>, <minecraft:piston>, <ore:plateIron>]
]);

// 2x1 Half-Height Compact Drawer
recipes.remove(<storagedrawers:compact_drawer_2by1_half>);
recipes.addShaped(<storagedrawers:compact_drawer_2by1_half>, [
    [<minecraft:stone_slab:0>, <minecraft:stone_slab:0>, <minecraft:stone_slab:0>],
    [<minecraft:stone_slab:0>, <ore:drawerBasic>, <minecraft:stone_slab:0>],
    [<ore:plateIron>, <minecraft:piston>, <ore:plateIron>]
]);

// Half-Height Compact Drawer
recipes.remove(<storagedrawers:compact_drawer_half>);
recipes.addShaped(<storagedrawers:compact_drawer_half>, [
    [<minecraft:stone_slab:0>, <minecraft:stone_slab:0>, <minecraft:stone_slab:0>],
    [<minecraft:piston>, <ore:drawerBasic>, <minecraft:piston>],
    [<minecraft:stone_slab:0>, <ore:plateIron>, <minecraft:stone_slab:0>]
]);

