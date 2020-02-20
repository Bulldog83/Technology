
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static art_tables as IItemStack[string][string] = {
	"carpenter" : {
		"worktable" : <artisanworktables:worktable:1>,
		"workstation" : <artisanworktables:workstation:1>,
		"workshop" : <artisanworktables:workshop:1>
	},
	"mason" : {
		"worktable" : <artisanworktables:worktable:2>,
		"workstation" : <artisanworktables:workstation:2>,
		"workshop" : <artisanworktables:workshop:2>
	},
	"blacksmith" : {
		"worktable" : <artisanworktables:worktable:3>,
		"workstation" : <artisanworktables:workstation:3>,
		"workshop" : <artisanworktables:workshop:3>
	},
	"basic" : {
		"worktable" : <artisanworktables:worktable:5>,
		"workstation" : <artisanworktables:workstation:5>,
		"workshop" : <artisanworktables:workshop:5>
	},
	"engineer" : {
		"worktable" : <artisanworktables:worktable:6>,
		"workstation" : <artisanworktables:workstation:6>,
		"workshop" : <artisanworktables:workshop:6>
	},
	"mage" : {
		"worktable" : <artisanworktables:worktable:7>,
		"workstation" : <artisanworktables:workstation:7>,
		"workshop" : <artisanworktables:workshop:7>
	},
	"chemist" : {
		"worktable" : <artisanworktables:worktable:9>,
		"workstation" : <artisanworktables:workstation:9>,
		"workshop" : <artisanworktables:workshop:9>
	},
	"chef" : {
		"worktable" : <artisanworktables:worktable:11>,
		"workstation" : <artisanworktables:workstation:11>,
		"workshop" : <artisanworktables:workshop:11>
	},
	"designer" : {
		"worktable" : <artisanworktables:worktable:12>,
		"workstation" : <artisanworktables:workstation:12>,
		"workshop" : <artisanworktables:workshop:12>
	},
	"tanner" : {
		"worktable" : <artisanworktables:worktable:13>,
		"workstation" : <artisanworktables:workstation:13>,
		"workshop" : <artisanworktables:workshop:13>
	}
};

static upgrade_workstation_items as IIngredient[string] = {
	"mason" : <minecraft:brick_block>,
	"blacksmith" : <ore:blockIron>,
	"engineer" : <ore:gearIron>,
	"mage" : <thaumcraft:stone_arcane>,
	"chemist" : <ore:blockGlassHardened>,
	"tanner" : <ore:leatherTanned>
};

static upgrade_workshop_items as IIngredient[string] = {
		"carpenter" : <twilightforest:tower_wood>,
		"mason" : <immersiveengineering:stone_decoration:2>,
		"blacksmith" : <ore:blockSteel>,
		"engineer" : <immersiveengineering:metal_decoration0:5>,
		"mage" : <twilightforest:block_storage:1>,
		"chemist" : <ore:glassReinforced>,
		"tanner" : <ore:leatherTroll>
	};

function wortableRecipe(type as string, recipe as IIngredient[][]) {
	val worktable = art_tables[type].worktable;
	recipes.addShaped("artisan_" ~ type ~ "_worktable", worktable, recipe);
}
function workstationUpgrade(type as string) {
	val workstation = art_tables[type].workstation;
	val upgrade_item = !isNull(upgrade_workstation_items[type]) ? upgrade_workstation_items[type] : <ore:plankWood>;
	recipes.addShaped("artisan_" ~ type ~ "_workstation_upgrade", workstation, [
		[upgrade_item,art_tables[type].worktable,upgrade_item],
		[upgrade_item,<ore:barrelWood>,upgrade_item],
		[<ore:plankWood>,<ore:blockCrudeIron>,<ore:plankWood>]
	]);	
}
function workshopUpgrade(type as string) {
	val planks = <ore:plankTreatedWood>;
	val workshop = art_tables[type].workshop;
	val upgrade_item = !isNull(upgrade_workshop_items[type]) ? upgrade_workshop_items[type] : planks;
	val crafter = <ore:crafterWood>;
	recipes.addShaped("artisan_" ~ type ~ "_workshop_upgrade", workshop, [
		[crafter,art_tables[type].workstation,crafter],
		[upgrade_item,<thermalexpansion:reservoir>,upgrade_item],
		[planks,planks,planks]
	]);
}

val worktableRecipe as IIngredient[][][string] = {
	"carpenter" : [
		[<ore:plankWood>,<ore:logWood>,<ore:plankWood>],
		[<ore:plankWood>,<ore:bucket>,<ore:plankWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"blacksmith" : [
		[<ore:ingotCrudeIron>,<ore:ingotIron>,<ore:ingotCrudeIron>],
		[<ore:ingotCrudeIron>,<ore:bucket>,<ore:ingotCrudeIron>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"basic" : [
		[<ore:plankWood>,<ore:crafterWood>,<ore:plankWood>],
		[<ore:plankWood>,<ore:bucket>,<ore:plankWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"engineer" : [
		[<ore:plateIron>,<ore:plateCopper>,<ore:plateIron>],
		[<ore:gearWood>,<ore:bucket>,<ore:gearWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"mage" : [
		[<ore:gemLapis>,<ore:obsidian>,<ore:gemLapis>],
		[<ore:obsidian>,<ore:bucket>,<ore:obsidian>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"chemist" : [
		[<ore:blockGlassHardened>,<minecraft:brewing_stand>,<ore:blockGlassHardened>],
		[<ore:plateIron>,<ore:bucket>,<ore:plateIron>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"chef" : [
		[<ore:ingotIron>,<ore:plankWood>,<ore:ingotIron>],
		[<ore:plankWood>,<ore:bucket>,<ore:plankWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"tanner" : [
		[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>],
		[<ore:plankWood>,<ore:bucket>,<ore:plankWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"designer" : [
		[<ore:dyeBlue>,<ore:paper>,<ore:dyeBlue>],
		[<ore:plankWood>,<ore:bucket>,<ore:plankWood>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	],
	"mason" : [
		[<minecraft:brick>,<minecraft:stone_slab>,<minecraft:brick>],
		[<minecraft:brick>,<ore:bucket>,<minecraft:brick>],
		[<ore:logWood>,<ore:plankWood>,<ore:logWood>]
	]
};

for type, tables in art_tables {
	wortableRecipe(type, worktableRecipe[type]);
	workstationUpgrade(type);
	workshopUpgrade(type);
}

builderDesigner.builder()
	.setShaped([
		[oreDyes.blue.dye,ore_paper,oreDyes.blue.dye],
		[ore_paper,oreDyes.blue.dye,ore_paper],
		[oreDyes.blue.dye,ore_paper,oreDyes.blue.dye]
	])
	.addOutput(<artisanworktables:design_pattern> * 4)
	.addTool(art_tools.compass, 3)
	.create();
builderCarpenter.builder()
	.setShaped([
		[ore_plank,<ore:plateCopper>,ore_plank],
		[ore_plank,<ore:chestWood>,ore_plank],
		[ore_plank,<ore:plateCopper>,ore_plank]
	])
	.addOutput(<artisanworktables:toolbox>)
	.addTool(art_tools.framing_hammer, 10)
	.create();
builderEngineer.builder()
	.setShaped([
		[<ore:plateIron>,<ore:gearCopper>,<ore:plateIron>],
		[<ore:gearCopper>,<artisanworktables:toolbox>,<ore:gearCopper>],
		[<ore:plateIron>,<ore:gearCopper>,<ore:plateIron>]
	])
	.addOutput(<artisanworktables:mechanical_toolbox>)
	.addTool(art_tools.spanner, 14)
	.create();	