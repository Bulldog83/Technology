
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val basicBuilder = builderBasic.builder();

val hammerRecipes as int[IItemStack][IOreDictEntry] = {
	<ore:obsidian> : {
		<primal:obsidian_shard> : 4
	},
	<ore:blockLimestone> : {
		<primal:carbonate_slack> : 4
	},
	<ore:stoneFerro> : {
		<primal:ferro_slack> : 4
	},
	<ore:blockGlowstone> : {
		<minecraft:glowstone_dust> : 4
	}
};

for recipe in [
	"primal:obsidian_shard.*",
	"primal:carbonate_slack.*",
	"primal:ferro_slack.*",
	"primal:glowstone_dust.*",
	"primal:mortar.*",
	"primal:bark_.*",
	"immersiveengineering:tool/hammer"
] as string[] {
	Disabling.markForRemove(recipe);
}

for material, results in hammerRecipes {
	for result, amount in results {
		basicBuilder
			.setShapeless([material])
			.addOutput(result * amount)
			.addTool(art_tools.hammer, 1)
			.create();
	}
}
 
val sand = <ore:pileSand>;
val ore_ash = <ore:ash>;
val mortar_ingredient = sand | ore_ash | ore_slag;
val gravel = <ore:pileGravel>;

basicBuilder
	.setShaped([
		[mortar_ingredient,ore_clay,mortar_ingredient],
		[ore_clay,mortar_ingredient,ore_clay],
		[mortar_ingredient,ore_clay,mortar_ingredient]
	])
	.setFluid(<liquid:water> * 1000)
	.addOutput(<primal:mortar> * 16)
	.create();

val soil = <tconstruct:soil>;

Disabling.markForRemove(soil);
basicBuilder
	.setShaped([
		[gravel,mortar_ingredient,gravel],
		[mortar_ingredient,ore_clay,mortar_ingredient],
		[gravel,mortar_ingredient,gravel]
	])
	.setFluid(<liquid:water> * 500)
	.addOutput(soil * 6)
	.create();

val hemp_fabric = <ore:fabricHemp>;
val hemp_fiber = <ore:fiberHemp>;

Disabling.markForRemove(hemp_fabric);
recipes.addShaped("hemp_fabric", <camping:parts>, [
	[hemp_fiber,hemp_fiber,hemp_fiber],
	[hemp_fiber,hemp_fiber,hemp_fiber],
	[hemp_fiber,hemp_fiber,hemp_fiber]]);

val fiber_hemp = hemp_fiber.firstItem;
val hemp_crop = <ore:cropHemp>;
mods.betterwithmods.Mill.remove([<betterwithmods:material:3> * 3]);
mods.betterwithmods.Mill.addRecipe([hemp_crop], [fiber_hemp * 3]);
mods.appliedenergistics2.Grinder.addRecipe(fiber_hemp * 3, hemp_crop, 6);
mods.horsepower.Grindstone.add(hemp_crop, fiber_hemp * 3, 12, false);

recipes.addShaped("immersiveengineering_tool_hammer", <immersiveengineering:tool>, [
	[ore_string | ore_cordage,ore_ingot_iron,null],
	[ore_ingot_iron,ore_stick,null],
	[null,null,ore_stick]
]);

val hoe_wood = <tconstruct:mattock>.withTag({TinkerData:{Materials:["wood","wood","wood"]}});
val axe_wood = <tconstruct:hatchet>.withTag({TinkerData:{Materials:["wood","wood","wood"]}});
val pick_wood = <tconstruct:pickaxe>.withTag({TinkerData:{Materials:["wood","wood","wood"]}});

recipes.replaceAllOccurences(<minecraft:wooden_pickaxe>, pick_wood);
recipes.replaceAllOccurences(<minecraft:wooden_axe>, axe_wood);
recipes.replaceAllOccurences(<minecraft:wooden_hoe>, hoe_wood);

