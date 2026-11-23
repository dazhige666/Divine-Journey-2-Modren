// Author: NOEL357

print("STARTING AE2StuffUnofficial_NOEL357.zs");

// Network Visualisation Tool
mods.jei.JEI.removeAndHide(<ae2stuff:visualiser>);

// crystal Growth Chamber
recipes.remove(<ae2stuff:grower>);
recipes.addShaped(<ae2stuff:grower>, [
  [<appliedenergistics2:quartz_growth_accelerator>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_growth_accelerator>],
  [<appliedenergistics2:quartz_growth_accelerator>, <ironchest:iron_chest:6>, <appliedenergistics2:quartz_growth_accelerator>],
  [<appliedenergistics2:quartz_growth_accelerator>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_growth_accelerator>]
]);


// Advanced Inscriber
recipes.remove(<ae2stuff:inscriber>);
recipes.addShaped(<ae2stuff:inscriber>, [
  [<enderio:item_alloy_ingot:6>, <contenttweaker:estimation_processor>, <enderio:item_alloy_ingot:6>],
  [<appliedenergistics2:material:27>, <appliedenergistics2:inscriber>, <appliedenergistics2:material:30>],
  [<enderio:item_alloy_ingot:6>, <contenttweaker:estimation_processor>, <enderio:item_alloy_ingot:6>]
]);


// Wireless Connector
recipes.remove(<ae2stuff:wireless>);
recipes.addShaped(<ae2stuff:wireless>, [
  [<enderio:item_alloy_ingot>, <appliedenergistics2:material:41>, <enderio:item_alloy_ingot>],
  [<appliedenergistics2:part:76>, <appliedenergistics2:quantum_link>, <appliedenergistics2:part:76>],
  [<enderio:item_alloy_ingot>, <contenttweaker:methodology_processor>, <enderio:item_alloy_ingot>]
]);


// Wireless Setup Kit
recipes.remove(<ae2stuff:wireless_kit>);
recipes.addShaped(<ae2stuff:wireless_kit>, [
  [null, <appliedenergistics2:material:41>, null],
  [<appliedenergistics2:material:24>, <appliedenergistics2:charged_staff>, <contenttweaker:methodology_processor>],
  [null, <appliedenergistics2:network_tool>, null]
]);


print("ENDING AE2StuffUnofficial_NOEL357.zs");
