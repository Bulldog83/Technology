
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.Copy;

val basicBuilder = builderBasic.builder();
val tannerBuilder = builderTanner.builder();

for i in 0 to 6 {
	builderCarpenter.convertRecipe("betterwithmods:blocks/grate_" ~ i, art_tools.framing_hammer, 5);
	builderCarpenter.convertRecipe("betterwithmods:blocks/slats_" ~ i, art_tools.framing_hammer, 3);
	builderBasic.convertRecipe("betterwithmods:blocks/redstone/chime/bamboo_chime_" ~ i, art_tools.driver, 5);
	builderBasic.convertRecipe("betterwithmods:blocks/redstone/chime/metal_chime_" ~ i, art_tools.driver, 5);
	builderCarpenter.convertRecipe("betterwithmods:blocks/mini/wood_bench_" ~ i, art_tools.framing_hammer, 12);
	builderCarpenter.convertRecipe("betterwithmods:blocks/mini/wood_table_" ~ i, art_tools.framing_hammer, 15);
}

val carpenterRecipes as int[string] = {
	"betterwithmods:blocks/platform" : 12,
	"betterwithmods:items/material/material.wood_blade" : 10,
	"betterwithmods:items/material/material.windmill_blade" : 10,
	"betterwithmods:items/material/material.haft" : 3,
	"betterwithmods:blocks/mech/windmill" : 15,
	"betterwithmods:blocks/mech/vertical_windmill" : 15,
	"betterwithmods:blocks/mech/waterwheel" : 15,
	"betterwithmods:blocks/mech/axle" : 3
};

for recipe, dmg in carpenterRecipes {
	builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, dmg);
}

builderTanner.convertRecipe("betterwithmods:items/breeding_harness", art_tools.needle, 12);
builderTanner.convertRecipe("betterwithmods:items/material/material.leather_belt", art_tools.needle, 1);
builderBlacksmith.convertRecipe("betterwithmods:items/material/material.screw", art_tools.hammer, 2);
builderChemist.convertRecipe("betterwithmods:items/dynamite", art_tools.beaker, 5);
builderBasic.convertRecipe("betterwithmods:blocks/mech/anchor", art_tools.hammer, 7);

val leatherToCut as IItemStack[IIngredient] = {
	<minecraft:leather> : <betterwithmods:material:31>,
	<ore:leatherTanned> : <betterwithmods:material:32>,
	<ore:hideScoured> : <betterwithmods:material:33>,
	<betterwithmods:material:32> : <betterwithmods:material:8>
};

for leather, cut_leather in leatherToCut {
	Disabling.markForRemove(cut_leather);
	tannerBuilder
		.setShapeless([leather])
		.addOutput(cut_leather * 2)
		.addTool(art_tools.shears, 1)
		.create();
}

val woolArmor as int[string] = {
	"betterwithmods:items/wool_helmet" : 13,
	"betterwithmods:items/wool_chest" : 15,
	"betterwithmods:items/wool_pants" : 14,
	"betterwithmods:items/wool_boots" : 13
};

for recipe, dmg in woolArmor {
	builderTanner.convertRecipe(recipe, art_tools.needle, dmg);
}

val dirtSlabs as IItemStack[IIngredient] = {
	<minecraft:dirt> : <betterwithmods:dirt_slab>,
	<minecraft:grass> : <betterwithmods:dirt_slab:1>,
	<minecraft:mycelium> : <betterwithmods:dirt_slab:2>
};

for dirt, slab in dirtSlabs {
	Disabling.markForRemove(slab);
	basicBuilder
		.setShaped([[dirt,dirt]])
		.addOutput(slab * 4)
		.addTool(<tconstruct:shovel>, 5)
		.create();
}

val engineerRecipes as int[IIngredient][string] = {
	"betterwithmods:blocks/mech/single_machine_0" : {
		art_tools["spanner"] : 12
	},
	"betterwithmods:blocks/mech/single_machine_1" : {
		art_tools["spanner"] : 18
	},
	"betterwithmods:blocks/mech/single_machine_2" : {
		art_tools["spanner"] : 14
	},
	"betterwithmods:blocks/mech/single_machine_3" : {
		art_tools["spanner"] : 18
	},
	"betterwithmods:blocks/mech/gearbox" : {
		art_tools["spanner"] : 20
	},
	"betterwithmods:blocks/mech/fix_gearbox" : {
		art_tools["spanner"] : 12
	},
	"betterwithmods:blocks/mech/hand_crank" : {
		art_tools["driver"] : 10
	},
	"betterwithmods:blocks/mech/bellows" : {
		art_tools["spanner"] : 18
	},
	"betterwithmods:blocks/mech/advanced_bellows" : {
		art_tools["spanner"] : 22
	},
	"betterwithmods:blocks/mech/saw" : {
		art_tools["spanner"] : 20
	},
	"betterwithmods:blocks/mech/screw_pump" : {
		art_tools["spanner"] : 24
	},
	"betterwithmods:blocks/mech/booster" : {
		art_tools["spanner"] : 12
	},
	"betterwithmods:blocks/redstone/hibachi" : {
		art_tools["driver"] : 26
	},
	"betterwithmods:blocks/redstone/light" : {
		art_tools["driver"] : 8
	},
	"betterwithmods:items/material/material.redstone_latch" : {
		art_tools["driver"] : 10
	}
};

for recipe, toolDmg in engineerRecipes {
	for tool, dmg in toolDmg {
		builderEngineer.convertRecipe(recipe, tool, dmg);
	}
}

val sawOutputRemove as IItemStack[] = [
	<minecraft:pumpkin>,
	<minecraft:vine>,
	<minecraft:yellow_flower>,
	<minecraft:brown_mushroom>,
	<minecraft:red_mushroom>,
	<minecraft:red_flower>,
	<minecraft:red_flower:1>,
	<minecraft:red_flower:2>,
	<minecraft:red_flower:3>,
	<minecraft:red_flower:4>,
	<minecraft:red_flower:5>,
	<minecraft:red_flower:6>,
	<minecraft:red_flower:7>,
	<minecraft:red_flower:8>,
	<minecraft:melon>,
	<betterwithmods:rope>
];

for output in sawOutputRemove {
	mods.betterwithmods.Saw.remove([output]);
}

for i in 0 to 6 {
	mods.betterwithmods.Saw.remove([<minecraft:planks>.definition.makeStack(i) * 6, <betterwithmods:bark>.definition.makeStack(i), <betterwithmods:material:22> * 2]);
}

mods.betterwithmods.Saw.add(<minecraft:melon_block>, [<minecraft:melon> * 9]);