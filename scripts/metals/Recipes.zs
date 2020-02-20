
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.globals.Utility.strToName;

val IE_CRUSHER_ENERGY as int = 5400;
val IE_ARC_ENERGY as int = 512;
val IE_ARC_TIME as int = 200;
val TE_PULVERIZER_ENERGY as int = 4000;
val TE_IS_ENERGY as int = 4000;
val TE_RF_ENERGY as int = 2000;
val AE_GRINDER_TURNS as int = 12;

val tf_slag = <thermalfoundation:material:864>;
val ie_slag = <thermalfoundation:material:864>;
val pc_slag = <primal:slag>;
val slag_rich = <thermalfoundation:material:865>;
val slack = <primal:carbonate_slack> * 2 | <primal:ferro_slack> * 2;

val builder = builderBlacksmith.builder();
for metal, metal_items in metalItems {
	var ingot = metalOres[metal].ingot;
	
	for item in ingot.items {
		furnace.remove(ingot);
		mods.immersiveengineering.ArcFurnace.removeRecipe(item);
	}
	
	if(!isNull(metal_items.plate)) {
		Disabling.markForRemove(metalOres[metal].plate);
		builder
			.setShapeless([ingot])
			.addOutput(metal_items.plate)
			.addTool(art_tools.hammer, 2)
			.create();
	}
	if(!isNull(metal_items.stick)) {
		Disabling.markForRemove(metalOres[metal].stick);
		builder
			.setShaped([[ingot],[ingot]])
			.addOutput(metal_items.stick * 4)
			.addTool(art_tools.hammer, 6)
			.create();
	}
	if(!isNull(metal_items.gear)) {
		Disabling.markForRemove(metalOres[metal].gear);
	}
	if(!isNull(metal_items.dust)) {
		var dust = metalOres[metal].dust;
		Disabling.markForRemove(dust);
		for item in dust.items {
			mods.mekanism.smelter.removeRecipe(item);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(item);
		}
		mods.thermalexpansion.RedstoneFurnace.addRecipe(metal_items.ingot, metal_items.dust, TE_RF_ENERGY);
		mods.mekanism.smelter.addRecipe(metal_items.dust, metal_items.ingot);
		mods.immersiveengineering.ArcFurnace.addRecipe(metal_items.ingot, dust, null, 100, IE_ARC_ENERGY);
	}
	if(!isNull(metalOres[metal].ore)) {
		var ore = metalOres[metal].ore;
		mods.immersiveengineering.ArcFurnace.addRecipe(metal_items.ingot * 2, ore, ie_slag, IE_ARC_TIME, IE_ARC_ENERGY);
		for item in ore.items {
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(item);
			mods.mekanism.smelter.removeRecipe(item);
			mods.thermalexpansion.RedstoneFurnace.addRecipe(metal_items.ingot, item, TE_RF_ENERGY);
			mods.mekanism.smelter.addRecipe(item, metal_items.ingot);
		}
	}
}

val arcAlloys as IIngredient[][IIngredient][IItemStack] = {
	metalItems.alubrass.ingot * 4 : {
		metalOres.copper.ingot | metalOres.copper.dust : [
			metalOres.aluminum.dust,
			metalOres.aluminum.dust,
			metalOres.aluminum.dust
		]
	},
	metalItems.bronze.ingot * 4 : {
		metalOres.tin.ingot | metalOres.tin.dust : [
			metalOres.copper.ingot | metalOres.copper.dust,
			metalOres.copper.ingot | metalOres.copper.dust,
			metalOres.copper.ingot | metalOres.copper.dust
		]
	},
	metalItems.brass.ingot * 4 : {
		metalOres.zinc.ingot | metalOres.zinc.dust : [
			metalOres.copper.ingot | metalOres.copper.dust,
			metalOres.copper.ingot | metalOres.copper.dust,
			metalOres.copper.ingot | metalOres.copper.dust
		]
	},
	metalItems.invar.ingot * 3 : {
		metalOres.nickel.ingot | metalOres.nickel.dust : [
			metalOres.iron.ingot | metalOres.iron.dust,
			metalOres.iron.ingot | metalOres.iron.dust
		]
	},
	metalItems.constantan.ingot * 2 : {
		metalOres.copper.ingot | metalOres.copper.dust : [
			metalOres.nickel.ingot | metalOres.nickel.dust
		],
		metalOres.nickel.ingot | metalOres.nickel.dust : [
			metalOres.copper.ingot | metalOres.copper.dust
		]
	},
	metalItems.electrum.ingot * 2 : {
		metalOres.gold.ingot | metalOres.gold.dust : [
			metalOres.silver.ingot | metalOres.silver.dust
		],
		metalOres.silver.ingot | metalOres.silver.dust : [
			metalOres.gold.ingot | metalOres.gold.dust
		]
	},
	metalItems.manyullyn.ingot : {
		metalOres.cobalt.ingot | metalOres.cobalt.dust : [
			metalOres.ardite.ingot | metalOres.ardite.dust
		],		
		metalOres.ardite.ingot | metalOres.ardite.dust : [
			metalOres.cobalt.ingot | metalOres.cobalt.dust
		]
	},
	metalItems.electrical_steel.ingot : {
		metalOres.iron.ingot | metalOres.iron.dust : [
			<ore:dustCoal>,
			<ore:itemSilicon>
		]
	},
	metalItems.energetic_alloy.ingot : {
		metalOres.gold.ingot | metalOres.gold.dust : [
			<ore:dustRedstone>,
			<ore:dustGlowstone>
		]
	},
	metalItems.conductive_iron.ingot : {
		metalOres.iron.ingot | metalOres.iron.dust : [
			<ore:dustRedstone>
		]
	},
	metalItems.dark_steel.ingot : {
		metalOres.iron.ingot | metalOres.iron.dust : [
			<ore:dustCoal>,
			<ore:obsidian>
		]
	},
	metalItems.soularium.ingot : {
		metalOres.gold.ingot | metalOres.gold.dust : [
			<ore:soulsand>
		]
	},
	metalItems.steel.ingot : {
		metalOres.iron.ingot | metalOres.iron.dust : [
			<ore:dustCoke>
		]
	}
};
val arcAlloysTime as int[IIngredient] = {
	<tconstruct:ingots:5> * 4 : 100,
	metalItems.manyullyn.ingot : 200,
	metalItems.electrical_steel.ingot : 400,
	metalItems.energetic_alloy.ingot : 200,
	metalItems.conductive_iron.ingot : 100,
	metalItems.dark_steel.ingot : 400,
	metalItems.soularium.ingot : 200,
	metalItems.steel.ingot : 400,
	metalItems.constantan.ingot * 2 : 100,
	metalItems.electrum.ingot * 2 : 100,
	metalItems.invar.ingot * 3 : 200,
	metalItems.bronze.ingot * 4 : 200,
	metalItems.brass.ingot * 4 : 200
};

