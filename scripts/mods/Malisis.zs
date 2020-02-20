
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val carpenterBuilder = builderCarpenter.builder();
val engineerBuilder = builderEngineer.builder();
val blacksmithBuilder = builderBlacksmith.builder();

val recipesToCopy as int[IIngredient][string] = {
	"malisisblocks:block_mixer" : {
		art_tools["driver"] : 12
	},
	"malisisblocks:player_sensor" : {
		art_tools["driver"] : 13
	},
	"malisisblocks:swapper" : {
		art_tools["driver"] : 15
	},
	"malisisblocks:vanishing_copier" : {
		art_tools["driver"] : 25
	},
	"malisisdoors:wood_sliding_door" : {
		art_tools["spanner"] : 13
	},
	"malisisdoors:iron_sliding_door" : {
		art_tools["spanner"] : 15
	},
	"malisisdoors:laboratory_door" : {
		art_tools["spanner"] : 20
	},
	"malisisdoors:factory_door" : {
		art_tools["spanner"] : 20
	}
};

for recipe, toolDmg in recipesToCopy {
	for tool, dmg in toolDmg {
		builderCarpenter.convertRecipe(recipe, tool, dmg);
	}
}

builderEngineer.convertMultitoolRecipe("malisisdoors:door_factory", {
	art_tools["driver"] : 55,
	art_tools["spanner"] : 35
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("malisisdoors:forcefield_item", {
	art_tools["driver"] : 30,
	art_tools["pliers"] : 30
} as int[IIngredient]);

val ironDoors as int[string] = {
	"malisisdoors:jail_door" : 13,
	"malisisdoors:vertical_hatch" : 15,
	"malisisdoors:rusty_hatch" : 13
};
for recipe, dmg in ironDoors {
	builderBlacksmith.convertRecipe(recipe,art_tools.hammer, dmg);
}

val doorRecipes as string[] = [
	"malisisdoors:shoji_door",
	"malisisdoors:saloon_door",
	"malisisdoors:camo_fencegate"
];

for recipe in doorRecipes {
	builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, 15);
}

blacksmithBuilder
	.setShaped([
		[ore_ingot_iron,ore_ingot_iron,ore_ingot_iron],
		[null,ore_stick_iron,null]
	])
	.addOutput(<malisisdoors:rustyhandle>)
	.addTool(art_tools.hammer, 7)
	.create();
Disabling.markForRemove(<malisisdoors:rustyhandle>);
blacksmithBuilder
	.setShaped([
		[ore_stick_iron,ore_stick_iron],
		[ore_stick_iron,ore_stick_iron],
		[ore_stick_iron,ore_stick_iron]
	])
	.addOutput(<malisisdoors:rustyladder> * 3)
	.addTool(art_tools.hammer, 10)
	.create();
Disabling.markForRemove(<malisisdoors:rustyladder>);

val quartz = <minecraft:quartz_block>;
val plate_alum = <ore:plateAluminum>;
val glass_pane = <ore:paneGlassColorless>;
val ingot_gold = <ore:ingotGold>;

engineerBuilder
	.setShaped([
		[ingot_gold,ore_ingot_iron,ore_ingot_iron],
		[ingot_gold,ore_ingot_iron,ore_ingot_iron]
	])
	.addOutput(<malisisdoors:sliding_trapdoor>)
	.addTool(art_tools.spanner, 13)
	.create();
Disabling.markForRemove(<malisisdoors:sliding_trapdoor>);
engineerBuilder
	.setShaped([
		[plate_alum,plate_alum,plate_alum],
		[plate_alum,glass_pane,plate_alum],
		[plate_alum,plate_alum,plate_alum]
	])
	.addOutput(<malisisdoors:garage_door>)
	.addTool(art_tools.spanner, 13)
	.create();
Disabling.markForRemove(<malisisdoors:garage_door>);
engineerBuilder
	.setShaped([
		[ingot_gold,ore_ingot_iron,ore_ingot_iron,ore_ingot_iron,ingot_gold],
		[ingot_gold,glass_pane,ore_ingot_iron,glass_pane,ingot_gold],
		[ingot_gold,glass_pane,ore_ingot_iron,glass_pane,ingot_gold],
		[ingot_gold,glass_pane,ore_ingot_iron,glass_pane,ingot_gold],
		[ingot_gold,ore_ingot_iron,ore_ingot_iron,ore_ingot_iron,ingot_gold]
	])
	.addOutput(<malisisdoors:hitechdoor>)
	.addTool(art_tools.driver, 65)
	.addTool(art_tools.spanner, 60)
	.setMinimumTier(2)
	.create();
Disabling.markForRemove(<malisisdoors:hitechdoor>);

carpenterBuilder
	.setShaped([
		[quartz,quartz,quartz,quartz,quartz],
		[quartz,ore_plank,ore_plank,ore_plank,quartz],
		[quartz,ore_ingot_iron,ore_plank,ore_ingot_iron,quartz],
		[quartz,ore_plank,ore_plank,ore_plank,quartz],
		[quartz,ore_plank,ore_plank,ore_plank,quartz]
	])
	.addOutput(<malisisdoors:carriage_door>)
	.addTool(art_tools.handsaw, 65)
	.addTool(art_tools.framing_hammer, 80)
	.setMinimumTier(2)
	.create();
carpenterBuilder
	.setShaped([
		[quartz,quartz,quartz,quartz,quartz],
		[quartz,ore_plank,ore_plank,ore_plank,quartz],
		[quartz,ore_ingot_iron,ore_ingot_iron,ore_ingot_iron,quartz],
		[quartz,ore_plank,ore_plank,ore_plank,quartz],
		[quartz,ore_ingot_iron,ore_plank,ore_ingot_iron,quartz]
	])
	.addOutput(<malisisdoors:medieval_door>)
	.addTool(art_tools.handsaw, 80)
	.addTool(art_tools.framing_hammer, 65)
	.addTool(art_tools.hammer, 35)
	.setMinimumTier(2)
	.create();
	
val plankBigDoors as IItemStack[IItemStack] = {
	<minecraft:planks> : <malisisdoors:big_door_oak_3x3>,
	<minecraft:planks:1> : <malisisdoors:big_door_spruce_3x3>,
	<minecraft:planks:2> : <malisisdoors:big_door_birch_3x3>,
	<minecraft:planks:3> : <malisisdoors:big_door_jungle_3x3>,
	<minecraft:planks:4> : <malisisdoors:big_door_acacia_3x3>,
	<minecraft:planks:5> : <malisisdoors:big_door_dark_oak_3x3>
};

for plank, door in plankBigDoors {
	Disabling.markForRemove(door);
	carpenterBuilder
		.setShaped([
			[plank,plank,plank,plank],
			[plank,plank,plank,plank],
			[plank,plank,plank,plank],
			[plank,plank,plank,plank]
		])
		.addOutput(door)
		.addTool(art_tools.handsaw, 45)
		.addTool(art_tools.framing_hammer, 40)
		.setMinimumTier(2)
		.create();
}

Disabling.markForRemove(<malisisdoors:big_door_iron_3x3>);
blacksmithBuilder
	.setShaped([
		[ore_ingot_iron,ore_ingot_iron,ore_ingot_iron,ore_ingot_iron],
		[ore_ingot_iron,ore_plate_iron,ore_plate_iron,ore_ingot_iron],
		[ore_ingot_iron,ore_plate_iron,ore_plate_iron,ore_ingot_iron],
		[ore_ingot_iron,ore_plate_iron,ore_plate_iron,ore_ingot_iron]
	])
	.addOutput(<malisisdoors:big_door_iron_3x3>)
	.addTool(art_tools.hammer, 125)
	.setMinimumTier(2)
	.create();
	
Disabling.removeRecipes();