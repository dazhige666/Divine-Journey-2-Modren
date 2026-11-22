// Author: NOEL357

print("STARTING SuperFactoryManager_NOEL357.zs");

// Scripted Factory Manager
recipes.remove(<superfactorymanager:manager_advanced>);
recipes.addShaped(<superfactorymanager:manager_advanced>, [
  [<enderio:item_alloy_ingot:6>, <enderio:block_alloy:3>, <enderio:item_alloy_ingot:6>],
  [<contenttweaker:methodology_processor>, <rftools:machine_frame>, <contenttweaker:methodology_processor>],
  [<enderio:item_alloy_ingot:6>, <enderio:block_alloy:3>, <enderio:item_alloy_ingot:6>]
]);

recipes.addShapeless(<superfactorymanager:manager_advanced>, [<superfactorymanager:manager>]);

// Machine Inventory Manager
recipes.remove(<superfactorymanager:manager>);
recipes.addShaped(<superfactorymanager:manager>, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<enderio:block_alloy:3>, <rftools:machine_frame>, <enderio:block_alloy:3>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

recipes.addShapeless(<superfactorymanager:manager>, [<superfactorymanager:manager_advanced>]);

// Inventory Cable
recipes.remove(<superfactorymanager:cable>);
recipes.addShaped(<superfactorymanager:cable> * 6, [
  [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
  [<minecraft:redstone>, <mekanism:controlcircuit>, <minecraft:redstone>],
  [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]
]);

// Inventory Relay
recipes.remove(<superfactorymanager:cable_relay>);
recipes.addShaped(<superfactorymanager:cable_relay> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<appliedenergistics2:part:220>, <superfactorymanager:cable>, <appliedenergistics2:part:221>],
  [<enderio:item_alloy_ingot:6>, <minecraft:hopper>, <enderio:item_alloy_ingot:6>]
]);

// Advanced Inventory Relay
recipes.remove(<superfactorymanager:cable_relay:8>);
recipes.addShaped(<superfactorymanager:cable_relay:8> * 3, [
  [<enderutilities:enderpart>, <actuallyadditions:block_player_interface>, <enderutilities:enderpart>],
  [<integratedtunnels:part_interface_item_item>, <superfactorymanager:cable_relay>, <integratedtunnels:part_interface_fluid_item>],
  [<enderutilities:enderpart>, <actuallyadditions:block_item_viewer_hopping>, <enderutilities:enderpart>]
]);

// Redstone Emitter
recipes.remove(<superfactorymanager:cable_output>);
recipes.addShaped(<superfactorymanager:cable_output> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<integrateddynamics:part_redstone_writer_item>, <superfactorymanager:cable>, <thermaldynamics:relay>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Redstone Receiver
recipes.remove(<superfactorymanager:cable_input>);
recipes.addShaped(<superfactorymanager:cable_input> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<thermaldynamics:relay>, <superfactorymanager:cable>, <integrateddynamics:part_redstone_reader_item>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Item Valve
recipes.remove(<superfactorymanager:cable_intake>);
recipes.addShaped(<superfactorymanager:cable_intake> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<openblocks:vacuum_hopper>, <superfactorymanager:cable>, <minecraft:dropper>],
  [<enderio:item_alloy_ingot:6>, <extrautils2:redstoneclock>, <enderio:item_alloy_ingot:6>]
]);

// Rapid Item Valve
recipes.remove(<superfactorymanager:cable_intake:8>);
recipes.addShaped(<superfactorymanager:cable_intake:8> * 3, [
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>],
  [<mob_grinding_utils:absorption_hopper>, <superfactorymanager:cable_intake>, <openblocks:item_dropper>],
  [<enderutilities:enderpart>, <minecraft:redstone_block>, <enderutilities:enderpart>]
]);

// Block Detector
recipes.remove(<superfactorymanager:cable_bud>);
recipes.addShaped(<superfactorymanager:cable_bud> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<minecraft:observer>, <superfactorymanager:cable>, <minecraft:observer>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Block Gate
recipes.remove(<superfactorymanager:cable_breaker>);
recipes.addShaped(<superfactorymanager:cable_breaker> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<appliedenergistics2:part:300>, <superfactorymanager:cable>, <appliedenergistics2:part:320>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Cable Cluster
recipes.remove(<superfactorymanager:cable_cluster>);
recipes.addShaped(<superfactorymanager:cable_cluster> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<minecraft:ender_pearl>, <superfactorymanager:cable>, <minecraft:ender_pearl>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Advanced Cable Cluster
recipes.remove(<superfactorymanager:cable_cluster:8>);
recipes.addShaped(<superfactorymanager:cable_cluster:8> * 3, [
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>],
  [<actuallyadditions:block_misc:6>, <superfactorymanager:cable_cluster>, <actuallyadditions:block_misc:6>],
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>]
]);

// Cable Camouflage
recipes.remove(<superfactorymanager:cable_camouflage>);
recipes.addShaped(<superfactorymanager:cable_camouflage> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<actuallyadditions:item_crystal:2>, <superfactorymanager:cable>, <actuallyadditions:item_crystal:2>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Double Sided Cable Camouflage
recipes.remove(<superfactorymanager:cable_camouflage:1>);
recipes.addShaped(<superfactorymanager:cable_camouflage:1> * 3, [
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>],
  [<actuallyadditions:item_crystal_empowered:2>, <superfactorymanager:cable_camouflage>, <actuallyadditions:item_crystal_empowered:2>],
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>]
]);

// Transforming Cable Camouflage
recipes.remove(<superfactorymanager:cable_camouflage:2>);
recipes.addShaped(<superfactorymanager:cable_camouflage:2> * 3, [
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>],
  [<actuallyadditions:block_phantomface>, <superfactorymanager:cable_camouflage:1>, <actuallyadditions:block_phantomface>],
  [<enderutilities:enderpart>, <contenttweaker:methodology_processor>, <enderutilities:enderpart>]
]);

// Sign Updater
recipes.remove(<superfactorymanager:cable_sign>);
recipes.addShaped(<superfactorymanager:cable_sign> * 3, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
  [<extrautils2:screen>, <superfactorymanager:cable>, <extrautils2:screen>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
]);

// Label Gun
recipes.remove(<superfactorymanager:labelgun>);
recipes.addShaped(<superfactorymanager:labelgun>, [
  [null, <enderio:item_alloy_ingot:3>, <contenttweaker:methodology_processor>],
  [null, <integrateddynamics:labeller>, <enderio:item_alloy_ingot:3>],
  [<enderio:item_alloy_ingot:6>, null, null]
]);

// Factory Manager Program Disk
recipes.removeByRecipeName("superfactorymanager:disk");
recipes.addShaped(<superfactorymanager:disk>, [
  [<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>],
  [<quantumflux:craftingpiece:4>, <contenttweaker:methodology_processor>, <quantumflux:craftingpiece:4>],
  [<enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>]
]);

// Network Tool
// aenetvistool is not installed; use Better P2P's Advanced Memory Card instead.
recipes.remove(<superfactorymanager:network_tool>);
recipes.addShaped(<superfactorymanager:network_tool>, [
  [<thermalfoundation:material:135>, <extrautils2:screen>, <thermalfoundation:material:135>],
  [<thermalfoundation:material:135>, <appliedenergistics2:material:24>, <thermalfoundation:material:135>],
  [<thermalfoundation:material:135>, <betterp2p:advanced_memory_card>, <thermalfoundation:material:135>]
]);
print("ENDING SuperFactoryManager_NOEL357.zs");