for out, inputs in arcAlloys {
	for input, addition in inputs {
		mods.immersiveengineering.ArcFurnace.addRecipe(out, input, ie_slag, arcAlloysTime[out], IE_ARC_ENERGY, addition);
	}
}

val chunkOre as IItemStack[][string] = {
	"iron" : [
		<magneticraft:rocky_chunks>,
		<magneticraft:chunks>
	],
	"gold" : [
		<magneticraft:rocky_chunks:1>,
		<magneticraft:chunks:1>
	],
	"copper" : [
		<magneticraft:rocky_chunks:2>,
		<magneticraft:chunks:2>
	],
	"lead" : [
		<magneticraft:rocky_chunks:3>,
		<magneticraft:chunks:3>
	],
	"cobalt" : [
		<magneticraft:rocky_chunks:4>,
		<magneticraft:chunks:4>
	],
	"tungsten" : [
		<magneticraft:rocky_chunks:5>,
		<magneticraft:chunks:5>
	],
	"aluminum" : [
		<magneticraft:rocky_chunks:7>,
		<magneticraft:chunks:7>
	],
	"mithril" : [
		<magneticraft:rocky_chunks:9>,
		<magneticraft:chunks:9>
	],
	"nickel" : [
		<magneticraft:rocky_chunks:10>,
		<magneticraft:chunks:10>
	],
	"osmium" : [
		<magneticraft:rocky_chunks:11>,
		<magneticraft:chunks:11>
	],
	"silver" : [
		<magneticraft:rocky_chunks:12>,
		<magneticraft:chunks:12>
	],
	"tin" : [
		<magneticraft:rocky_chunks:13>,
		<magneticraft:chunks:13>
	],
	"zinc" : [
		<magneticraft:rocky_chunks:14>,
		<magneticraft:chunks:14>
	]
};

