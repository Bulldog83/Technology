
#priority 110

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.artisanworktables.builder.Copy;

import scripts.globals.Utility.strToName;

val basicBuilder = builderBasic.builder();
val carpenterBuilder = builderCarpenter.builder();
val blacksmithBuilder = builderBlacksmith.builder();

val slabItems as IOreDictEntry[IItemStack] = {
	<primal:thin_slab_oak> : <ore:slabOak>,
	<primal:thin_slab_spruce> : <ore:slabSpruce>,
	<primal:thin_slab_birch> : <ore:slabBirch>,
	<primal:thin_slab_jungle> : <ore:slabJungle>,
	<primal:thin_slab_acacia> : <ore:slabAcacia>,
	<primal:thin_slab_bigoak> : <ore:slabDarkOak>,
	<primal:thin_slab_ironwood> : <ore:slabIronwood>,
	<primal:thin_slab_yew> : <ore:slabYew>,
	<primal:thin_slab_lacquer> : <ore:slabLacquer>,
	<primal:thin_slab_corypha> : <ore:slabCorypha>
};

val thinSlabItems as IItemStack[string][IItemStack] = {
	<primal:thin_slab_oak> : {
		"slat" : <primal:slat_oak>,
		"grate" : <primal:grate_oak>,
		"lid" : <primal:barrel_oak_lid>
	},
	<primal:thin_slab_spruce> : {
		"slat" : <primal:slat_spruce>,
		"grate" : <primal:grate_spruce>,
		"lid" : <primal:barrel_spruce_lid>
	},
	<primal:thin_slab_birch> : {
		"slat" : <primal:slat_birch>,
		"grate" : <primal:grate_birch>,
		"lid" : <primal:barrel_birch_lid>
	},
	<primal:thin_slab_jungle> : {
		"slat" : <primal:slat_jungle>,
		"grate" : <primal:grate_jungle>,
		"lid" : <primal:barrel_jungle_lid>
	},
	<primal:thin_slab_acacia> : {
		"slat" : <primal:slat_acacia>,
		"grate" : <primal:grate_acacia>,
		"lid" : <primal:barrel_acacia_lid>
	},
	<primal:thin_slab_bigoak> : {
		"slat" : <primal:slat_bigoak>,
		"grate" : <primal:grate_bigoak>,
		"lid" : <primal:barrel_dark_oak_lid>
	},
	<primal:thin_slab_ironwood> : {
		"slat" : <primal:slat_ironwood>,
		"grate" : <primal:grate_ironwood>,
		"lid" : <primal:barrel_ironwood_lid>
	},
	<primal:thin_slab_yew> : {
		"slat" : <primal:slat_yew>,
		"grate" : <primal:barrel_yew_lid>,
		"lid" : null
	},
	<primal:thin_slab_lacquer> : {
		"slat" : <primal:slat_lacquer>,
		"grate" : <primal:grate_lacquer>,
		"lid" : <primal:barrel_lacquer_lid>
	},
	<primal:thin_slab_corypha> : {
		"slat" : <primal:slat_corypha>,
		"grate" : <primal:grate_corypha>,
		"lid" : <primal:barrel_corypha_lid>
	}
};

