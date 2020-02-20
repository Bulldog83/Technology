
#priority 100

#ikwid

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

import scripts.globals.Utility.strToName;

function removePlankRecipes(plank as IItemStack) {
	Disabling.markForRemove(plank);
	mods.horsepower.ChoppingBlock.remove(plank);
	mods.betterwithmods.Saw.remove([plank * 6, <betterwithmods:bark>, <betterwithmods:material:22> * 2]);
}
function removeLogRecipes(log as IItemStack) {
	mods.thermalexpansion.Sawmill.removeRecipe(log);
	mods.mekanism.sawmill.removeRecipe(log);
}

val removePlanks as IItemStack[] = [
	<natura:overworld_planks:4>,
	<natura:overworld_planks:5>,
	<natura:overworld_planks:8>,
	<terraqueous:planks:1>,
	<terraqueous:planks:8>,
	<terraqueous:planks:9>
];

for plank in removePlanks {
	removePlankRecipes(plank);
	JEI.hide(plank);
}

val basicBuilder = builderBasic.builder();
val carpenterBuilder = builderCarpenter.builder();
val engineerBuilder = builderEngineer.builder();

val logsBark as IItemStack[IItemStack] = {
	<minecraft:log> : <primal:bark_oak>,
	<minecraft:log:1> : <primal:bark_spruce>,
	<minecraft:log:2> : <primal:bark_birch>,
	<minecraft:log:3> : <primal:bark_jungle>,
	<minecraft:log2> : <primal:bark_acacia>,
	<minecraft:log2:1> : <primal:bark_bigoak>,
	<primal:logs> : <primal:bark_ironwood>,
	<primal:logs:1> : <primal:bark_yew>,
	<primal:corypha_stalk> : <primal:bark_corypha>,
	<betterwithmods:blood_log> : <betterwithmods:bark:6>,
	<quark:bark> : <primal:bark_oak>,
	<quark:bark:1> : <primal:bark_spruce>,
	<quark:bark:2> : <primal:bark_birch>,
	<quark:bark:3> : <primal:bark_jungle>,
	<quark:bark:4> : <primal:bark_acacia>,
	<quark:bark:5> : <primal:bark_bigoak>
};

val logsDebarked as IItemStack[IItemStack] = {
	<minecraft:log> : <primal:logs_stripped>,
	<minecraft:log:1> : <primal:logs_stripped:1>,
	<minecraft:log:2> : <primal:logs_stripped:2>,
	<minecraft:log:3> : <primal:logs_stripped:3>,
	<minecraft:log2> : <primal:logs_stripped:4>,
	<minecraft:log2:1> : <primal:logs_stripped:5>,
	<primal:logs> : <primal:logs_stripped:6>,
	<primal:logs:1> : <primal:logs_stripped:7>,
	<primal:corypha_stalk> : <primal:corypha_stalk:1>,
	<quark:bark> : <primal:logs_stripped>,
	<quark:bark:1> : <primal:logs_stripped:1>,
	<quark:bark:2> : <primal:logs_stripped:2>,
	<quark:bark:3> : <primal:logs_stripped:3>,
	<quark:bark:4> : <primal:logs_stripped:4>,
	<quark:bark:5> : <primal:logs_stripped:5>
};

for log, debarked in logsDebarked {
	basicBuilder
		.setShapeless([log])
		.addOutput(debarked)
		.setExtraOutputOne(logsBark[log], 1.0)
		.addTool(art_tools.workblade, 1)
		.create();
}

var blood_log_id = <betterwithmods:blood_log>.definition.id;
for plank, logs in plankLogs {
	removePlankRecipes(plank);

	for log in logs {
		var dust = item_dust_wood;
		if(log.definition.id == blood_log_id) {
			dust = <betterwithmods:material:23>;
		}

		removeLogRecipes(log);

		mods.horsepower.ChoppingBlock.add(log, plank * 4, 2);
		mods.mekanism.sawmill.addRecipe(log, plank * 6, dust * 2, 1.0);
		mods.thermalexpansion.Sawmill.addRecipe(plank * 6, log, 800, dust * 2);
		mods.techreborn.industrialSawmill.addRecipe(plank * 6, dust, item_paper, log, <liquid:water> * 1000, 100, 128, false);

		if(isNull(logsBark[log])) {
			if(log.definition.id != blood_log_id) mods.betterwithmods.Saw.add(log, [plank * 6, dust * 2]);
			mods.techreborn.industrialSawmill.addRecipe(plank * 6, dust * 2, null, log, 100, 128, false);
		} else {
			if(log.definition.id != blood_log_id) mods.betterwithmods.Saw.add(log, [plank * 6, logsBark[log], dust * 2]);
			mods.techreborn.industrialSawmill.addRecipe(plank * 6, dust * 2, logsBark[log], log, 100, 128, false);
		}
	}
}