for metal, chunks in chunkOre {
	mods.thermalexpansion.Pulverizer.addRecipe(metalItems[metal].dust, chunks[0], TE_PULVERIZER_ENERGY);
	mods.immersiveengineering.Crusher.addRecipe(metalItems[metal].dust, chunks[0], IE_CRUSHER_ENERGY);
	mods.immersiveengineering.ArcFurnace.addRecipe(metalItems[metal].ingot * 2, chunks[0], ie_slag, IE_ARC_TIME, IE_ARC_ENERGY);
	mods.mekanism.crusher.addRecipe(chunks[0], metalItems[metal].dust);
	mods.mekanism.smelter.addRecipe(chunks[0], metalItems[metal].ingot);
	mods.appliedenergistics2.Grinder.addRecipe(metalItems[metal].dust, chunks[0], AE_GRINDER_TURNS);
	mods.nuclearcraft.manufactory.addRecipe(chunks[0], metalItems[metal].dust);
	mods.magneticraft.Grinder.addRecipe(chunks[0], metalItems[metal].dust, <minecraft:gravel>, 0.0, 50, true);
	mods.thermalexpansion.InductionSmelter.addRecipe(metalItems[metal].ingot * 3, slag_rich, chunks[0], TE_IS_ENERGY, tf_slag, 75);
	mods.primal.Smelter.addRecipe(
		"chunk_" ~ chunks[0].name ~ "_to_ingot", 16, 
		[chunks[0], <primal:charcoal_good>, slack], 
		[metalItems[metal].ingot, metalItems[metal].nugget * 3, pc_slag]
	);	
	for sand in <ore:sand>.items {
		mods.thermalexpansion.InductionSmelter.addRecipe(metalItems[metal].ingot * 2, sand, chunks[0], TE_IS_ENERGY, slag_rich, 5);
	}
	
	mods.thermalexpansion.Pulverizer.addRecipe(metalItems[metal].dust * 2, chunks[1], TE_PULVERIZER_ENERGY);
	mods.immersiveengineering.Crusher.addRecipe(metalItems[metal].dust * 2, chunks[1], IE_CRUSHER_ENERGY);
	mods.immersiveengineering.ArcFurnace.addRecipe(metalItems[metal].ingot * 3, chunks[1], null, IE_ARC_TIME, IE_ARC_ENERGY);
	mods.mekanism.crusher.addRecipe(chunks[1], metalItems[metal].dust * 2);
	mods.mekanism.smelter.addRecipe(chunks[1], metalItems[metal].ingot * 2);
	mods.appliedenergistics2.Grinder.addRecipe(metalItems[metal].dust * 2, chunks[1], AE_GRINDER_TURNS);
	mods.nuclearcraft.manufactory.addRecipe(chunks[1], metalItems[metal].dust * 2);
	mods.magneticraft.Grinder.addRecipe(chunks[1], metalItems[metal].dust * 2, <minecraft:gravel>, 0.0, 50, true);
	mods.thermalexpansion.InductionSmelter.addRecipe(metalItems[metal].ingot * 4, slag_rich, chunks[1], TE_IS_ENERGY, tf_slag, 75);
	mods.primal.Smelter.addRecipe(
		"chunk_" ~ chunks[1].name ~ "_to_ingots", 16, 
		[chunks[1], <primal:charcoal_good>, slack], 
		[metalItems[metal].ingot * 2, metalItems[metal].nugget * 6, pc_slag]
	);	
	for sand in <ore:sand>.items {
		mods.thermalexpansion.InductionSmelter.addRecipe(metalItems[metal].ingot * 3, sand, chunks[1], TE_IS_ENERGY, slag_rich, 5);
	}	
}

val plateHorseArmor as IItemStack[IItemStack] = {
	<minecraft:iron_horse_armor> : metalItems.iron.plate,
	<minecraft:golden_horse_armor> : metalItems.gold.plate,
	<minecraft:diamond_horse_armor> : <techreborn:plates:5>,
	<thermalfoundation:horse_armor_copper> : metalItems.copper.plate,
	<thermalfoundation:horse_armor_tin> : metalItems.tin.plate,
	<thermalfoundation:horse_armor_silver> : metalItems.silver.plate,
	<thermalfoundation:horse_armor_lead> : metalItems.lead.plate,
	<thermalfoundation:horse_armor_aluminum> : metalItems.aluminum.plate,
	<thermalfoundation:horse_armor_nickel> : metalItems.nickel.plate,
	<thermalfoundation:horse_armor_platinum> : metalItems.platinum.plate,
	<thermalfoundation:horse_armor_steel> : metalItems.steel.plate,
	<thermalfoundation:horse_armor_electrum> : metalItems.electrum.plate,
	<thermalfoundation:horse_armor_invar> : metalItems.invar.plate,
	<thermalfoundation:horse_armor_bronze> : metalItems.bronze.plate,
	<thermalfoundation:horse_armor_constantan> : metalItems.constantan.plate
};

val leather = <ore:leatherBoiled>;

for armor, plate in plateHorseArmor {
	Disabling.markForRemove(armor);
	
	builder
		.setShapeless([armor])
		.addOutput(plate * 4)
		.setExtraOutputOne(<betterwithmods:material:31>, 0.35)
		.setExtraOutputTwo(<betterwithmods:material:31>, 0.1)
		.addTool(art_tools.workblade, 3)
		.create();
	builder
		.setShaped([
			[plate,leather,plate],
			[ore_ring_iron,ore_wool,ore_ring_iron],
			[plate,null,plate]
		])
		.addOutput(armor)
		.addTool(art_tools.hammer, 10)
		.create();
}

val heavyPlates as IItemStack[string] = {
	"iron" : <magneticraft:heavy_plates>,
	"gold" : <magneticraft:heavy_plates:1>,
	"copper" : <magneticraft:heavy_plates:2>,
	"lead" : <magneticraft:heavy_plates:3>,
	"tungsten" : <magneticraft:heavy_plates:5>,
	"steel" : <magneticraft:heavy_plates:6>
};

for metal, plate in heavyPlates {
	mods.immersiveengineering.MetalPress.addRecipe(plate, metalOres[metal].ingot, <immersiveengineering:mold>, 4000, 2);
}