for slab, items in thinSlabItems {
	Disabling.markForRemove(slab);
	Disabling.markForRemove(items.slat);
	Disabling.markForRemove(items.grate);
	
	carpenterBuilder
		.setShapeless([slabItems[slab]])
		.addOutput(slab * 2)
		.setExtraOutputOne(item_dust_wood, 1.0)
		.addTool(art_tools.handsaw, 1)
		.create();
	carpenterBuilder
		.setShapeless([slab])
		.addOutput(items.slat * 2)
		.setExtraOutputOne(item_dust_wood, 1.0)
		.addTool(art_tools.handsaw, 1)
		.create();
	carpenterBuilder
		.setShaped([[ore_slat_iron],[slab]])
		.addOutput(items.grate)
		.setExtraOutputOne(item_dust_wood, 1.0)
		.addTool(art_tools.handsaw, 1)
		.create();
		
	if(!isNull(items.lid)) {
		Disabling.markForRemove(items.lid);
		carpenterBuilder
			.setShapeless([slab])
			.addOutput(items.lid)
			.addTool(art_tools.razor, 1)
			.create();
	}
}
/*
val chageWoodRecipes as IOreDictEntry[] = [
	<ore:dryingrack>,
	<ore:shelfWood>,
	<ore:worktableSlab>,
	<ore:storagecrate>,
	<ore:barrelWood>
];

for oreEntry in chageWoodRecipes {
	for item in oreEntry.items {
		builderCarpenter.convertRecipe(item, art_tools.framing_hammer, 3);
	}
}
*/
val woods as string[] = [
	"oak",
	"spruce",
	"birch",
	"jungle",
	"acacia",
	"bigoak",
	"ironwood",
	"corypha",
	"lacquer",
	"yew"
];

for wood in woods {
	builderCarpenter.convertRecipe("primal:ladder_" ~ wood, art_tools.framing_hammer, 3);
}

val ironRecipes as IItemStack[IOreDictEntry] = {
	<ore:strandIron> : <primal:iron_ring>,
	<ore:ringIron> : <primal:iron_strand>,
	<ore:barsIron> : <primal:slat_iron>
};

for material, item in ironRecipes {
	Disabling.markForRemove(item);
	blacksmithBuilder
		.setShapeless([material])
		.addOutput(item)
		.addTool(art_tools.hammer, 1)
		.create();
}
basicBuilder
	.setShapeless([<ore:plateIron>])
	.addOutput(<primal:iron_strand> * 8)
	.addTool(art_tools.cutters, 8)
	.create();
Disabling.markForRemove(<primal:iron_mesh>);
blacksmithBuilder
	.setShaped([
		[ore_strand_iron,ore_strand_iron,ore_strand_iron],
		[ore_strand_iron,ore_strand_iron,ore_strand_iron]
	])
	.addOutput(<primal:iron_mesh>)
	.addTool(art_tools.hammer, 5)
	.create();
Disabling.markForRemove(<primal:pitfall>);
blacksmithBuilder
	.setShaped([
		[ore_slat_iron,ore_slat_iron],
		[ore_slat_iron,ore_slat_iron]
	])
	.addOutput(<primal:pitfall>)
	.addTool(art_tools.hammer, 3)
	.create();

val pinsRecipes as IOreDictEntry[IItemStack] = {
	<primal:wood_pin> : <ore:stickWood>,
	<primal:iron_pin> : <ore:strandIron>,
	<primal:corypha_pin> : <ore:stickCorypha>
};

for pin, material in pinsRecipes {
	Disabling.markForRemove(pin);
	basicBuilder
		.setShapeless([material])
		.addOutput(pin * 2)
		.addTool(art_tools.cutters, 1)
		.create();
}

val blockSlab as IItemStack[IItemStack] = {
	<minecraft:glass> : <primal:slab_glass>,
	<primal:nether_stone> : <primal:slab_netherstone>,
	<primal:soulglass> : <primal:slab_soulglass>,
	<primal:nether_earth> : <primal:slab_netherearth>,
	<primal:slab_glass> : <primal:thin_slab_glass>,
	<primal:slab_soulglass> : <primal:thin_slab_soulglass>,
	<primal:thatch> : <primal:thin_slab_thatch>
};

for block, slab in blockSlab {
	Disabling.markForRemove(slab);
	basicBuilder
		.setShapeless([block])
		.addOutput(slab * 2)
		.addTool(art_tools.handsaw, 1)
		.create();
}

Disabling.markForRemove(<primal:slab_mud>);
basicBuilder
	.setShapeless([<ore:blockMudDried>])
	.addOutput(<primal:slab_mud> * 2)
	.addTool(art_tools.handsaw, 1)
	.create();

