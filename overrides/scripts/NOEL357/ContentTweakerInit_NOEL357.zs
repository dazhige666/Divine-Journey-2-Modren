#loader contenttweaker

// Author: NOEL357

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

print("STARTING ContentTweakerItems_noel357.zs");

// Fire Jar
var noel357_fire_jar = VanillaFactory.createItem("noel357_fire_jar");
noel357_fire_jar.register();

// Demon Jar
var noel357_demon_jar = VanillaFactory.createItem("noel357_demon_jar");
noel357_demon_jar.register();

// Alien Jar
var noel357_alien_jar = VanillaFactory.createItem("noel357_alien_jar");
noel357_alien_jar.register();

// Swirl Jar
var noel357_swirl_jar = VanillaFactory.createItem("noel357_swirl_jar");
noel357_swirl_jar.register();

// Witch Jar
var noel357_witch_jar = VanillaFactory.createItem("noel357_witch_jar");
noel357_witch_jar.register();

// Fake Energy Tablet
var noel357_energy_tablet = VanillaFactory.createItem("noel357_energy_tablet");
noel357_energy_tablet.register();

// Fake Basic Energy Cube
var noel357_basic_energy_cube = VanillaFactory.createBlock("noel357_basic_energy_cube", <blockmaterial:iron>);
noel357_basic_energy_cube.setBlockHardness(4.5);
noel357_basic_energy_cube.setBlockResistance(4.5);
noel357_basic_energy_cube.setBlockLayer("TRANSLUCENT");
noel357_basic_energy_cube.setLightOpacity(0);
noel357_basic_energy_cube.setTranslucent(true);
noel357_basic_energy_cube.setFullBlock(false);
noel357_basic_energy_cube.setToolClass("pickaxe");
noel357_basic_energy_cube.setToolLevel(2);
noel357_basic_energy_cube.setBlockSoundType(<soundtype:metal>);
noel357_basic_energy_cube.register();

// Fake Advanced Energy Cube
var noel357_advanced_energy_cube = VanillaFactory.createBlock("noel357_advanced_energy_cube", <blockmaterial:iron>);
noel357_advanced_energy_cube.setBlockHardness(4.5);
noel357_advanced_energy_cube.setBlockResistance(4.5);
noel357_advanced_energy_cube.setBlockLayer("TRANSLUCENT");
noel357_advanced_energy_cube.setLightOpacity(0);
noel357_advanced_energy_cube.setTranslucent(true);
noel357_advanced_energy_cube.setFullBlock(false);
noel357_advanced_energy_cube.setToolClass("pickaxe");
noel357_advanced_energy_cube.setToolLevel(2);
noel357_advanced_energy_cube.setBlockSoundType(<soundtype:metal>);
noel357_advanced_energy_cube.register();

// Fake Elite Energy Cube
var noel357_elite_energy_cube = VanillaFactory.createBlock("noel357_elite_energy_cube", <blockmaterial:iron>);
noel357_elite_energy_cube.setBlockHardness(4.5);
noel357_elite_energy_cube.setBlockResistance(4.5);
noel357_elite_energy_cube.setBlockLayer("TRANSLUCENT");
noel357_elite_energy_cube.setLightOpacity(0);
noel357_elite_energy_cube.setTranslucent(true);
noel357_elite_energy_cube.setFullBlock(false);
noel357_elite_energy_cube.setToolClass("pickaxe");
noel357_elite_energy_cube.setToolLevel(2);
noel357_elite_energy_cube.setBlockSoundType(<soundtype:metal>);
noel357_elite_energy_cube.register();

// Fake Ultimate Energy Cube
var noel357_ultimate_energy_cube = VanillaFactory.createBlock("noel357_ultimate_energy_cube", <blockmaterial:iron>);
noel357_ultimate_energy_cube.setBlockHardness(4.5);
noel357_ultimate_energy_cube.setBlockResistance(4.5);
noel357_ultimate_energy_cube.setBlockLayer("TRANSLUCENT");
noel357_ultimate_energy_cube.setLightOpacity(0);
noel357_ultimate_energy_cube.setTranslucent(true);
noel357_ultimate_energy_cube.setFullBlock(false);
noel357_ultimate_energy_cube.setToolClass("pickaxe");
noel357_ultimate_energy_cube.setToolLevel(2);
noel357_ultimate_energy_cube.setBlockSoundType(<soundtype:metal>);
noel357_ultimate_energy_cube.register();

// Big Void Seed
var noel357_big_void_seed = VanillaFactory.createItem("noel357_big_void_seed");
noel357_big_void_seed.register();

// Basic Steel Casing
var noel357_basic_steel_casing = VanillaFactory.createBlock("noel357_basic_steel_casing", <blockmaterial:iron>);
noel357_basic_steel_casing.setBlockHardness(4.5);
noel357_basic_steel_casing.setBlockResistance(4.5);
noel357_basic_steel_casing.setToolClass("pickaxe");
noel357_basic_steel_casing.setToolLevel(2);
noel357_basic_steel_casing.setBlockSoundType(<soundtype:metal>);
noel357_basic_steel_casing.register();

// Advanced Steel Casing
var noel357_advanced_steel_casing = VanillaFactory.createBlock("noel357_advanced_steel_casing", <blockmaterial:iron>);
noel357_advanced_steel_casing.setBlockHardness(4.5);
noel357_advanced_steel_casing.setBlockResistance(4.5);
noel357_advanced_steel_casing.setToolClass("pickaxe");
noel357_advanced_steel_casing.setToolLevel(2);
noel357_advanced_steel_casing.setBlockSoundType(<soundtype:metal>);
noel357_advanced_steel_casing.register();

// Elite Steel Casing
var noel357_elite_steel_casing = VanillaFactory.createBlock("noel357_elite_steel_casing", <blockmaterial:iron>);
noel357_elite_steel_casing.setBlockHardness(4.5);
noel357_elite_steel_casing.setBlockResistance(4.5);
noel357_elite_steel_casing.setToolClass("pickaxe");
noel357_elite_steel_casing.setToolLevel(2);
noel357_elite_steel_casing.setBlockSoundType(<soundtype:metal>);
noel357_elite_steel_casing.register();

// Water Crystal
var noel357_water_crystal = VanillaFactory.createItem("noel357_water_crystal");
noel357_water_crystal.register();

// Lava Crystal
var noel357_lava_crystal = VanillaFactory.createItem("noel357_lava_crystal");
noel357_lava_crystal.register();

// Fake Pressurized Air Tank
var noel357_pressurized_air_tank = VanillaFactory.createItem("noel357_pressurized_air_tank");
noel357_pressurized_air_tank.register();

// Fake Magnetic Glove
var noel357_magnetic_glove = VanillaFactory.createItem("noel357_magnetic_glove");
noel357_magnetic_glove.register();

// Dew of the Void Crystal
var noel357_dew_of_the_void_crystal = VanillaFactory.createItem("noel357_dew_of_the_void_crystal");
noel357_dew_of_the_void_crystal.register();

// Vapor of Levity Crystal
var noel357_vapor_of_levity_crystal = VanillaFactory.createItem("noel357_vapor_of_levity_crystal");
noel357_vapor_of_levity_crystal.register();

print("ENDING ContentTweakerItems_noel357.zs");
