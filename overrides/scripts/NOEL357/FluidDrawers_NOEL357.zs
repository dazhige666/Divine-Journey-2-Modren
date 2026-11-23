// Author: NOEL357

print("STARTING FluidDrawers_NOEL357.zs");

// Basic Tank
recipes.remove(<fluiddrawers:tank>);
recipes.addShaped(<fluiddrawers:tank>, [
  [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
  [<minecraft:glass_pane>, <tconstruct:seared_tank>, <minecraft:glass_pane>],
  [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);


print("ENDING FluidDrawers_NOEL357.zs");
