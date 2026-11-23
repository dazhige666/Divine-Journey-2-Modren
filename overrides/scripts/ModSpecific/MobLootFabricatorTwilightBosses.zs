// 怪物战利品制造机：暮色森林 Boss 战利品（15 输出）
// 原 JSON 迁入脚本并 setLoadJEI(false)，避免 JEI 配方页被撑到 15 格。
import mods.modularmachinery.RecipeBuilder;

val tips = RecipeBuilder.newBuilder("mob_loot_fabricator_twilight_forest_bosses", "mob_loot_fabricator", 20);
tips.addItemInput(<twilightforest:lamp_of_cinders>);
tips.setChance(0.0f);
tips.addLifeEssenceInput(5000, false);

tips.addItemOutput(<twilightforest:trophy:0>);
tips.addItemOutput(<twilightforest:trophy:1>);
tips.addItemOutput(<twilightforest:trophy:2>);
tips.addItemOutput(<twilightforest:trophy:3>);
tips.addItemOutput(<twilightforest:trophy:4>);
tips.addItemOutput(<twilightforest:trophy:5>);
tips.addItemOutput(<twilightforest:giant_pickaxe>);
tips.addItemOutput(<twilightforest:giant_sword>);
tips.addItemOutput(<twilightforest:naga_scale>);
tips.addItemOutput(<twilightforest:meef_stroganoff>);
tips.addItemOutput(<twilightforest:alpha_fur>);
tips.addItemOutput(<twilightforest:fiery_blood>);
tips.addItemOutput(<twilightforest:fiery_tears>);
tips.addItemOutput(<twilightforest:hydra_chop>);
tips.addItemOutput(<bhc:orange_heart> * 6);

tips.setLoadJEI(false);
tips.build();