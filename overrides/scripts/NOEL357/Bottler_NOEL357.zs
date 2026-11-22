// Author: NOEL357

import mods.modularmachinery.RecipeBuilder;

// Water Crystal
RecipeBuilder.newBuilder("noel357_water_crystal_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addFluidInput(<fluid:water> * 1000)
	.addItemOutput(<contenttweaker:noel357_water_crystal>)
	.build();

// Lava Crystal
RecipeBuilder.newBuilder("noel357_lava_crystal_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addFluidInput(<fluid:lava> * 1000)
	.addItemOutput(<contenttweaker:noel357_lava_crystal>)
	.build();

// Dew of the Void Crystal
RecipeBuilder.newBuilder("noel357_dew_of_the_void_crystal_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addFluidInput(<fluid:ender_distillation> * 1000)
	.addItemOutput(<contenttweaker:noel357_dew_of_the_void_crystal>)
	.build();

// Vapor of Levity Crystal
RecipeBuilder.newBuilder("noel357_vapor_of_levity_crystal_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addFluidInput(<fluid:vapor_of_levity> * 1000)
	.addItemOutput(<contenttweaker:noel357_vapor_of_levity_crystal>)
	.build();

// Crop Sticks
RecipeBuilder.newBuilder("noel357_crop_sticks_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:stick> * 4)
	.addFluidInput(<fluid:growth_infusion_liquid> * 10)
	.addItemOutput(<agricraft:crop_sticks>)
	.build();

// Sooty Marble 0
RecipeBuilder.newBuilder("noel357_sooty_marble_0_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<chisel:marble2:7>)
	.addFluidInput(<fluid:skyfather> * 18)
	.addItemOutput(<astralsorcery:blockblackmarble>)
	.build();

// Sooty Marble 1
RecipeBuilder.newBuilder("noel357_sooty_marble_1_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<astralsorcery:blockmarble>)
	.addFluidInput(<fluid:skyfather> * 18)
	.addItemOutput(<astralsorcery:blockblackmarble>)
	.build();

// Blaze Quartz
RecipeBuilder.newBuilder("noel357_blaze_quartz_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<botania:quartz:1>)
	.addFluidInput(<fluid:fire_water> * 200)
	.addItemOutput(<botania:quartz:2>)
	.build();

// Sunny Quartz
RecipeBuilder.newBuilder("noel357_sunny_quartz_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<botania:quartz:4>)
	.addFluidInput(<fluid:liquid_sunshine> * 200)
	.addItemOutput(<botania:quartz:6>)
	.build();

// Potion of Swiftness IV
RecipeBuilder.newBuilder("noel357_potion_swiftness4_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:potion>.withTag({Potion:"cofhcore:swiftness4"}) * 250)
	.addItemOutput(<minecraft:potion>.withTag({Potion:"cofhcore:swiftness4"}))
	.build();

// Potion of Harming IV
RecipeBuilder.newBuilder("noel357_potion_harming4_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:potion>.withTag({Potion:"cofhcore:harming4"}) * 250)
	.addItemOutput(<minecraft:potion>.withTag({Potion:"cofhcore:harming4"}))
	.build();

// Potion of Strength IV
RecipeBuilder.newBuilder("noel357_potion_strength4_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:potion>.withTag({Potion:"cofhcore:strength4"}) * 250)
	.addItemOutput(<minecraft:potion>.withTag({Potion:"cofhcore:strength4"}))
	.build();

// Potion of Haste IV
RecipeBuilder.newBuilder("noel357_potion_haste4_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:potion>.withTag({Potion:"cofhcore:haste4"}) * 250)
	.addItemOutput(<minecraft:potion>.withTag({Potion:"cofhcore:haste4"}))
	.build();

// Potion of Absorption IV
RecipeBuilder.newBuilder("noel357_potion_absorption4_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<minecraft:glass_bottle>)
	.addFluidInput(<fluid:potion>.withTag({Potion:"cofhcore:absorption4"}) * 250)
	.addItemOutput(<minecraft:potion>.withTag({Potion:"cofhcore:absorption4"}))
	.build();

// Sparkling Aquamarine
RecipeBuilder.newBuilder("noel357_sparkling_aquamarine_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<astralsorcery:itemcraftingcomponent>)
	.addFluidInput(<fluid:blutonium> * 72)
	.addItemOutput(<contenttweaker:sparkling_aquamarine>)
	.build();

// Anti Electron
RecipeBuilder.newBuilder("noel357_anti_electron_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<contenttweaker:electron>)
	.addFluidInput(<fluid:liquidantimatter> * 200)
	.addItemOutput(<contenttweaker:anti_electron>)
	.build();

// Anti Proton
RecipeBuilder.newBuilder("noel357_anti_proton_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<contenttweaker:proton>)
	.addFluidInput(<fluid:liquidantimatter> * 200)
	.addItemOutput(<contenttweaker:anti_proton>)
	.build();

// Luminessence
RecipeBuilder.newBuilder("noel357_luminessence_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<contenttweaker:ingot_of_elevation>)
	.addFluidInput(<fluid:glowstone> * 4000)
	.addItemOutput(<extendedcrafting:material:7>)
	.build();

// Impulse Itemduct (Opaque)
RecipeBuilder.newBuilder("noel357_impulse_itemduct_opaque_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<thermaldynamics:duct_32:1>)
	.addFluidInput(<fluid:glowstone> * 400)
	.addItemOutput(<thermaldynamics:duct_32:3>.withTag({}))
	.build();

// Florb - Liquid Death
RecipeBuilder.newBuilder("noel357_florb_liquid_death_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<thermalexpansion:florb>)
	.addFluidInput(<fluid:liquid_death> * 1000)
	.addItemOutput(<thermalexpansion:florb>.withTag({Fluid:"liquid_death"}))
	.build();

// Florb - Empowered Oil
RecipeBuilder.newBuilder("noel357_florb_empowered_oil_bottler_recipe", "noel357_bottler", 40)
	.addEnergyPerTickInput(8000)
	.addItemInput(<thermalexpansion:florb>)
	.addFluidInput(<fluid:empoweredoil> * 1000)
	.addItemOutput(<thermalexpansion:florb>.withTag({Fluid:"empoweredoil"}))
	.build();