Disabling.markForRemove(<primal:grate_thatch>);
basicBuilder
	.setShaped([[<ore:slatWood>],[<ore:thinThatch>]])
	.addOutput(<primal:grate_thatch>)
	.addTool(art_tools.handsaw, 1)
	.create();
	
val drainStones as IItemStack[IItemStack] = {
	<primal:carbonate_stone> : <primal:drain_carbonate_flag>,
	<primal:ferro_stone> : <primal:drain_ferro_flag>,
	<primal:scoria_stone> : <primal:drain_scoria>,
	<primal:schist_green_stone> : <primal:drain_schist_green>,
	<primal:ciniscotta_block> : <primal:drain_ciniscotta>
};

val drainSlabs as IItemStack[IItemStack][IOreDictEntry] = {
	<ore:slatIron> : {
		<primal:thatch> : <primal:drain_thatch>,
		<minecraft:stone_slab:5> : <primal:drain_stonebrick>,
		<primal:slab_netherstone> : <primal:drain_netherstone>
	},
	<ore:slatCorypha> : {
		<primal:slab_netherearth> : <primal:drain_nether_earth>
	},
	<ore:slatWood> : {
		<primal:slab_mud> : <primal:drain_mud>
	}
};

for stone, drain in drainStones {
	Disabling.markForRemove(drain);
	basicBuilder
		.setShaped([[<ore:slatIron>],[stone],[<ore:slatIron>]])
		.addOutput(drain * 2)
		.addTool(art_tools.handsaw, 3)
		.create();
}
for slat, drains in drainSlabs {
	for slab, drain in drains {
		Disabling.markForRemove(drain);
		basicBuilder
			.setShaped([[slat],[slab]])
			.addOutput(drain)
			.addTool(art_tools.handsaw, 1)
			.create();
	}
}

val dirtStairs as IIngredient[IItemStack] = {
	<primal:stairs_dirt> : <minecraft:dirt:*>,
	<primal:stairs_path> : <minecraft:grass_path>,
	<primal:stairs_nether_earth> : <primal:nether_earth>,
	<primal:stairs_nether_path> : <primal:nether_path>
};

for stairs, block in dirtStairs {
	Disabling.markForRemove(stairs);
	basicBuilder
		.setShaped([
			[block,null,null],
			[block,block,null],
			[block,block,block]
		])
		.addOutput(stairs * 8)
		.addTool(<tconstruct:shovel>, 3)
		.create();
}

val strip_leather = <primal:leather_strip>;
Disabling.markForRemove(<primal:leather_strip>);
basicBuilder
	.setShapeless([ore_leather])
	.addOutput(strip_leather * 8)
	.addTool(art_tools.workblade, 3)
	.create();
basicBuilder
	.setShapeless([<terraqueous:item_main:100>])
	.addOutput(strip_leather * 2)
	.addTool(art_tools.workblade, 1)
	.create();
	
val fiber_plant = <primal:plant_fiber>;
val fiber_valus = <primal:valus_fiber>;
Disabling.markForRemove(fiber_plant);
Disabling.markForRemove(fiber_valus);
Disabling.markForRemove(<primal:nether_fiber>);
basicBuilder
	.setShapeless([<ore:treeSapling>])
	.addOutput(fiber_plant * 3)
	.addTool(art_tools.workblade, 1)
	.create();
basicBuilder
	.setShapeless([<primal:rush_stems> | <primal:dry_grass_root> | <primal:daucus_murn_fronds>])
	.addOutput(fiber_plant * 4)
	.addTool(art_tools.workblade, 2)
	.create();
basicBuilder
	.setShapeless([<primal:valus_stalk_fresh>])
	.addOutput(fiber_valus)
	.addTool(art_tools.workblade, 1)
	.create();
