
#priority 100

import crafttweaker.item.IItemStack;

import mods.artisanworktables.builder.Copy;

val builder = builderMason.builder();

val roofsIron as IItemStack[string] = {
	"notenoughroofs:iron_tiles_brick_recipe" : <notenoughroofs:iron_tiles_brick>,
	"notenoughroofs:iron_tiles_brick_conn_recipe" : <notenoughroofs:iron_tiles_conn_brick>,
	"notenoughroofs:iron_tiles_planks_acacia_recipe" : <notenoughroofs:iron_tiles_planks_acacia>,
	"notenoughroofs:iron_tiles_planks_acacia_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_acacia>,
	"notenoughroofs:iron_tiles_planks_big_oak_recipe" : <notenoughroofs:iron_tiles_planks_big_oak>,
	"notenoughroofs:iron_tiles_planks_big_oak_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_big_oak>,
	"notenoughroofs:iron_tiles_planks_birch_recipe" : <notenoughroofs:iron_tiles_planks_birch>,
	"notenoughroofs:iron_tiles_planks_birch_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_birch>,
	"notenoughroofs:iron_tiles_planks_jungle_recipe" : <notenoughroofs:iron_tiles_planks_jungle>,
	"notenoughroofs:iron_tiles_planks_jungle_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_jungle>,
	"notenoughroofs:iron_tiles_planks_oak_recipe" : <notenoughroofs:iron_tiles_planks_oak>,
	"notenoughroofs:iron_tiles_planks_oak_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_oak>,
	"notenoughroofs:iron_tiles_planks_spruce_recipe" : <notenoughroofs:iron_tiles_planks_spruce>,
	"notenoughroofs:iron_tiles_planks_spruce_conn_recipe" : <notenoughroofs:iron_tiles_conn_planks_spruce>,
	"notenoughroofs:iron_tiles_stonebrick_recipe" : <notenoughroofs:iron_tiles_stonebrick>,
	"notenoughroofs:iron_tiles_stonebrick_conn_recipe" : <notenoughroofs:iron_tiles_conn_stonebrick>
};
val roofsCopper as IItemStack[string] = {
	"notenoughroofs:copper_tiles_brick_recipe" : <notenoughroofs:copper_tiles_brick>,
	"notenoughroofs:copper_tiles_brick_conn_recipe" : <notenoughroofs:copper_tiles_conn_brick>,
	"notenoughroofs:copper_tiles_planks_acacia_recipe" : <notenoughroofs:copper_tiles_planks_acacia>,
	"notenoughroofs:copper_tiles_planks_acacia_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_acacia>,
	"notenoughroofs:copper_tiles_planks_big_oak_recipe" : <notenoughroofs:copper_tiles_planks_big_oak>,
	"notenoughroofs:copper_tiles_planks_big_oak_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_big_oak>,
	"notenoughroofs:copper_tiles_planks_birch_recipe" : <notenoughroofs:copper_tiles_planks_birch>,
	"notenoughroofs:copper_tiles_planks_birch_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_birch>,
	"notenoughroofs:copper_tiles_planks_jungle_recipe" : <notenoughroofs:copper_tiles_planks_jungle>,
	"notenoughroofs:copper_tiles_planks_jungle_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_jungle>,
	"notenoughroofs:copper_tiles_planks_oak_recipe" : <notenoughroofs:copper_tiles_planks_oak>,
	"notenoughroofs:copper_tiles_planks_oak_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_oak>,
	"notenoughroofs:copper_tiles_planks_spruce_recipe" : <notenoughroofs:copper_tiles_planks_spruce>,
	"notenoughroofs:copper_tiles_planks_spruce_conn_recipe" : <notenoughroofs:copper_tiles_conn_planks_spruce>,
	"notenoughroofs:copper_tiles_stonebrick_recipe" : <notenoughroofs:copper_tiles_stonebrick>,
	"notenoughroofs:copper_tiles_stonebrick_conn_recipe" : <notenoughroofs:copper_tiles_conn_stonebrick>
};
val roofsBrick as IItemStack[string] = {
	"notenoughroofs:slate_tiles_brick_recipe" : <notenoughroofs:slate_tiles_brick>,
	"notenoughroofs:slate_tiles_brick_conn_recipe" : <notenoughroofs:slate_tiles_conn_brick>,
	"notenoughroofs:slate_tiles_planks_acacia_recipe" : <notenoughroofs:slate_tiles_planks_acacia>,
	"notenoughroofs:slate_tiles_planks_acacia_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_acacia>,
	"notenoughroofs:slate_tiles_planks_big_oak_recipe" : <notenoughroofs:slate_tiles_planks_big_oak>,
	"notenoughroofs:slate_tiles_planks_big_oak_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_big_oak>,
	"notenoughroofs:slate_tiles_planks_birch_recipe" : <notenoughroofs:slate_tiles_planks_birch>,
	"notenoughroofs:slate_tiles_planks_birch_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_birch>,
	"notenoughroofs:slate_tiles_planks_jungle_recipe" : <notenoughroofs:slate_tiles_planks_jungle>,
	"notenoughroofs:slate_tiles_planks_jungle_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_jungle>,
	"notenoughroofs:slate_tiles_planks_oak_recipe" : <notenoughroofs:slate_tiles_planks_oak>,
	"notenoughroofs:slate_tiles_planks_oak_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_oak>,
	"notenoughroofs:slate_tiles_planks_spruce_recipe" : <notenoughroofs:slate_tiles_planks_spruce>,
	"notenoughroofs:slate_tiles_planks_spruce_conn_recipe" : <notenoughroofs:slate_tiles_conn_planks_spruce>,
	"notenoughroofs:slate_tiles_stonebrick_recipe" : <notenoughroofs:slate_tiles_stonebrick>,
	"notenoughroofs:slate_tiles_stonebrick_conn_recipe" : <notenoughroofs:slate_tiles_conn_stonebrick>,
	"notenoughroofs:terracotta_brick_recipe" : <notenoughroofs:terracotta_brick>,
	"notenoughroofs:terracotta_brick_conn_recipe" : <notenoughroofs:terracotta_conn_brick>,
	"notenoughroofs:terracotta_planks_acacia_recipe" : <notenoughroofs:terracotta_planks_acacia>,
	"notenoughroofs:terracotta_planks_acacia_conn_recipe" : <notenoughroofs:terracotta_conn_planks_acacia>,
	"notenoughroofs:terracotta_planks_big_oak_recipe" : <notenoughroofs:terracotta_planks_big_oak>,
	"notenoughroofs:terracotta_planks_big_oak_conn_recipe" : <notenoughroofs:terracotta_conn_planks_big_oak>,
	"notenoughroofs:terracotta_planks_birch_recipe" : <notenoughroofs:terracotta_planks_birch>,
	"notenoughroofs:terracotta_planks_birch_conn_recipe" : <notenoughroofs:terracotta_conn_planks_birch>,
	"notenoughroofs:terracotta_planks_jungle_recipe" : <notenoughroofs:terracotta_planks_jungle>,
	"notenoughroofs:terracotta_planks_jungle_conn_recipe" : <notenoughroofs:terracotta_conn_planks_jungle>,
	"notenoughroofs:terracotta_planks_oak_recipe" : <notenoughroofs:terracotta_planks_oak>,
	"notenoughroofs:terracotta_planks_oak_conn_recipe" : <notenoughroofs:terracotta_conn_planks_oak>,
	"notenoughroofs:terracotta_planks_spruce_recipe" : <notenoughroofs:terracotta_planks_spruce>,
	"notenoughroofs:terracotta_planks_spruce_conn_recipe" : <notenoughroofs:terracotta_conn_planks_spruce>,
	"notenoughroofs:terracotta_stonebrick_recipe" : <notenoughroofs:terracotta_stonebrick>,
	"notenoughroofs:terracotta_stonebrick_conn_recipe" : <notenoughroofs:terracotta_conn_stonebrick>
};

for recipe, roof in roofsIron {
	builder
		.setCopy(
			Copy.byName(recipe)
				.replaceInput(<minecraft:iron_ingot>, ore_plate_iron)
		)
		.addTool(art_tools.framing_hammer, 12)
		.setMirrored()
		.create();
	Disabling.markForRemove(roof);
}
for recipe, roof in roofsCopper {
	builder
		.setCopy(
			Copy.byName(recipe)
				.replaceInput(<notenoughroofs:copper_ingot>, <ore:plateCopper>)
		)
		.addTool(art_tools.framing_hammer, 12)
		.setMirrored()
		.create();
	Disabling.markForRemove(roof);
}
for recipe, roof in roofsBrick {
	builder
		.setCopy(Copy.byName(recipe))
		.addTool(art_tools.framing_hammer, 12)
		.setMirrored()
		.create();
	Disabling.markForRemove(roof);
}

Disabling.removeRecipes();