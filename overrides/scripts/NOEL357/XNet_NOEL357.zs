// Author: NOEL357

import mods.tconstruct.Melting;
import crafttweaker.game.IGame;

print("STARTING XNet_NOEL357.zs");

// XNet Manual
recipes.remove(<xnet:xnet_manual>);
recipes.addShapeless(<xnet:xnet_manual>, [<minecraft:book>, <xnet:netcable>.anyDamage()]);

// Connector Upgrade Kit
recipes.remove(<xnet:connector_upgrade>);
recipes.addShaped(<xnet:connector_upgrade> * 3, [
  [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:6>],
  [<minecraft:redstone>, <appliedenergistics2:material:25>, <minecraft:redstone>],
  [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_ingot:6>]
]);


// Facade
recipes.remove(<xnet:facade>);
recipes.addShaped(<xnet:facade> * 4, [
  [null, <minecraft:wool>, null],
  [<minecraft:wool>, <xnet:netcable>.anyDamage(), <minecraft:wool>],
  [null, <minecraft:wool>, null]
]);


// Redstone Proxy
recipes.remove(<xnet:redstone_proxy>);
recipes.addShaped(<xnet:redstone_proxy>, [
  [<thermalfoundation:material:160>, <minecraft:redstone>, <thermalfoundation:material:160>],
  [<minecraft:redstone>, <mekanism:basicblock:8>, <minecraft:redstone>],
  [<thermalfoundation:material:160>, <minecraft:redstone>, <thermalfoundation:material:160>]
]);

recipes.addShapeless(<xnet:redstone_proxy>, [<xnet:redstone_proxy_upd>]);

// Redstone Proxy (update)
recipes.remove(<xnet:redstone_proxy_upd>);
recipes.addShapeless(<xnet:redstone_proxy_upd>, [<xnet:redstone_proxy>]);

// Blue Network Cable initial recipe
recipes.removeByRecipeName("xnet:netcable_0");
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <xnet:netcable>);
recipes.addShaped(<xnet:netcable> * 6, [
  [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>],
  [<minecraft:redstone>, <mekanism:controlcircuit>, <minecraft:redstone>],
  [<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>]
]);

for i in 0 to 5 {
}

// Routing Network Cable
recipes.remove(<xnet:netcable>.withDamage(4));
recipes.addShaped(<xnet:netcable>.withDamage(4) * 6, [
  [<immersiveengineering:material:2>, <appliedenergistics2:material:7>, <immersiveengineering:material:2>],
  [<minecraft:redstone>, <mekanism:controlcircuit>, <minecraft:redstone>],
  [<immersiveengineering:material:2>, <appliedenergistics2:material:7>, <immersiveengineering:material:2>]
]);

// Network Cable names
//<xnet:netcable>.displayName = "Blue Network Cable";
//<xnet:netcable:1>.displayName = "Red Network Cable";
//<xnet:netcable:2>.displayName = "Yellow Network Cable";
//<xnet:netcable:3>.displayName = "Green Network Cable";
//<xnet:netcable:4>.displayName = "Routing Network Cable";

// Blue / Red / Yellow / Green Connector initial recipes
recipes.removeByRecipeName("xnet:connector_0");

for i in 0 to 4 {
  recipes.addShaped(<xnet:connector>.withDamage(i) * 3, [
    [<thermalfoundation:material:160>, <immersiveengineering:material:18>, <thermalfoundation:material:160>],
    [<appliedenergistics2:material:22>, <xnet:netcable>.withDamage(i), <appliedenergistics2:material:22>],
    [<thermalfoundation:material:160>, <contenttweaker:energized_osmium_ingot>, <thermalfoundation:material:160>]
  ]);

  <xnet:connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.connector.rf"));
  <xnet:connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.connector.fluid"));
  <xnet:connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.connector.special"));
}

// Routing Connector
recipes.remove(<xnet:connector>.withDamage(4));
recipes.addShaped(<xnet:connector>.withDamage(4) * 3, [
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>],
  [<appliedenergistics2:material:22>, <xnet:netcable>.withDamage(4), <appliedenergistics2:material:22>],
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>]
]);