basicBuilder
	.setShapeless([<primal:valus_sepals>])
	.addOutput(fiber_valus * 3)
	.addTool(art_tools.workblade, 2)
	.create();
basicBuilder
	.setShapeless([<primal:nether_root>])
	.addOutput(<primal:nether_fiber> * 4)
	.addTool(art_tools.workblade, 2)
	.create();
	
Disabling.markForRemove(<primal:sharp_bone>);
basicBuilder
	.setShapeless([<ore:bone>])
	.addOutput(<primal:sharp_bone>)
	.addTool(art_tools.workblade, 1)
	.create();
	
val hide_raw = <primal:hide_raw>;
Disabling.markForRemove(hide_raw);
basicBuilder
	.setShapeless([<ore:peltSmall>])
	.addOutput(hide_raw * 2)
	.addTool(art_tools.workblade, 3)
	.create();
basicBuilder
	.setShapeless([<ore:peltMedium>])
	.addOutput(hide_raw * 4)
	.addTool(art_tools.workblade, 5)
	.create();
basicBuilder
	.setShapeless([<ore:peltLarge>])
	.addOutput(hide_raw * 6)
	.addTool(art_tools.workblade, 7)
	.create();

val stone = <ore:stone> | <ore:cobblestone> | <ore:stoneGranite> | <ore:stoneDiorite> | <ore:stoneAndesite>;
recipes.addShaped("primal_stone_basin", <primal:stone_basin>, [
	[null,art_tools.workblade,null],
	[stone,null,stone],
	[null,stone,null]
]);
builderMason.builder()
	.setShaped([
		[stone,null,stone],
		[null,stone,null]
	])
	.addOutput(<primal:stone_basin>)
	.addTool(art_tools.chisel, 8)
	.create();
	
val clayBuckets as IItemStack[IItemStack] = {
	<primal:bucket_clay_soft> : <minecraft:clay_ball>,
	<primal:bucket_terra_soft> : <primal:terra_clump>,
	<primal:bucket_cinis_soft> : <primal:cinis_clump>
};

for bucket, clay in clayBuckets {
	Disabling.markForRemove(bucket);
	recipes.addShaped(strToName(bucket.definition.name), bucket, [
		[clay,null,clay],
		[clay,null,clay],
		[null,clay,null]
	]);
}
/*
val armorRecipes as int[string] = {
	"primal:armor_wolf_head" : 5,
	"primal:armor_wolf_body" : 8,
	"primal:armor_wolf_legs" : 7,
	"primal:armor_wolf_feet" : 5,
	"primal:armor_ovis_body" : 8,
	"primal:armor_ovis_legs" : 7,
	"primal:armor_ovis_feet" : 5
};

for recipe, dmg in armorRecipes {
	builderTanner.convertRecipe(recipe, art_tools.needle, dmg);
}
*/
val IE_CRUSHER_ENERGY as int = 3200;
val TE_PULVERIZER_ENERGY as int = 2000;
val HP_GRINDSTONE_TIME as int = 12;
val AE_GRINDER_TURNS as int = 6;

val ground_tannin = <primal:tannin_ground>;
val ground_urushi = <primal:urushi_ground>;
val bark = <ore:barkWood>;
val plant_grass = <enderio:item_material:46> |
				  <primal:valus_stalk_withered> |
				  <primal:rush_stems> |
				  <primal:void_grass_root> |
				  <minecraft:tallgrass:1> |
				  <minecraft:tallgrass:2> |
				  <minecraft:double_plant:2> |
				  <minecraft:double_plant:3> |
				  <minecraft:vine> |
				  <minecraft:waterlily> |
				  <biomesoplenty:plant_0> |
				  <biomesoplenty:plant_0:1> |
				  <biomesoplenty:plant_0:7> |
				  <biomesoplenty:plant_0:8> |
				  <biomesoplenty:plant_1> |
				  <thebetweenlands:swamp_double_tallgrass> |
				  <thebetweenlands:swamp_tallgrass> |
				  <thebetweenlands:items_crushed:2> |
				  <thebetweenlands:items_crushed:15> |
				  <thebetweenlands:items_crushed:26> |
				  <thebetweenlands:bottle_brush_grass> |
				  <thebetweenlands:cave_grass> |
				  <thebetweenlands:items_plant_drop:9> |
				  <thebetweenlands:items_plant_drop:14> |
				  <thebetweenlands:items_plant_drop:28> |
				  <thebetweenlands:cattail> |
				  <thebetweenlands:tall_cattail> |
				  <thebetweenlands:bladderwort_stalk> |
				  <thebetweenlands:nettle> |
				  <thebetweenlands:soft_rush> |
				  <thebetweenlands:broomsedge>;