val dustsOre as IOreDictEntry[string][string] = {
	"iron" : {
		"dust" : <ore:dustIron>,
		"small" : <ore:dustSmallIron>,
		"tiny" : <ore:dustTinyIron>
	},
	"gold" : {
		"dust" : <ore:dustGold>,
		"small" : <ore:dustSmallGold>,
		"tiny" : <ore:dustTinyGold>
	},
	"coal" : {
		"dust" : <ore:dustCoal>,
		"small" : <ore:dustSmallCoal>,
		"tiny" : <ore:dustTinyCoal>
	},
	"diamond" : {
		"dust" : <ore:dustDiamond>,
		"small" : <ore:dustSmallDiamond>,
		"tiny" : <ore:dustTinyDiamond>
	},
	"emerald" : {
		"dust" : <ore:dustEmerald>,
		"small" : <ore:dustSmallEmerald>,
		"tiny" : <ore:dustTinyEmerald>
	},
	"lapis" : {
		"dust" : <ore:dustLapis>,
		"small" : <ore:dustSmallLazurite>,
		"tiny" : <ore:dustTinyLapis>
	},
	"redstone" : {
		"dust" : <ore:dustRedstone>,
		"small" : <ore:dustSmallRedstone>,
		"tiny" : <ore:dustTinyRedstone>
	}
};

val dustsItem as IItemStack[string][string] = {
	"iron" : {
		"dust" : <techreborn:dust:27>,
		"small" : <techreborn:smalldust:27>,
		"tiny" : <terraqueous:item_main:202>
	},
	"gold" : {
		"dust" : <thermalfoundation:material:1>,
		"small" : <techreborn:smalldust:24>,
		"tiny" : <terraqueous:item_main:204>
	},
	"coal" : {
		"dust" : <thermalfoundation:material:768>,
		"small" : <techreborn:smalldust:13>,
		"tiny" : <terraqueous:item_main:206>
	},
	"diamond" : {
		"dust" : <mekanism:otherdust>,
		"small" : <techreborn:smalldust:16>,
		"tiny" : <terraqueous:item_main:208>
	},
	"emerald" : {
		"dust" : <techreborn:dust:18>,
		"small" : <techreborn:smalldust:18>,
		"tiny" : <terraqueous:item_main:210>
	},
	"lapis" : {
		"dust" : <enderio:item_material:32>,
		"small" : <techreborn:smalldust:28>,
		"tiny" : <terraqueous:item_main:212>
	},
	"redstone" : {
		"dust" : <minecraft:redstone>,
		"small" : <techreborn:smalldust:61>,
		"tiny" : <terraqueous:item_main:213>
	}
};

for ore in [
	<ore:dustIron>,
	<ore:dustGold>,
	<ore:dustCoal>,
	<ore:dustDiamond>,
	<ore:dustEmerald>,
	<ore:dustLapis>,
	<ore:dustLazurite>,
	<ore:dustSmallIron>,
	<ore:dustSmallGold>,
	<ore:dustSmallCoal>,
	<ore:dustSmallDiamond>,
	<ore:dustSmallEmerald>,
	<ore:dustSmallLazurite>,
	<ore:dustSmallRedstone>
] as IOreDictEntry[] {
	Disabling.markForRemove(ore);
}

Disabling.markForRemove("terraqueous:dust-redstone");
Disabling.markForRemove("techreborn:redstone");

for material, dusts in dustsOre {
	recipes.addShapeless(material ~ "_" ~ dusts.dust.name, dustsItem[material].dust, [dusts.small,dusts.small,dusts.small,dusts.small]);
	recipes.addShapeless(material ~ "_" ~ dusts.small.name, dustsItem[material].small, [dusts.tiny,dusts.tiny,dusts.tiny,dusts.tiny]);
	recipes.addShapeless(material ~ "_" ~ dusts.small.name ~ "_x4", dustsItem[material].small * 4, [dusts.dust]);
	recipes.addShapeless(material ~ "_" ~ dusts.tiny.name ~ "_x4", dustsItem[material].tiny * 4, [dusts.small]);
}

val hide_dry = <ore:hideDry>;
val hide_scoured = <betterwithmods:material:7>;
mods.betterwithmods.Mill.addRecipe([hide_dry], [hide_scoured]);
mods.horsepower.Grindstone.add(hide_dry, hide_scoured, 16, false);
mods.horsepower.Grindstone.add(item_leather, hide_scoured, 16, false);

