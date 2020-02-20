
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val oredictItems as IItemStack[][IOreDictEntry] = {
	<ore:toolHammer> : [
		<thermalfoundation:tool.hammer_copper>,
		<thermalfoundation:tool.hammer_tin>,
		<thermalfoundation:tool.hammer_silver>,
		<thermalfoundation:tool.hammer_lead>,
		<thermalfoundation:tool.hammer_aluminum>,
		<thermalfoundation:tool.hammer_nickel>,
		<thermalfoundation:tool.hammer_platinum>,
		<thermalfoundation:tool.hammer_steel>,
		<thermalfoundation:tool.hammer_electrum>,
		<thermalfoundation:tool.hammer_invar>,
		<thermalfoundation:tool.hammer_bronze>,
		<thermalfoundation:tool.hammer_constantan>,
		<thermalfoundation:tool.hammer_iron>,
		<thermalfoundation:tool.hammer_gold>,
		<thermalfoundation:tool.hammer_diamond>,
		<primal:stone_gallagher>,
		<primal:nether_gallagher>,
		<primal:quartz_gallagher>,
		<primal:iron_gallagher>,
		<immersiveengineering:tool>,
		<magneticraft:stone_hammer>,
		<magneticraft:iron_hammer>,
		<magneticraft:steel_hammer>
	],
	<ore:shears> : [
		<minecraft:shears>,
		<primal:flint_shears>,
		<primal:quartz_shears>,
		<thermalfoundation:tool.shears_copper>,
		<thermalfoundation:tool.shears_tin>,
		<thermalfoundation:tool.shears_silver>,
		<thermalfoundation:tool.shears_lead>,
		<thermalfoundation:tool.shears_aluminum>,
		<thermalfoundation:tool.shears_nickel>,
		<thermalfoundation:tool.shears_platinum>,
		<thermalfoundation:tool.shears_steel>,
		<thermalfoundation:tool.shears_electrum>,
		<thermalfoundation:tool.shears_invar>,
		<thermalfoundation:tool.shears_bronze>,
		<thermalfoundation:tool.shears_constantan>,
		<thermalfoundation:tool.shears_diamond>,
		<thermalfoundation:tool.shears_gold>,
		<botania:manasteelshears>,
		<botania:elementiumshears>
	],
	<ore:itemClay> : [
		<minecraft:clay_ball>,
		<primal:muck>,
		<primal:terra_clump>,
		<primal:cinis_clump>
	],
	<ore:barrelWood> : [
		<primal:barrel>,
		<primal:barrel:1>,
		<primal:barrel:2>,
		<primal:barrel:3>,
		<primal:barrel:4>,
		<primal:barrel:5>,
		<primal:barrel:6>,
		<primal:barrel:7>,
		<primal:barrel:8>,
		<primal:barrel:9>
	],
	<ore:crafterWood> : [
		<primal:worktable_shelf>,
		<primal:worktable_shelf:1>,
		<primal:worktable_shelf:2>,
		<primal:worktable_shelf:3>,
		<primal:worktable_shelf:4>,
		<primal:worktable_shelf:5>,
		<primal:worktable_shelf:6>,
		<primal:worktable_shelf:7>,
		<primal:worktable_shelf:8>,
		<primal:worktable_shelf:9>,
		<thebetweenlands:weedwood_workbench>,
		<bibliocraft:fancyworkbench>,
		<bibliocraft:fancyworkbench:1>,
		<bibliocraft:fancyworkbench:2>,
		<bibliocraft:fancyworkbench:3>,
		<bibliocraft:fancyworkbench:4>,
		<bibliocraft:fancyworkbench:5>,
		<bibliocraft:fancyworkbench:6>
	],
	<ore:leatherTroll> : [
		<iceandfire:troll_leather_forest>,
		<iceandfire:troll_leather_frost>,
		<iceandfire:troll_leather_mountain>
	],
	<ore:itemCane> : [
		<minecraft:reeds>,
		<biomesoplenty:plant_1:4>,
		<biomesoplenty:double_plant:1>
	],
	<ore:itemLeather> : [
		<betterwithmods:material:31>,
		<primal:pigman_leather>
	],
	<ore:itemCover> : [
		<betterwithmods:material:31>,
		<primal:pigman_leather>,
		<tconstruct:pattern>
	],
	<ore:bucket> : [
		<minecraft:bucket>,
		<primal:bucket_clay>,
		<primal:bucket_terra>,
		<primal:bucket_cinis>,
		<thebetweenlands:bl_bucket>,
		<thebetweenlands:bl_bucket:1>
	]
};

for ore, items in oredictItems {
	for item in items {
		ore.add(item);
	}
}

for metal, oreEntries in metalOres {
	for type, ore_entry in oreEntries {
		if(!isNull(metalItems[metal][type]))
			ore_entry.add(metalItems[metal][type]);
	}
}

for item in <ore:mortalIngredient>.items {
	<ore:mortalIngredient>.remove(item);
}


val oreEntryAllow as IOreDictEntry[] = [
	<ore:blockGlassHardened>,
	<ore:ironglass>,
	<ore:obsidian>,
	<ore:obsidianTransparent>
];

val oreItemsCheck as IItemStack[] = [
	<primal:ironglass>,
	<primal:obsidian_transparent>,
	<primal:obsidian_transparent:1>,
	<primal:obsidian_transparent:2>
];

for item in oreItemsCheck{
	for ore_entry in item.definition.ores {
		logger.logInfo(ore_entry.name ~ ": " ~ !(oreEntryAllow in ore_entry));
		if(!(oreEntryAllow in ore_entry)) {
			ore_entry.remove(item);
		}
	}
}