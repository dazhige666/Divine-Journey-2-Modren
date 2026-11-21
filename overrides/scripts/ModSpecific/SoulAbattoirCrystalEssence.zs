// 灵魂屠宰场：一次产出全部 41 种水晶碎片（测试迁移，旧 mob_loot_fabricator 配方暂留）
// 注册时 setLoadJEI(false)，避免 41 个输出把 JEI 配方页撑宽。
import mods.modularmachinery.RecipeBuilder;

val tips = RecipeBuilder.newBuilder("soul_abattoir_thaumcraft_wisps", "soul_abattoir", 1200);
tips.addItemInput(<thaumicaugmentation:autocaster_placer>);
tips.setChance(0.0f); // 对应原 JSON 的 "chance": 0 —— 投入的放置器不消耗
tips.addLifeEssenceInput(500, false);

tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "aer", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "terra", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "ignis", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "aqua", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "ordo", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "perditio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "vacuos", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "lux", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "motus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "gelum", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "vitreus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "metallum", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "victus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "mortuus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "potentia", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "permutatio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "praecantatio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "auram", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "alkimia", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "vitium", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "tenebrae", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "alienis", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "volatus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "herba", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "instrumentum", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "fabrico", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "machina", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "vinculum", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "spiritus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "cognitio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "sensus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "aversio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "praemunio", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "desiderium", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "exanimis", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "bestia", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "humanus", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "sol", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "luna", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "stellae", amount: 1}]}) * 64);
tips.addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{key: "diabolus", amount: 1}]}) * 64);

tips.setLoadJEI(false);
tips.build();