Disabling.markForRemove(ground_urushi);
recipes.addShaped(strToName(ground_urushi.definition.name), ground_urushi * 2, [
	[ore_rock],
	[plant_grass],
	[<primal:stone_basin>]
]);
mods.betterwithmods.Mill.addRecipe([plant_grass], [ground_urushi * 2]);
mods.betterwithmods.Mill.addRecipe([bark], [ground_tannin]);
mods.nuclearcraft.manufactory.addRecipe(bark, ground_tannin);
for grass in plant_grass.items {
	mods.thermalexpansion.Pulverizer.addRecipe(ground_urushi * 2, grass, TE_PULVERIZER_ENERGY);
	mods.horsepower.Grindstone.add(grass, ground_urushi * 2, HP_GRINDSTONE_TIME, false);
	mods.immersiveengineering.Crusher.addRecipe(ground_urushi * 2, grass, IE_CRUSHER_ENERGY);
	mods.mekanism.crusher.addRecipe(grass, ground_urushi * 2);
	mods.appliedenergistics2.Grinder.addRecipe(ground_urushi * 2, grass, AE_GRINDER_TURNS);
	mods.nuclearcraft.manufactory.addRecipe(grass, ground_urushi * 2);
}
for item in bark.items {
	mods.thermalexpansion.Pulverizer.addRecipe(ground_tannin, item, TE_PULVERIZER_ENERGY);
	mods.horsepower.Grindstone.add(item, ground_tannin, HP_GRINDSTONE_TIME, false);
	mods.immersiveengineering.Crusher.addRecipe(ground_tannin, item, IE_CRUSHER_ENERGY);
	mods.mekanism.crusher.addRecipe(item, ground_tannin);
	mods.appliedenergistics2.Grinder.addRecipe(ground_tannin, item, AE_GRINDER_TURNS);
}

val bucket_water = <minecraft:water_bucket>;
val bucket_tannin = <forge:bucketfilled>.withTag({FluidName:"tannin",Amount:1000});
val bucket_urushi = <forge:bucketfilled>.withTag({FluidName:"urushi",Amount:1000});
val cell_water = <techreborn:dynamiccell>.withTag({Fluid:{FluidName:"water",Amount:1000}});
val cell_tannin = <techreborn:dynamiccell>.withTag({Fluid:{FluidName:"tannin",Amount:1000}});
val cell_urushi = <techreborn:dynamiccell>.withTag({Fluid:{FluidName:"urushi",Amount:1000}});

mods.thermalexpansion.InductionSmelter.addRecipe(bucket_tannin, bucket_water, ground_tannin * 4, 2000);
mods.thermalexpansion.InductionSmelter.addRecipe(bucket_urushi, bucket_water, ground_urushi * 4, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<enderio:item_material:47> % 5], ground_tannin, <liquid:tannin> * 80, 700);
mods.thermalexpansion.Centrifuge.addRecipe([<enderio:item_material:47> % 5], ground_urushi, <liquid:urushi> * 80, 700);
mods.techreborn.centrifuge.addRecipe(cell_tannin, null, null, null, ground_tannin * 4, cell_water, 400, 8);
mods.techreborn.centrifuge.addRecipe(cell_urushi, null, null, null, ground_urushi * 4, cell_water, 400, 8);
mods.techreborn.alloySmelter.addRecipe(bucket_tannin, bucket_water, ground_tannin * 4, 400, 8);
mods.techreborn.alloySmelter.addRecipe(bucket_urushi, bucket_water, ground_urushi * 4, 400, 8);

