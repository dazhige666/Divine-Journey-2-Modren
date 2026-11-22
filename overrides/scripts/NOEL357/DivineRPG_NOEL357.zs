// Author: NOEL357
// Merged from NOEL357_additions_2.23.4-2; only the Santa armor repair recipes are kept.

val santaArmorArray = ["santa_helmet", "santa_chestplate", "santa_leggings", "santa_boots"] as string[];

for santaArmor in santaArmorArray {
	var santaArmorItem = itemUtils.getItem("divinerpg:" + santaArmor);

	recipes.addShapeless("repair_" + santaArmor, santaArmorItem, [santaArmorItem.anyDamage().marked("armor"), <divinerpg:ice_stone>],
		function(out, ins, cInfo) {
			if(ins.armor.damage != 0) {
				return out.withDamage(ins.armor.damage - 100);
			} else {
				return out;
			}
		}, null
	);
}
