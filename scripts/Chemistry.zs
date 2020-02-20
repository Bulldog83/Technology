
#priority 100

import crafttweaker.item.IItemStack;

import mods.artisanworktables.builder.Copy;

val builder = builderChemist.builder();

builderChemist.convertRecipe("thermalfoundation:dust_pyrotheum", art_tools.burner, 3);
builderChemist.convertRecipe("thermalfoundation:dust_aerotheum", art_tools.burner, 3);
builderChemist.convertRecipe("thermalfoundation:dust_petrotheum", art_tools.burner, 3);
builderChemist.convertRecipe("thermalfoundation:fertilizer", art_tools.beaker, 1);
builderChemist.convertRecipe("thermalfoundation:fertilizer_1", art_tools.beaker, 2);
builderChemist.convertRecipe("thermalfoundation:fertilizer_2", art_tools.beaker, 5);
builderChemist.convertRecipe("thermalfoundation:fertilizer_3", art_tools.beaker, 7);
builderChemist.convertRecipe("thermalfoundation:material_4", art_tools.beaker, 2);

builderChemist.convertRecipe(<botania:fertilizer>, art_tools.beaker, 5);
builderChemist.convertRecipe(<enderio:item_material:51>, art_tools.burner, 3);
builderChemist.convertRecipe(<enderio:item_material:52>, art_tools.burner, 4);
builderChemist.convertRecipe(<enderio:item_material:38>, art_tools.burner, 2);
builderChemist.convertRecipe(<enderio:item_material:67>, art_tools.burner, 7);

val dust_platinum = metalOres.platinum.dust;
val dust_electrum = metalOres.electrum.dust;
val dust_copper = metalOres.copper.dust;
val dust_silver = metalOres.silver.dust;
val dust_gold = metalOres.gold.dust;
val dust_lead = metalOres.lead.dust;
val dust_tin = metalOres.tin.dust;
val dust_coal = <ore:dustCoal> | <ore:dustCharcoal>;
val dust_sulfur = <ore:dustSulfur>;
val dust_saltpeter = <ore:dustSaltpeter>;

builder
	.setCopy(Copy.byName("thermalfoundation:dust_cryotheum")
				 .replaceInput(<minecraft:snowball>, <ore:dustElectrotine>))
	.addTool(art_tools.burner, 3)
	.create();
builder
	.setShapeless([dust_copper,dust_copper,dust_copper,dust_silver])
	.setFluid(<liquid:redstone> * 1000)
	.addOutput(<thermalfoundation:material:101> * 4)
	.addTool(art_tools.beaker, 5)
	.create();
builder
	.setShapeless([dust_tin,dust_tin,dust_tin,dust_silver])
	.setFluid(<liquid:glowstone> * 1000)
	.addOutput(<thermalfoundation:material:102> * 4)
	.addTool(art_tools.beaker, 5)
	.create();
builder
	.setShapeless([dust_lead,dust_lead,dust_lead,dust_platinum])
	.setFluid(<liquid:ender> * 1000)
	.addOutput(<thermalfoundation:material:103> * 4)
	.addTool(art_tools.beaker, 5)
	.create();
builder
	.setShapeless([dust_gold,dust_silver])
	.setFluid(<liquid:redstone> * 1000)
	.addOutput(<redstonearsenal:material> * 2)
	.addTool(art_tools.beaker, 5)
	.create();
builder
	.setShapeless([dust_electrum,dust_electrum])
	.setFluid(<liquid:redstone> * 1000)
	.addOutput(<redstonearsenal:material> * 2)
	.addTool(art_tools.beaker, 5)
	.create();
builder
	.setShapeless([dust_saltpeter,dust_saltpeter,dust_sulfur,dust_coal])
	.addOutput(<minecraft:gunpowder>)
	.addTool(art_tools.beaker, 1)
	.create();
	
for recipe in [
	"thermalfoundation:dust_cryotheum",
	"thermalfoundation:dust_signalum",
	"thermalfoundation:dust_lumium",
	"thermalfoundation:dust_enderium"
] as string[] {
	Disabling.markForRemove(recipe);
}
for item in [
	<redstonearsenal:material>,
	<minecraft:gunpowder>
] as IItemStack[] {
	Disabling.markForRemove(item);
}

Disabling.removeRecipes();