for planks, woodItems in woodPlanksItems {
	for type, item in woodItems {
		if(!isNull(item)) Disabling.markForRemove(item);
	}

	var stick = !isNull(woodItems.stick) ? woodItems.stick : <minecraft:stick>;
	var button = !isNull(woodItems.button) ? woodItems.button : <minecraft:wooden_button>;
	var pressure_plate = !isNull(woodItems.pressure_plate) ? woodItems.pressure_plate : <minecraft:wooden_pressure_plate>;
	var bookshelf = !isNull(woodItems.bookshelf) ? woodItems.bookshelf : <minecraft:bookshelf>;
	var workbench = !isNull(woodItems.workbench) ? woodItems.workbench : <minecraft:crafting_table>;
	var chest = !isNull(woodItems.chest) ? woodItems.chest : <minecraft:chest>;
	var ii_stick as IIngredient = !isNull(woodItems.stick) ? woodItems.stick : ore_stick;
	
	mods.horsepower.ChoppingBlock.add(planks, stick * 4, 1);
	carpenterBuilder
		.setShaped([
			[planks],
			[planks]
		])
		.addOutput(stick * 8)
		.addTool(art_tools.handsaw | <ore:toolAxe> | <tconstruct:hatchet>, 4)
		.setExtraOutputOne(item_dust_wood, 0.4)
		.create();
	
	if(!isNull(woodItems.slab)) {
		basicBuilder
			.setShapeless([planks])
			.addOutput(woodItems.slab * 2)
			.addTool(art_tools.handsaw, 1)
			.create();		
		carpenterBuilder
			.setShaped([[planks,planks,planks]])
			.addOutput(woodItems.slab * 6)
			.addTool(art_tools.handsaw, 3)
			.setExtraOutputOne(item_dust_wood, 0.8)
			.create();
	}
	if(!isNull(woodItems.stairs)) {
		carpenterBuilder
			.setShaped([
				[planks,null,null],
				[planks,planks,null],
				[planks,planks,planks]
			])
			.addOutput(woodItems.stairs * 6)
			.addTool(art_tools.framing_hammer, 6)
			.setMirrored()
			.create();
	}
	if(!isNull(woodItems.door)) {
		carpenterBuilder
			.setShaped([
				[planks,planks],
				[planks,planks],
				[planks,planks]
			])
			.addOutput(woodItems.door * 3)
			.addTool(art_tools.framing_hammer, 3)
			.create();
	}
	if(!isNull(woodItems.trapdoor)) {
		carpenterBuilder
			.setShaped([
				[planks,planks,planks],
				[planks,planks,planks]
			])
			.addOutput(woodItems.trapdoor * 2)
			.addTool(art_tools.framing_hammer, 3)
			.create();
	}
	if(!isNull(woodItems.fence)) {
		carpenterBuilder
			.setShaped([
				[planks,ii_stick,planks],
				[planks,ii_stick,planks]
			])
			.addOutput(woodItems.fence * 3)
			.addTool(art_tools.framing_hammer, 5)
			.create();
	}
	if(!isNull(woodItems.fence_gate)) {
		carpenterBuilder
			.setShaped([
				[ii_stick,planks,ii_stick],
				[ii_stick,planks,ii_stick]
			])
			.addOutput(woodItems.fence_gate)
			.addTool(art_tools.framing_hammer, 3)
			.create();
	}
	if(!isNull(woodItems.boat)) {
		carpenterBuilder
			.setShaped([
				[planks,null,planks],
				[planks,planks,planks]
			])
			.addOutput(woodItems.boat)
			.addTool(art_tools.framing_hammer, 5)
			.create();
	}
	
	carpenterBuilder
		.setShapeless([planks])
		.addOutput(button)
		.addTool(art_tools.razor, 1)
		.create();
	carpenterBuilder
		.setShaped([
			[planks,planks]
		])
		.addOutput(pressure_plate)
		.addTool(art_tools.handsaw, 2)
		.setExtraOutputOne(item_dust_wood, 0.8)
		.create();
	carpenterBuilder
		.setShaped([
			[planks,planks,planks],
			[item_book,item_book,item_book],
			[planks,planks,planks]
		])
		.addOutput(bookshelf)
		.addTool(art_tools.framing_hammer, 5)
		.create();
	carpenterBuilder
		.setShaped([
			[planks,planks],
			[planks,planks]
		])
		.addOutput(workbench)
		.addTool(art_tools.framing_hammer, 3)
		.create();
	carpenterBuilder
		.setShaped([
			[planks,planks,planks],
			[planks,null,planks],
			[planks,planks,planks]
		])
		.addOutput(chest)
		.addTool(art_tools.framing_hammer, 5)
		.create();
}

