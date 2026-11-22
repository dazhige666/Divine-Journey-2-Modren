// Author: NOEL357

import mods.modularmachinery.RecipeBuilder;

// Stew of the Grotesque
RecipeBuilder.newBuilder("noel357_stew_of_the_grotesque_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<contenttweaker:noel357_demon_jar>)
	.addItemInput(<contenttweaker:death_core>)
	.addItemInput(<contenttweaker:shard_of_the_grotesque> * 2)
	.addItemInput(<bewitchment:lizard_leg>)
	.addItemInput(<bewitchment:toe_of_frog>)
	.addItemInput(<bewitchment:adders_fork>)
	.addItemInput(<bewitchment:hellebore>)
	.addItemInput(<bewitchment:belladonna>)
	.addFluidInput(<fluid:vapor_of_levity> * 900)
	.addItemOutput(<bewitchment:stew_of_the_grotesque>)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Filled Goblet
RecipeBuilder.newBuilder("noel357_filled_goblet_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:goblet>)
	.addItemInput(<contenttweaker:noel357_demon_jar>)
	.addItemInput(<thermalexpansion:florb>.withTag({Fluid:"moltendreadium"}))
	.addItemInput(<bewitchment:dragons_blood_resin_block>)
	.addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1, key:"diabolus"}]}))
	.addFluidInput(<fluid:vapor_of_levity> * 500)
	.addItemOutput(<bewitchment:filled_goblet>)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Ritualistic Salt
RecipeBuilder.newBuilder("noel357_ritualistic_salt_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<mekanism:salt> * 3)
	.addItemInput(<bloodmagic:ritual_stone>)
	.addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1, key:"praecantatio"}]}))
	.addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1, key:"alienis"}]}))
	.addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1, key:"perditio"}]}))
	.addFluidInput(<fluid:vapor_of_levity> * 700)
	.addItemOutput(<bewitchment:salt> * 3)
	.build();

// Fiery Chalk
RecipeBuilder.newBuilder("noel357_fiery_chalk_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:ritual_chalk>)
	.addItemInput(<bewitchment:bottled_hellfire>)
	.addItemInput(<bewitchment:diabolical_vein>)
	.addItemInput(<contenttweaker:rune_of_fire>)
	.addFluidInput(<fluid:vapor_of_levity> * 400)
	.addItemOutput(<bewitchment:fiery_chalk>)
	.build();

// Focal Chalk
RecipeBuilder.newBuilder("noel357_focal_chalk_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:ritual_chalk>)
	.addItemInput(<thaumcraft:focus_2>)
	.addItemInput(<contenttweaker:noel357_swirl_jar>)
	.addItemInput(<evilcraft:promise_acceptor:1>)
	.addFluidInput(<fluid:vapor_of_levity> * 400)
	.addItemOutput(<bewitchment:focal_chalk>)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Phasing Chalk
RecipeBuilder.newBuilder("noel357_phasing_chalk_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:ritual_chalk>)
	.addItemInput(<contenttweaker:noel357_alien_jar>)
	.addItemInput(<bewitchment:spectral_dust>)
	.addItemInput(<contenttweaker:rune_of_envy>)
	.addFluidInput(<fluid:vapor_of_levity> * 400)
	.addItemOutput(<bewitchment:phasing_chalk>)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Iron Gall Ink
RecipeBuilder.newBuilder("noel357_iron_gall_ink_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:cold_iron_ingot>)
	.addItemInput(<bewitchment:oak_apple_gall> * 2)
	.addItemInput(<minecraft:dye>)
	.addFluidInput(<fluid:vapor_of_levity> * 400)
	.addItemOutput(<bewitchment:iron_gall_ink>)
	.build();

// Blue Ink Cap
RecipeBuilder.newBuilder("noel357_blue_ink_cap_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<minecraft:brown_mushroom>)
	.addItemInput(<bewitchment:iron_gall_ink>)
	.addItemInput(<contenttweaker:noel357_witch_jar>)
	.addFluidInput(<fluid:vapor_of_levity> * 300)
	.addItemOutput(<bewitchment:blue_ink_cap>)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Blue Ink Cap Extract
RecipeBuilder.newBuilder("noel357_blue_ink_cap_extract_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:blue_ink_cap>)
	.addFluidInput(<fluid:vapor_of_levity> * 100)
	.addItemOutput(<bewitchment:ink_cap_dye> * 4)
	.build();

// Tallow (Bewitchment)
RecipeBuilder.newBuilder("noel357_tallow_bewitchment_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<thaumcraft:tallow> * 3)
	.addItemInput(<contenttweaker:crystallos>)
	.addItemInput(<contenttweaker:praesidium>)
	.addFluidInput(<fluid:vapor_of_levity> * 500)
	.addItemOutput(<bewitchment:tallow> * 3)
	.build();

// Bottle of Blood
RecipeBuilder.newBuilder("noel357_bottle_of_blood_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:adders_fork> * 4)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:vapor_of_levity> * 500)
	.addItemOutput(<bewitchment:bottle_of_blood>)
	.build();

// Bottle of Blood 2
RecipeBuilder.newBuilder("noel357_bottle_of_blood_2_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:tongue_of_dog> * 2)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:vapor_of_levity> * 300)
	.addItemOutput(<bewitchment:bottle_of_blood>)
	.addItemOutput(<minecraft:slime_ball>)
	.build();

// Dragon Resin
RecipeBuilder.newBuilder("noel357_dragon_resin_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<minecraft:dragon_breath>)
	.addItemInput(<botania:storage:4>)
	.addItemInput(<draconicevolution:draconium_block>)
	.addItemInput(<contenttweaker:tough_purified_paste>)
	.addItemInput(<quark:enderdragon_scale>)
	.addItemInput(<thermalfoundation:material:832> * 3)
	.addItemInput(<contenttweaker:condensed_vis_crystal_diabolus>)
	.addItemInput(<contenttweaker:condensed_vis_crystal_bestia>)
	.addItemInput(<contenttweaker:noel357_fire_jar>)
	.addFluidInput(<fluid:vapor_of_levity> * 900)
	.addItemOutput(<contenttweaker:dragon_resin> * 8)
	.addItemOutput(<bewitchment:empty_jar>)
	.build();

// Brew of the Void
RecipeBuilder.newBuilder("noel357_brew_of_the_void_witches_cauldron_recipe", "noel357_witches_cauldron", 20)
	.addItemInput(<bewitchment:bottle_of_blood>)
	.addItemInput(<bewitchment:belladonna>)
	.addItemInput(<bewitchment:aconitum>)
	.addItemInput(<bewitchment:wormwood>)
	.addItemInput(<thaumcraft:ingot> * 2)
	.addItemInput(<minecraft:mycelium>)
	.addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1, key:"vitium"}]}) * 2)
	.addFluidInput(<fluid:vapor_of_levity> * 900)
	.addItemOutput(<contenttweaker:brew_of_the_void>)
	.build();
