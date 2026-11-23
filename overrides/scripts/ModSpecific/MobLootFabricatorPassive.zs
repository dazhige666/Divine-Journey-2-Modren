// 怪物战利品制造机：被动生物战利品（14 物品 + 8000 mB 肉汁）
// 原 JSON 迁入脚本并 setLoadJEI(false)，避免 JEI 配方页被撑到 14 格。
import mods.modularmachinery.RecipeBuilder;

val tips = RecipeBuilder.newBuilder("mob_loot_fabricator_passive", "mob_loot_fabricator", 20);
tips.addItemInput(<torchmaster:dread_lamp>);
tips.setChance(0.0f);
tips.addLifeEssenceInput(500, false);

tips.addItemOutput(<minecraft:feather> * 64);
tips.addItemOutput(<minecraft:chicken> * 64);
tips.addItemOutput(<minecraft:porkchop> * 64);
tips.addItemOutput(<minecraft:beef> * 64);
tips.addItemOutput(<minecraft:leather> * 64);
tips.addItemOutput(<minecraft:rabbit_hide> * 64);
tips.addItemOutput(<minecraft:rabbit_foot> * 64);
tips.addItemOutput(<minecraft:rabbit> * 64);
tips.addItemOutput(<minecraft:dye:0> * 64);
tips.addItemOutput(<minecraft:mutton> * 64);
tips.addItemOutput(<minecraft:wool:0> * 64);
tips.addItemOutput(<minecraft:snowball> * 64);
tips.addItemOutput(<totemic:buffalo_items> * 64);
tips.addItemOutput(<natura:materials:6> * 64);
tips.addFluidOutput(<liquid:meat> * 8000);

tips.setLoadJEI(false);
tips.build();