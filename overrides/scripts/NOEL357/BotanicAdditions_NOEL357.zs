
// Author: NOEL357

print("STARTING BotanicAdditions_NOEL357.zs");

// Mana Tesseract
mods.botania.RuneAltar.removeRecipe(<botanicadds:mana_tesseract>);
mods.extendedcrafting.TableCrafting.addShaped(<botanicadds:mana_tesseract>, [
  [<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botania:manaresource:4>, <botanicadds:dreamrock>, <botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <botania:manaresource:4>, <botania:manaresource:4>, <lightningcraft:material:11>, <lightningcraft:material:11>, <botania:manaresource:4>, <botanicadds:dreamrock>],
  [<botania:manaresource:4>, <lightningcraft:material:11>, <mekanism:teleportationcore>, <botania:manaresource:4>, <mekanism:teleportationcore>, <botania:manaresource:4>,<botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <lightningcraft:material:11>, <botania:manaresource:4>, <appliedenergistics2:material:47>, <botania:manaresource:4>, <lightningcraft:material:11>,<botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <botania:manaresource:4>, <mekanism:teleportationcore>, <botania:manaresource:4>, <mekanism:teleportationcore>, <lightningcraft:material:11>,<botania:manaresource:4>],
  [<botanicadds:dreamrock>, <botania:manaresource:4>, <lightningcraft:material:11>, <lightningcraft:material:11>, <botania:manaresource:4>, <botania:manaresource:4>, <botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botania:manaresource:4>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>]
]);


// Terra Catalyst
mods.jei.JEI.removeAndHide(<botanicadds:terra_catalyst>);

// Dreamrock

// Mana Lapis Block
mods.botania.ManaInfusion.removeRecipe(<botanicadds:mana_lapis_block>);
mods.jei.JEI.removeAndHide(<botanicadds:mana_lapis_block>);

// Elven Lapis Block
mods.botania.ElvenTrade.removeRecipe(<botanicadds:elven_lapis_block>);
mods.jei.JEI.removeAndHide(<botanicadds:elven_lapis_block>);

// Elvenwood Log
mods.botania.ElvenTrade.removeRecipe(<botanicadds:elvenwood_log>);
mods.botania.PureDaisy.removeRecipe(<botania:dreamwood>);
mods.jei.JEI.removeAndHide(<botanicadds:elvenwood_log>);

// Elven Altar
recipes.remove(<botanicadds:elven_altar>);
mods.extendedcrafting.TableCrafting.addShaped(<botanicadds:elven_altar>, [
  [<botanicadds:dreamrock>, <contenttweaker:rune_of_mana>, <contenttweaker:rune_of_mana>, <contenttweaker:rune_of_mana>, <botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>],
  [null, <botania:storage:2>, <botania:runealtar>, <botania:storage:2>, null],
  [null, <botania:storage:2>, <bewitchment:block_of_cold_iron>, <botania:storage:2>, null],
  [<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>]
]);


// Dreaming Mana Pool
recipes.remove(<botanicadds:pool_dreaming>);
mods.extendedcrafting.TableCrafting.addShaped(<botanicadds:pool_dreaming>, [
  [null, null, null, null, null],
  [<botanicadds:dreamrock>, <contenttweaker:aquatic_core>, <contenttweaker:aquatic_core>, <contenttweaker:aquatic_core>, <botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <contenttweaker:crystallized_mana>, <botania:pool>, <contenttweaker:crystallized_mana>, <botanicadds:dreamrock>],
  [<botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>, <botanicadds:dreamrock>],
  [null, null, null, null, null]
]);


// Gaia Agglomeration Plate
mods.jei.JEI.removeAndHide(<botanicadds:gaia_plate>);

// Gaiasteel Block
mods.jei.JEI.removeAndHide(<botanicadds:gaiasteel_block>);

// Rune of Teleportation
mods.botania.RuneAltar.removeRecipe(<botanicadds:rune_tp>);
mods.jei.JEI.removeAndHide(<botanicadds:rune_tp>);

// Rune of Energy
mods.botania.RuneAltar.removeRecipe(<botanicadds:rune_energy>);
mods.jei.JEI.removeAndHide(<botanicadds:rune_energy>);

// Mana Lapis
mods.botania.ManaInfusion.removeRecipe(<botanicadds:mana_lapis>);
mods.jei.JEI.removeAndHide(<botanicadds:mana_lapis>);

// Elven Lapis
mods.botania.ElvenTrade.removeRecipe(<botanicadds:elven_lapis>);
mods.jei.JEI.removeAndHide(<botanicadds:elven_lapis>);

// Gaia Shard
mods.botania.ManaInfusion.removeRecipe(<botanicadds:gaia_shard>);
mods.jei.JEI.removeAndHide(<botanicadds:gaia_shard>);

// Gaiasteel Ingot
mods.jei.JEI.removeAndHide(<botanicadds:gaiasteel_ingot>);

// Terra Protector
mods.jei.JEI.removeAndHide(<botanicadds:terra_protector>);

// Gaia Band of Aura
mods.jei.JEI.removeAndHide(<botanicadds:ring_aura_gaia>);

// Mana Stealing Blade
mods.jei.JEI.removeAndHide(<botanicadds:mana_stealer_sword>);

// Wither Flower
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type:"ba_wither_flower"}));
mods.jei.JEI.removeAndHide(<botania:specialflower>.withTag({type:"ba_wither_flower"}));

// Lightning Flower
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type:"ba_lightning_flower"}));
mods.jei.JEI.removeAndHide(<botania:specialflower>.withTag({type:"ba_lightning_flower"}));

// Snow Flower
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type:"ba_snow_flower"}));
mods.jei.JEI.removeAndHide(<botania:specialflower>.withTag({type:"ba_snow_flower"}));

// Rain Flower
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type:"ba_rain_flower"}));
mods.jei.JEI.removeAndHide(<botania:specialflower>.withTag({type:"ba_rain_flower"}));

// Floating Wither Flower
mods.jei.JEI.removeAndHide(<botania:floatingspecialflower>.withTag({type:"ba_wither_flower"}));

// Floating Lightning Flower
mods.jei.JEI.removeAndHide(<botania:floatingspecialflower>.withTag({type:"ba_lightning_flower"}));

// Floating Snow Flower
mods.jei.JEI.removeAndHide(<botania:floatingspecialflower>.withTag({type:"ba_snow_flower"}));

// Floating Rain Flower
mods.jei.JEI.removeAndHide(<botania:floatingspecialflower>.withTag({type:"ba_rain_flower"}));

print("ENDING BotanicAdditions_NOEL357.zs");