// Connector names
//<xnet:connector>.displayName = "Blue Connector";
//<xnet:connector:1>.displayName = "Red Connector";
//<xnet:connector:2>.displayName = "Yellow Connector";
//<xnet:connector:3>.displayName = "Green Connector";
//<xnet:connector:4>.displayName = "Routing Connector";

// Advanced Blue / Red / Yellow / Green Connector initial recipes
recipes.removeByRecipeName("xnet:advanced_connector_0");

for i in 0 to 4 {
  recipes.addShaped(<xnet:advanced_connector>.withDamage(i) * 3, [
    [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:2>, <xnet:connector>.withDamage(i), <enderio:item_alloy_endergy_ingot:2>],
    [<enderio:item_alloy_ingot:6>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot:6>]
  ]);

  <xnet:advanced_connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.advanced_connector.rf"));
  <xnet:advanced_connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.advanced_connector.fluid"));
  <xnet:advanced_connector>.withDamage(i).addTooltip(game.localize("dj2.xnet.advanced_connector.special"));
}

// Advanced Connector names
//<xnet:advanced_connector>.displayName = "Advanced Blue Connector";
//<xnet:advanced_connector:1>.displayName = "Advanced Red Connector";
//<xnet:advanced_connector:2>.displayName = "Advanced Yellow Connector";
//<xnet:advanced_connector:3>.displayName = "Advanced Green Connector";

// Controller
recipes.remove(<xnet:controller>);
recipes.addShaped(<xnet:controller>, [
  [<thermalfoundation:material:160>, <mekanism:controlcircuit:2>, <thermalfoundation:material:160>],
  [<appliedenergistics2:material:24>, <mekanism:basicblock:8>, <appliedenergistics2:material:24>],
  [<thermalfoundation:material:160>, <mekanism:controlcircuit:2>, <thermalfoundation:material:160>]
]);
<xnet:controller>.addTooltip(game.localize("dj2.xnet.controller.channel"));
<xnet:controller>.addTooltip(game.localize("dj2.xnet.controller.operation"));
<xnet:controller>.addTooltip(game.localize("dj2.xnet.controller.idle"));


// Router
recipes.remove(<xnet:router>);
recipes.addShaped(<xnet:router>, [
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>],
  [<contenttweaker:estimation_processor>, <enderio:item_material>, <contenttweaker:estimation_processor>],
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:7>, <enderio:item_alloy_ingot:6>]
]);


// Wireless Router
recipes.remove(<xnet:wireless_router>);
recipes.addShaped(<xnet:wireless_router>, [
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:41>, <enderio:item_alloy_ingot:6>],
  [<contenttweaker:methodology_processor>, <xnet:router>, <contenttweaker:methodology_processor>],
  [<enderio:item_alloy_ingot:6>, <appliedenergistics2:material:41>, <enderio:item_alloy_ingot:6>]
]);


// Antenna
recipes.remove(<xnet:antenna>);
recipes.addShaped(<xnet:antenna>, [
  [<immersiveengineering:material:2>, <enderio:item_alloy_ingot:6>, <immersiveengineering:material:2>],
  [<immersiveengineering:material:2>, <enderio:item_alloy_ingot:6>, <immersiveengineering:material:2>],
  [<immersiveengineering:material:2>, <enderio:item_alloy_ingot:6>, <immersiveengineering:material:2>]
]);


// Antenna Base
recipes.remove(<xnet:antenna_base>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <xnet:antenna_base>);
recipes.addShaped(<xnet:antenna_base>, [
  [null, <enderio:item_alloy_ingot:6>, null],
  [null, <enderio:item_alloy_ingot:6>, null],
  [<enderio:item_alloy_ingot:6>, <enderio:block_alloy:6>, <enderio:item_alloy_ingot:6>]
]);


// Antenna Dish
recipes.remove(<xnet:antenna_dish>);
recipes.addShaped(<xnet:antenna_dish>, [
  [<enderio:item_alloy_ingot:6>, <enderio:item_material:65>, <enderio:item_alloy_ingot:6>],
  [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
  [null, <enderio:item_alloy_ingot:6>, null]
]);


print("ENDING XNet_NOEL357.zs");