for log, logItems in woodLogItems {
	Disabling.markForRemove(logItems.slab);
	Disabling.markForRemove(logItems.stairs);
	Disabling.markForRemove(logItems.wall);
	
	basicBuilder
		.setShapeless([log])
		.addOutput(logItems.slab * 2)
		.addTool(art_tools.handsaw, 2)
		.create();		
	carpenterBuilder
		.setShaped([[log,log,log]])
		.addOutput(logItems.slab * 6)
		.addTool(art_tools.handsaw, 6)
		.setExtraOutputOne(item_dust_wood * 2, 1.0)
		.create();
	carpenterBuilder
		.setShaped([
			[log,null,null],
			[log,log,null],
			[log,log,log]
		])
		.addOutput(logItems.stairs * 4)
		.addTool(art_tools.handsaw, 6)
		.setExtraOutputOne(item_dust_wood * 2, 1.0)
		.setMirrored()
		.create();
	carpenterBuilder
		.setShaped([
			[log,logItems.slab,log],
			[log,logItems.slab,log]
		])
		.addOutput(logItems.wall * 4)
		.addTool(art_tools.framing_hammer, 6)
		.create();
}

val tpapChests as IItemStack[IItemStack] = {
	<minecraft:chest> : <minecraft:trapped_chest>,
	<quark:custom_chest> : <quark:custom_chest_trap>,
	<quark:custom_chest:1> : <quark:custom_chest_trap:1>,
	<quark:custom_chest:2> : <quark:custom_chest_trap:2>,
	<quark:custom_chest:3> : <quark:custom_chest_trap:3>,
	<quark:custom_chest:4> : <quark:custom_chest_trap:4>
};

for chest, trapped in tpapChests {
	Disabling.markForRemove(trapped);
	engineerBuilder
		.setShapeless([chest, <minecraft:tripwire_hook>])
		.addOutput(trapped)
		.addTool(art_tools.driver, 1)
		.create();
}

val worktablesShelf as IItemStack[IOreDictEntry] = {
	<ore:logOak> : <primal:worktable_shelf>,
	<ore:logSpruce> : <primal:worktable_shelf:1>,
	<ore:logBirch> : <primal:worktable_shelf:2>,
	<ore:logJungle> : <primal:worktable_shelf:3>,
	<ore:logAcacia> : <primal:worktable_shelf:4>,
	<ore:logDarkOak> : <primal:worktable_shelf:5>,
	<ore:logIronwood> : <primal:worktable_shelf:6>,
	<ore:logYew> : <primal:worktable_shelf:7>,
	<ore:plankLacquer> : <primal:worktable_shelf:8>,
	<ore:plankCorypha> : <primal:worktable_shelf:9>
};

for log, table in worktablesShelf {
	Disabling.markForRemove(table);
	recipes.addShaped(strToName(table.displayName ~ "_from_" ~ log.name), table, [[<ore:toolAxe>, log]]);
}

recipes.addShapeless("saplings_to_stick", item_stick, [<ore:treeSapling>]);

val quarkLogs as IItemStack[IItemStack] = {
	<minecraft:log> : <quark:bark>,
	<minecraft:log:1> : <quark:bark:1>,
	<minecraft:log:2> : <quark:bark:2>,
	<minecraft:log:3> : <quark:bark:3>,
	<minecraft:log2> : <quark:bark:4>,
	<minecraft:log2:1> : <quark:bark:5>
};

for log, quarkLog in quarkLogs {
	Disabling.markForRemove(quarkLog);
	recipes.addShaped(strToName(quarkLog.displayName), quarkLog * 4, [[log,log],[log,log]]);
}

Disabling.removeRecipes();