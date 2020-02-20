
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val carpenterBuilder = builderCarpenter.builder();

val base_chests as IIngredient[string] = {
	"copper" : <ore:chestWood>,
	"iron" : <ore:chestCopper>,
	"silver" : <ore:chestIron>,
	"gold" : <ore:chestSilver>,
	"diamond" : <ore:chestGold>,
	"obsidian" : <ore:chestDiamond>
};

val plates as IIngredient[string] = {
	"copper" : metalOres.copper.plate,
	"iron" : metalOres.iron.plate,
	"silver" : metalOres.silver.plate,
	"gold" : metalOres.gold.plate,
	"diamond" : <ore:plateDiamond>,
	"obsidian" : <ore:plateObsidian>
};

val chests as IItemStack[string] = {
	"copper" : <metalchests:metal_chest>,
	"iron" : <metalchests:metal_chest:1>,
	"silver" : <metalchests:metal_chest:2>,
	"gold" : <metalchests:metal_chest:3>,
	"diamond" : <metalchests:metal_chest:4>,
	"obsidian" : <metalchests:metal_chest:5>
};

for type, chest in chests {
	Disabling.markForRemove(chest);
	carpenterBuilder
		.setShaped([
			[ore_pin_iron,plates[type],ore_pin_iron],
			[plates[type],base_chests[type],plates[type]],
			[ore_pin_iron,plates[type],ore_pin_iron]
		])
		.addOutput(chest)
		.addTool(art_tools.framing_hammer, 5)
		.create();
}

val upgradesList as IItemStack[string][int][string] = {
	"wood" : {
		0 : { "copper" : <metalchests:chest_upgrade> },
		1 : { "iron" : <metalchests:chest_upgrade:1> },
		2 : { "silver" : <metalchests:chest_upgrade:2> },
		3 : { "gold" : <metalchests:chest_upgrade:3> },
		4 : { "diamond" : <metalchests:chest_upgrade:4> },
		5 : { "obsidian" : <metalchests:chest_upgrade:5> }
	},
	"copper" : {
		0 : { "iron" : <metalchests:chest_upgrade:6> },
		1 : { "silver" : <metalchests:chest_upgrade:7> },
		2 : { "gold" : <metalchests:chest_upgrade:8> },
		3 : { "diamond" : <metalchests:chest_upgrade:9> },
		4 : { "obsidian" : <metalchests:chest_upgrade:10> }
	},
	"iron" : {
		0 : { "silver" : <metalchests:chest_upgrade:11> },
		1 : { "gold" : <metalchests:chest_upgrade:12> },
		2 : { "diamond" : <metalchests:chest_upgrade:13> },
		3 : { "obsidian" : <metalchests:chest_upgrade:14> }
	},
	"silver" : {
		0 : { "gold" : <metalchests:chest_upgrade:15> },
		1 : { "diamond" : <metalchests:chest_upgrade:16> },
		2 : { "obsidian" : <metalchests:chest_upgrade:17> }
	},
	"gold" : {
		0 : { "diamond" : <metalchests:chest_upgrade:18> },
		1 : { "obsidian" : <metalchests:chest_upgrade:19> }
	},
	"diamond" : {
		0 : { "obsidian" : <metalchests:chest_upgrade:20> }
	}
};

val upgrade_items as IIngredient[string] = {
	"wood" : <ore:plankWood>,
	"copper" : metalOres.copper.ingot,
	"iron" : metalOres.iron.ingot,
	"silver" : metalOres.silver.ingot,
	"gold" : metalOres.gold.ingot,
	"diamond" : <ore:gemDiamond>
};

for from, toUpgrade in upgradesList {
	var base_upgrade as IIngredient = upgrade_items[from];
	for ind, upgradeData in toUpgrade {
		for type, upgrade in upgradeData {
			Disabling.markForRemove(upgrade);
			carpenterBuilder
				.setShaped([
					[ore_pin_iron,plates[type],ore_pin_iron],
					[plates[type],base_upgrade,plates[type]],
					[ore_pin_iron,plates[type],ore_pin_iron]
				])
				.addOutput(upgrade)
				.addTool(art_tools.framing_hammer, 3)
				.create();
			base_upgrade = upgrade;
		}
	}
}

Disabling.removeRecipes();