val scraps = <terraqueous:item_main:100>;
Disabling.markForRemove(item_leather);
basicBuilder
	.setShapeless([scraps,scraps,scraps,scraps])
	.addOutput(<betterwithmods:material:31> * 2)
	.addTool(art_tools.needle, 1)
	.create();

val tannin = <liquid:tannin> * 250;
	
mods.thermalexpansion.Transposer.addFillRecipe(<betterwithmods:material:6>, hide_scoured, tannin, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:hide_tanned>, <primal:hide_dried>, tannin, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:pigman_hide_tanned>, <primal:pigman_hide_dried>, tannin, 2000);

recipes.addShapeless("minecraft_lapis_block_to_gem", <minecraft:dye:4> * 9, [<ore:blockLapis>]);

basicBuilder
	.setShapeless([ore_dust_wood,ore_dust_wood])
	.addOutput(<minecraft:paper>)
	.setFluid(<liquid:water> * 500)
	.create();

//Cotton	
Disabling.markForRemove(item_string);
Disabling.markForRemove(item_wool);

val cotton = <ore:oreCotton>;
val fiber_valus = <primal:valus_fiber>;

recipes.addShapeless("fiber_to_string", item_string, [fiber_valus,fiber_valus,fiber_valus]);
recipes.addShaped("cotton_to_string", item_string, [[cotton,cotton]]);
recipes.addShaped("strings_to_wool", item_wool, [[ore_string,ore_string],[ore_string,ore_string]]);
recipes.addShaped("cotton_to_wool", item_wool, [[cotton,cotton,cotton],[cotton,cotton,cotton]]);

//Wicker
var wicker = <betterwithmods:wicker>;
var cane = <ore:itemCane>;

Disabling.markForRemove(wicker);
Disabling.markForRemove(<minecraft:reeds>);

recipes.addShapeless("block_to_wicker", wicker * 4, [<betterwithmods:aesthetic:12>]);
recipes.addShaped("cane_to_wicker", wicker * 4, [[cane,cane,cane],[cane,cane,cane]]);

//Books
val cover = <ore:itemCover>;
val book = <minecraft:book>;

Disabling.markForRemove(book);
recipes.addShaped("minecraft_book", book, [
	[cover,cover,item_string],[item_paper,item_paper,item_paper]
]);

//Flint
val flint = <minecraft:flint>;

Disabling.markForRemove(flint);
recipes.addShapeless("block_to_flint", flint * 9, [<betterwithmods:aesthetic:5>]);
basicBuilder
	.setShapeless([<minecraft:gravel>])
	.addOutput(flint * 2)
	.addTool(art_tools.sifter, 1)
	.setExtraOutputOne(<minecraft:sand>, 0.05)
	.create();

val flint_and_steel = <minecraft:flint_and_steel>;
val flaked_flint    = <primal:flint_knapp>;

Disabling.markForRemove(flint_and_steel);
recipes.addShapeless("flint_and_steel", flint_and_steel, [ore_ring_iron, flaked_flint]);

val charcoal = <ore:charcoal>;
recipes.addShapeless("charcoal_block", <thermalfoundation:storage_resource>, [charcoal,charcoal,charcoal,charcoal,charcoal,charcoal,charcoal,charcoal,charcoal]);

val minecraft_brick = <minecraft:brick>;
val tconstruct_brick = <tconstruct:materials>;
val clay_brick = <betterwithmods:unfired_pottery:4>;

mods.primal.Hibachi.removeRecipe("vanilla_brick");
mods.primal.Hibachi.addRecipe("minecraft_brick", 12, clay_brick, minecraft_brick);
mods.primal.Hibachi.addRecipe("tconstruct_brick", 12, soil, tconstruct_brick);
mods.thermalexpansion.RedstoneFurnace.addRecipe(minecraft_brick, clay_brick, 2000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(tconstruct_brick, soil, 2000);
mods.mekanism.smelter.addRecipe(clay_brick, minecraft_brick);
mods.mekanism.smelter.addRecipe(soil, tconstruct_brick);

basicBuilder
	.setShapeless([<minecraft:clay_ball>,sand])
	.addOutput(clay_brick)
	.addTool(art_tools.trowel, 1)
	.setFluid(<liquid:water> * 50)
	.create();
Disabling.markForRemove(clay_brick);