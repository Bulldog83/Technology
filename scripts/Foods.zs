
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.thermalexpansion.Pulverizer;
import mods.horsepower.Grindstone;
import mods.betterwithmods.Mill;
import mods.immersiveengineering.Crusher;
import mods.mekanism.crusher as MCrusher;
import mods.betterwithmods.Cauldron;
import mods.nuclearcraft.manufactory;
import mods.appliedenergistics2.Grinder;
import mods.artisanworktables.builder.Copy;

import scripts.globals.Utility.strToName;

static IE_CRUSHER_ENERGY as int = 3200;
static TE_PULVERIZER_ENERGY as int = 2000;
static HP_GRINDSTONE_TIME as int = 12;

<ore:foodSalt>.remove(<mekanism:saltblock>);

val flour as IItemStack[] = [
	<enderio:item_material:21>,
	<primal:wheat_ground>,
	<betterwithmods:raw_pastry:3>,
	<natura:materials:2>,
	<horsepower:flour>,
	<natura:materials:1>
];

for item in flour {
	Disabling.markForRemove(item);
	MCrusher.removeRecipe(item);
	Crusher.removeRecipe(item);
	Mill.remove([item]);
	Grindstone.remove(item);
	manufactory.removeRecipeWithOutput(item);
	
	ore_flour.add(item);
	furnace.remove(item_bread, item);
}

val flourRecipes as IItemStack[IItemStack] = {
	<minecraft:wheat> : <horsepower:flour>,
	<biomesoplenty:double_plant:3> : <horsepower:flour>,
	<natura:materials> : <natura:materials:1>,
	<biomesoplenty:plant_1:11> : <natura:materials:1>
};

for grain, flour in flourRecipes {
	Pulverizer.removeRecipe(grain);
	Grinder.removeRecipe(grain);
	
	Pulverizer.addRecipe(flour, grain, TE_PULVERIZER_ENERGY);
	Grindstone.add(grain, flour, HP_GRINDSTONE_TIME);
	Crusher.addRecipe(flour, grain, IE_CRUSHER_ENERGY);
	MCrusher.addRecipe(grain, flour);
	recipes.addShaped(strToName("primal_" ~ flour.displayName ~ "_from_" ~ grain.definition.owner ~ "_" ~ grain.displayName), flour, [[ore_rock],[grain],[stone_basin]]);
	Mill.addRecipe([grain], [flour]);
	manufactory.addRecipe(grain, flour);
	Grinder.addRecipe(flour, grain, 8);
}

for item in [
	<minecraft:cake>,
	<minecraft:cookie>,
	<minecraft:mushroom_stew>,
	<minecraft:rabbit_stew>,
	<minecraft:pumpkin_pie>,
	<horsepower:dough>,
	<natura:soups:*>,
	<betterwithmods:raw_pastry>,
	<betterwithmods:raw_scrambled_egg>,
	<biomesoplenty:shroompowder>
] as IItemStack[] {
	Disabling.markForRemove(item);
}

recipes.addShapeless("broken_egg", <betterwithmods:raw_egg>, [<minecraft:egg>]);

val soupDef = <natura:soups>.definition;
val bowlDef = <natura:empty_bowls>.definition;
for i in 0 to 4 {
	Cauldron.addUnstoked([bowlDef.makeStack(i), <minecraft:milk_bucket>, <minecraft:brown_mushroom> * 3, ore_salt], [soupDef.makeStack(i)]);
	Cauldron.addUnstoked([bowlDef.makeStack(i), <natura:nether_glowshroom>, <natura:nether_glowshroom:1>, <natura:nether_glowshroom:2>], [soupDef.makeStack(i + 5)]);
}
Cauldron.addUnstoked([<minecraft:bowl>, <natura:nether_glowshroom>, <natura:nether_glowshroom:1>, <natura:nether_glowshroom:2>], [<natura:soups:4>]);
Cauldron.addUnstoked([<minecraft:bowl>, <minecraft:milk_bucket>, <minecraft:wheat>, <ore:dustEnder>], [<enderio:item_ender_food>]);

val builder = builderChef.builder();
builder
	.setShapeless([ore_flour, ore_salt])
	.addOutput(<horsepower:dough>)
	.setFluid(<liquid:water> * 250)
	.create();
	
builder
	.setCopy(
		Copy.byOutput([<betterwithmods:raw_pastry>])
			.replaceInput(<minecraft:milk_bucket>, ore_salt)
	)
	.setFluid(<liquid:milk> * 500)
	.create();
	
builder
	.setCopy(
		Copy.byOutput([<betterwithmods:raw_scrambled_egg>])
			.replaceInput(<minecraft:milk_bucket>, ore_salt)
	)
	.setFluid(<liquid:milk> * 100)
	.create();
	
builder
	.setCopy(
		Copy.byOutput([<biomesoplenty:shroompowder>])
	)
	.addTool(art_tools.mortar, 1)
	.create();

val foodsHandmade as IItemStack[] = [
	<minecraft:fermented_spider_eye>,
	<biomesoplenty:ricebowl>,
	<betterwithmods:raw_pastry:1>,
	<betterwithmods:raw_pastry:2>,
	<betterwithmods:raw_pastry:4>,
	<betterwithmods:raw_omelet>,
	<betterwithmods:raw_kebab>,
	<betterwithmods:beef_dinner>,
	<betterwithmods:beef_potatoes>,
	<betterwithmods:pork_dinner>,
	<betterwithmods:tasty_sandwich>,
	<betterwithmods:ham_and_eggs>
];

for food in foodsHandmade {
	builder
		.setCopy(
			Copy.byOutput([food])
		)
		.addTool(art_tools.cutting_board, 1)
		.create();
	
	Disabling.markForRemove(food);
}