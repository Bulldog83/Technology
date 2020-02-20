
#priority 100

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val recipesBlacksmith as int[string] = {
	"rustic:chain" : 3,
	"rustic:chandelier" : 8,
	"rustic:iron_lattice" : 5,
	"rustic:iron_lantern" : 5
};

for recipe, dmg in recipesBlacksmith {
	builderBlacksmith.convertRecipe(recipe, art_tools.hammer, dmg);
}

val recipesCarpenter as int[string] = {
	"rustic:apiary" : 13,
	"rustic:oak_chair" : 12,
	"rustic:big_oak_chair" : 12,
	"rustic:birch_chair" : 12,
	"rustic:spruce_chair" : 12,
	"rustic:acacia_chair" : 12,
	"rustic:jungle_chair" : 12,
	"rustic:olive_chair" : 12,
	"rustic:ironwood_chair" : 12,
	"rustic:oak_table" : 15,
	"rustic:big_oak_table" : 15,
	"rustic:birch_table" : 15,
	"rustic:spruce_table" : 15,
	"rustic:acacia_table" : 15,
	"rustic:jungle_table" : 15,
	"rustic:olive_table" : 15,
	"rustic:ironwood_table" : 15,
	"rustic:barrel" : 11,
	"rustic:liquid_barrel" : 11,
	"rustic:brewing_barrel" : 11,
	"rustic:crushing_tub" : 4,
	"rusticbopwoods:sacred_oak_chair" : 12,
	"rusticbopwoods:cherry_chair" : 12,
	"rusticbopwoods:umbran_chair" : 12,
	"rusticbopwoods:fir_chair" : 12,
	"rusticbopwoods:ethereal_chair" : 12,
	"rusticbopwoods:magic_chair" : 12,
	"rusticbopwoods:mangrove_chair" : 12,
	"rusticbopwoods:palm_chair" : 12,
	"rusticbopwoods:redwood_chair" : 12,
	"rusticbopwoods:willow_chair" : 12,
	"rusticbopwoods:pine_chair" : 12,
	"rusticbopwoods:hellbark_chair" : 12,
	"rusticbopwoods:jacaranda_chair" : 12,
	"rusticbopwoods:mahogany_chair" : 12,
	"rusticbopwoods:ebony_chair" : 12,
	"rusticbopwoods:eucalyptus_chair" : 12,
	"rusticbopwoods:sacred_oak_table" : 15,
	"rusticbopwoods:cherry_table" : 15,
	"rusticbopwoods:umbran_table" : 15,
	"rusticbopwoods:fir_table" : 15,
	"rusticbopwoods:ethereal_table" : 15,
	"rusticbopwoods:magic_table" : 15,
	"rusticbopwoods:mangrove_table" : 15,
	"rusticbopwoods:palm_table" : 15,
	"rusticbopwoods:redwood_table" : 15,
	"rusticbopwoods:willow_table" : 15,
	"rusticbopwoods:pine_table" : 15,
	"rusticbopwoods:hellbark_table" : 15,
	"rusticbopwoods:jacaranda_table" : 15,
	"rusticbopwoods:mahogany_table" : 15,
	"rusticbopwoods:ebony_table" : 15,
	"rusticbopwoods:eucalyptus_table" : 15
};

for recipe, dmg in recipesCarpenter {
	builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, dmg);
}
//convertRecipeByItem(builderCarpenter, <rustic:cabinet>, art_tools.framing_hammer, 10);

builderCarpenter.builder()
	.setCopy(Copy.byName("rustic:crop_stake")
		         .replaceOutput(<rustic:crop_stake> * 3))
	.addTool(art_tools.handsaw, 3)
	.create();
Disabling.markForRemove("rustic:crop_stake");

val recipesMason as int[IIngredient][string] = {
	"rustic:gargoyle" : {
		<ore:artisansCarver> : 16
	},
	"rustic:vase" : {
		art_tools["chisel"] : 8
	},
	"rustic:evaporating_basin" : {
		art_tools["chisel"] : 15
	},
	"rustic:condenser" : {
		art_tools["trowel"] : 12
	},
	"rustic:retort" : {
		art_tools["trowel"] : 13
	},
	"rustic:condenser_advanced" : {
		art_tools["trowel"] : 18
	},
	"rustic:retort_advanced" : {
		art_tools["trowel"] : 15
	}
};

for recipe, toolDmg in recipesMason {
	for tool, dmg in toolDmg {
		builderMason.convertRecipe(recipe, tool, dmg);
	}
}