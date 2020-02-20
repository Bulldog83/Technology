
#priority 100

import mods.botania.ElvenTrade;

var item_ender_pearl = <minecraft:ender_pearl>;

furnace.remove(item_ender_pearl);
Disabling.markForRemove(<endercrop:ender_seeds>);
ElvenTrade.addRecipe([<endercrop:ender_seeds>], [<ore:enderpearl>]);
ElvenTrade.addRecipe([<endercrop:ender_seeds>], [<ore:dustEnder>]);
ElvenTrade.removeRecipe(item_ender_pearl);

var ender_pearl = <ore:enderpearl>;
var ender_nugget = <ore:nuggetEnder>;
recipes.addShaped("ender_pearl_from_nugget", item_ender_pearl, [
	[ender_nugget,ender_nugget,ender_nugget],
	[ender_nugget,ender_nugget,ender_nugget],
	[ender_nugget,ender_nugget,ender_nugget]
]);
recipes.addShapeless("ender_nugget_from_pearl", <enderio:item_material:62> * 9, [ender_pearl]);

var dust_ender = <ore:dustEnder>;
var dust_ender_small = <ore:dustSmallEnder>;
var dust_ender_tiny = <ore:dustTinyEnder>;
var item_dust_ender = <techreborn:dust:20>;

Disabling.markForRemove(dust_ender);
recipes.addShapeless("ender_dust", item_dust_ender, [dust_ender_small,dust_ender_small,dust_ender_small,dust_ender_small]);
recipes.addShapeless("ender_dust_small", <techreborn:smalldust:20>, [dust_ender_tiny,dust_ender_tiny,dust_ender_tiny,dust_ender_tiny]);
recipes.addShapeless("ender_dust_tiny", <terraqueous:item_main:200> * 4, [dust_ender_small]);

mods.thermalexpansion.RedstoneFurnace.addRecipe(item_ender_pearl, item_dust_ender, 3600);
mods.thermalexpansion.Compactor.addPressRecipe(item_ender_pearl,  item_dust_ender, 4000);
for item in <ore:sand>.items {
	mods.thermalexpansion.InductionSmelter.addRecipe(item_ender_pearl * 2, item_dust_ender, item, 4800);
}
mods.mekanism.smelter.addRecipe(item_dust_ender, item_ender_pearl);
mods.techreborn.compressor.addRecipe(item_ender_pearl, dust_ender, 1800, 4);
mods.nuclearcraft.pressurizer.addRecipe(item_dust_ender, item_ender_pearl, 600);

Disabling.removeRecipes();