for plank in ore_plank.items {
	mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, plank, <liquid:urushi> * 20, 800);
}
for stick in ore_stick.items {
	mods.thermalexpansion.Transposer.addFillRecipe(<primal:lacquer_stick>, stick, <liquid:urushi> * 5, 200);
}

val smelteryRecipes as IItemStack[][IIngredient[]][string] = {
	"clay_bucket" : {
		[<primal:bucket_clay_soft>, <primal:charcoal_mote> * 2] : [<primal:bucket_clay>]
	},
	"terra_bucket" : {
		[<primal:bucket_terra_soft>, <primal:charcoal_mote> * 2] : [<primal:bucket_terra>]
	},
	"cinis_bucket" : {
		[<primal:bucket_cinis_soft>, <primal:charcoal_mote> * 2] : [<primal:bucket_cinis>]
	},
	"starmetal_ingot" : {
		[
			metalOres.starmetal.ore,
			<ore:charcoalGood>,
			<primal:carbonate_slack> * 2 |
			<primal:ferro_slack> * 2
		] : [
			metalItems.starmetal.ingot,
			<primal:slag> * 2
		]
	},
	"ironwood_ingot" : {
		[
			metalOres.ironwood.ore,
			<ore:charcoalGood>,
			<primal:carbonate_slack> * 2 |
			<primal:ferro_slack> * 2
		] : [
			metalItems.ironwood.ingot,
			<primal:slag> * 2
		]
	},
	"knightmetal_ingot" : {
		[
			metalOres.knightmetal.ore,
			<ore:charcoalGood>,
			<primal:carbonate_slack> * 2 |
			<primal:ferro_slack> * 2
		] : [
			metalItems.knightmetal.ingot,
			<primal:slag> * 2
		]
	}
};
val smelteryRecipesTime as int[string] = {
	"clay_bucket" : 10,
	"terra_bucket" : 10,
	"cinis_bucket" : 10,
	"starmetal_ingot" : 16,
	"ironwood_ingot" : 16,
	"knightmetal_ingot": 16
};
for recipe, ingredients in smelteryRecipes {
	for input, output in ingredients {
		mods.primal.Smelter.addRecipe(
			recipe, smelteryRecipesTime[recipe], 
			input, output
		);
	}
}

val bog_iron = <primal:bog_iron>;
val slag = <primal:slag>;

mods.mekanism.smelter.addRecipe(bog_iron * 2, metalItems.crude_iron.nugget * 5);
mods.thermalexpansion.RedstoneFurnace.addRecipe(metalItems.crude_iron.nugget * 5, bog_iron * 2, 1200);
for slack in <ore:slackLime>.items {
	mods.thermalexpansion.InductionSmelter.addRecipe(metalItems.crude_iron.ingot, slack * 2, bog_iron * 2, 2000, slag, 100);
	mods.immersiveengineering.ArcFurnace.addRecipe(metalItems.crude_iron.ingot, bog_iron * 2, slag, 100, 512, [slack,slack]);
}
for sand in <ore:sand>.items {
	mods.thermalexpansion.InductionSmelter.addRecipe(metalItems.crude_iron.nugget * 8, sand, bog_iron * 2, 2000, metalItems.iron.nugget * 2, 100);
	mods.immersiveengineering.ArcFurnace.addRecipe(metalItems.crude_iron.nugget * 8, bog_iron * 2, slag, 100, 512, [sand]);
}