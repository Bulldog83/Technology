
#priority 100

#ikwid

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

import mods.thermalexpansion.Crucible;

//mods.thermalexpansion.Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);
//mods.thermalexpansion.Crucible.removeRecipe(IItemStack input);
//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
//mods.tconstruct.Melting.removeRecipe(ILiquidStack output);
//mods.nuclearcraft.melter.addRecipe([itemInput, fluidOutput, {timeMultiplier (double)}]);
//mods.nuclearcraft.melter.removeRecipeWithOutput([fluidOutput]);
//mods.foundry.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int melting_point, @Optional int speed);
//mods.foundry.Melting.removeRecipe(IItemStack input);

function removeMeltingItem(item as IItemStack) {
	mods.thermalexpansion.Crucible.removeRecipe(item);
	mods.foundry.Melting.removeRecipe(item);
}
function removeMeltingLiquid(fluid as ILiquidStack) {
	mods.tconstruct.Melting.removeRecipe(fluid);
	mods.nuclearcraft.melter.removeRecipeWithOutput([fluid]);
}

function addMelting(input as IIngredient, fluid as ILiquidStack, amount as int, temp as int) {
	val energy as int = amount * temp / 100;
	for item in input.itemArray {
		removeMeltingItem(item);
		mods.thermalexpansion.Crucible.addRecipe(fluid * amount, item, energy);
		mods.nuclearcraft.melter.addRecipe([item, fluid * amount, 1.0]);
	}
	mods.tconstruct.Melting.addRecipe(fluid * amount, input, temp);
	mods.foundry.Melting.addRecipe(fluid * amount, input);
}
function addTinkerToolMelting(input as IIngredient, fluid as ILiquidStack, amount as int, temp as int) {
	val energy as int = amount * temp / 100;
	for item in input.itemArray {
		removeMeltingItem(item);
		mods.thermalexpansion.Crucible.addRecipe(fluid * amount, item, energy);
		mods.nuclearcraft.melter.addRecipe([item, fluid * amount, 1.0]);
	}
	//mods.tconstruct.Melting.addRecipe(fluid * amount, input);
	mods.foundry.Melting.addRecipe(fluid * amount, input);
}

val fuelTemperature as int[ILiquidStack] = {
	<liquid:lava> : 1800,
	<liquid:magma_basaltic> : 2000,
	<liquid:fire_water> : 2600
};

for fuel, temp in fuelTemperature {
	fuel.definition.temperature = temp;
}

//mods.tconstruct.Fuel.registerFuel(ILiquidStack fuel, int duration);
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 15, 55);
mods.tconstruct.Fuel.registerFuel(<liquid:magma_basaltic> * 15, 75);
mods.tconstruct.Fuel.registerFuel(<liquid:fire_water> * 15, 70);

val liquidMetals as ILiquidStack[][string] = {
	"iron" : [
		<liquid:iron>,
		<liquid:liquidiron>
	],
	"gold" : [
		<liquid:gold>,
		<liquid:liquidgold>
	],
	"manasteel" : [
		<liquid:manasteel>,
		<liquid:liquidmanasteel>
	],
	"terrasteel" : [
		<liquid:terrasteel>,
		<liquid:liquidterrasteel>
	],
	"elementium" : [
		<liquid:elementium>,
		<liquid:liquidelvenelementium>
	],
	"dark_steel" : [
		<liquid:dark_steel>
	],
	"soularium" : [
		<liquid:soularium>
	],
	"pulsating_iron" : [
		<liquid:pulsating_iron>
	],
	"electrical_steel" : [
		<liquid:electrical_steel>
	],
	"vibrant_alloy" : [
		<liquid:vibrant_alloy>
	],
	"energetic_alloy" : [
		<liquid:energetic_alloy>
	],
	"redstone_alloy" : [
		<liquid:redstone_alloy>
	],
	"conductive_iron" : [
		<liquid:conductive_iron>
	],
	"end_steel" : [
		<liquid:end_steel>
	],
	"tritanium" : [
		<liquid:molten_tritanium>
	],
	"aluminum" : [
		<liquid:aluminum>,
		<liquid:liquidaluminium>
	],
	"brass" : [
		<liquid:brass>,
		<liquid:liquidbrass>
	],
	"bronze" : [
		<liquid:bronze>,
		<liquid:liquidbronze>
	],
	"copper" : [
		<liquid:copper>,
		<liquid:liquidcopper>
	],
	"electrum" : [
		<liquid:electrum>,
		<liquid:liquidelectrum>
	],
	"invar" : [
		<liquid:invar>,
		<liquid:liquidinvar>
	],
	"iridium" : [
		<liquid:iridium>
	],
	"lead" : [
		<liquid:lead>,
		<liquid:liquidlead>
	],
	"nickel" : [
		<liquid:nickel>,
		<liquid:liquidnickel>
	],
	"platinum" : [
		<liquid:platinum>,
		<liquid:liquidplatinum>
	],
	"silver" : [
		<liquid:silver>,
		<liquid:liquidsilver>
	],
	"steel" : [
		<liquid:steel>,
		<liquid:liquidsteel>
	],
	"tin" : [
		<liquid:tin>,
		<liquid:liquidtin>
	],
	"zinc" : [
		<liquid:zinc>,
		<liquid:liquidzinc>
	],
	"signalum" : [
		<liquid:signalum>,
		<liquid:liquidsignalum>
	],
	"lumium" : [
		<liquid:lumium>,
		<liquid:liquidlumium>
	],
	"enderium" : [
		<liquid:enderium>,
		<liquid:liquidenderium>
	],
	"manyullyn" : [
		<liquid:manyullyn>
	],
	"knightslime" : [
		<liquid:knightslime>
	],
	"constantan" : [
		<liquid:constantan>,
		<liquid:liquidcupronickel>
	],
	"uranium" : [
		<liquid:uranium>
	],
	"cobalt" : [
		<liquid:cobalt>
	],
	"osmium" : [
		<liquid:liquidosmium>
	],
	"boron" : [
		<liquid:boron>
	],
	"thorium" : [
		<liquid:thorium>
	],
	"lithium" : [
		<liquid:lithium>
	],
	"magnesium" : [
		<liquid:magnesium>
	],
	"beryllium" : [
		<liquid:beryllium>
	],
	"tough" : [
		<liquid:tough>
	],
	"hard_carbon" : [
		<liquid:hard_carbon>
	],
	"octine" : [
		<liquid:octine>
	],
	"syrmorite" : [
		<liquid:syrmorite>
	],
	"pigiron" : [
		<liquid:pigiron>
	],
	"mithril" : [
		<liquid:mithril>
	],
	"thaumium" : [
		<liquid:thaumium>
	],
	"void" : [
		<liquid:voidmetal>
	],
	"hellfire" : [
		<liquid:hellfire>
	],
	"starmetal" : [
		<liquid:starmetal>
	],
	"fierymetal" : [
		<liquid:fierymetal>
	],
	"knightmetal" : [
		<liquid:knightmetal>
	]
};

for metal, fluids in liquidMetals {
	for fluid in fluids {
		removeMeltingLiquid(fluid);
	}
}

for metal, liquid in metalMolten {
	liquid.definition.temperature = metalTemperature[metal];
}

val dataTags as IData[string] = {
	"sharpening_kit" : {PartType:"tconstruct:sharpening_kit"},
	"shard" : {PartType:"tconstruct:shard"},
	"tool_rod" : {PartType:"tconstruct:tool_rod"},
	"pick_head" : {PartType:"tconstruct:pick_head"},
	"binding" : {PartType:"tconstruct:binding"},
	"shovel_head" : {PartType:"tconstruct:shovel_head"},
	"axe_head" : {PartType:"tconstruct:axe_head"},
	"kama_head" : {PartType:"tconstruct:kama_head"},
	"tough_tool_rod" : {PartType:"tconstruct:tough_tool_rod"},
	"hammer_head" : {PartType:"tconstruct:hammer_head"},
	"large_plate" : {PartType:"tconstruct:large_plate"},
	"excavator_head" : {PartType:"tconstruct:excavator_head"},
	"tough_binding" : {PartType:"tconstruct:tough_binding"},
	"broad_axe_head" : {PartType:"tconstruct:broad_axe_head"},
	"scythe_head" : {PartType:"tconstruct:scythe_head"},
	"sword_blade" : {PartType:"tconstruct:sword_blade"},
	"wide_guard" : {PartType:"tconstruct:wide_guard"},
	"hand_guard" : {PartType:"tconstruct:hand_guard"},
	"cross_guard" : {PartType:"tconstruct:cross_guard"},
	"large_sword_blade" : {PartType:"tconstruct:large_sword_blade"},
	"bow_limb" : {PartType:"tconstruct:bow_limb"},
	"arrow_head" : {PartType:"tconstruct:arrow_head"},
	"knife_blade" : {PartType:"tconstruct:knife_blade"},
	//"helmet_core" : {PartType:"conarm:helmet_core"},
	"armor_plate" : {PartType:"conarm:armor_plate"},
	"armor_trim" : {PartType:"conarm:armor_trim"},
	//"chest_core" : {PartType:"conarm:chest_core"},
	//"leggings_core" : {PartType:"conarm:leggings_core"},
	//"boots_core" : {PartType:"conarm:boots_core"},
	"polishing_kit" : {PartType:"conarm:polishing_kit"},
	"chisel_head" : {PartType:"tcomplement:chisel_head"},
	"iron" : {Material:"iron"},
	//"gold" : {Material:"gold"},
	"manasteel" : {Material:"manasteel"},
	"terrasteel" : {Material:"terrasteel"},
	"elementium" : {Material:"elementium"},
	"dark_steel" : {Material:"dark_steel"},
	"soularium" : {Material:"soularium"},
	"pulsating_iron" : {Material:"pulsating_iron"},
	"electrical_steel" : {Material:"electrical_steel"},
	"vibrant_alloy" : {Material:"vibrant_alloy"},
	"energetic_alloy" : {Material:"energetic_alloy"},
	"redstone_alloy" : {Material:"redstone_alloy"},
	"conductive_iron" : {Material:"conductive_iron"},
	"end_steel" : {Material:"end_steel"},
	//"tritanium" : {Material:"tritanium"},
	//"aluminum" : {Material:"aluminum"},
	"brass" : {Material:"brass"},
	"bronze" : {Material:"bronze"},
	"copper" : {Material:"copper"},
	"electrum" : {Material:"electrum"},
	//"invar" : {Material:"invar"},
	//"iridium" : {Material:"iridium"},
	"lead" : {Material:"lead"},
	//"nickel" : {Material:"nickel"},
	//"platinum" : {Material:"platinum"},
	"silver" : {Material:"silver"},
	"steel" : {Material:"steel"},
	//"tin" : {Material:"tin"},
	//"zinc" : {Material:"zinc"},
	//"signalum" : {Material:"signalum"},
	//"lumium" : {Material:"lumium"},
	//"enderium" : {Material:"enderium"},
	"manyullyn" : {Material:"manyullyn"},
	"knightslime" : {Material:"knightslime"},
	"constantan" : {Material:"constantan"},
	"cobalt" : {Material:"cobalt"},
	"ardite" : {Material:"ardite"},
	//"osmium" : {Material:"osmium"},
	"thaumium" : {Material:"thaumium"},
	"void" : {Material:"voidmetal"},
	"boron" : {Material:"boron"},
	//"thorium" : {Material:"thorium"},
	//"lithium" : {Material:"lithium"},
	//"magnesium" : {Material:"magnesium"},
	//"beryllium" : {Material:"beryllium"},
	"tough" : {Material:"tough"},
	"hard_carbon" : {Material:"hard_carbon"},
	"octine" : {Material:"octine"},
	"syrmorite" : {Material:"syrmorite"},
	"pigiron" : {Material:"pigiron"},
	"mithril" : {Material:"mithril"},
	"hellfire" : {Material:"hellfire"},
	"starmetal" : {Material:"starmetal"},
	"fierymetal" : {Material:"fierymetal"},
	"knightmetal" : {Material:"knightmetal"},
	"wood" : {Material:"wood"},
	"bone" : {Material:"bone"},
	"blaze" : {Material:"blaze"},
	"reed" : {Material:"reed"},
	"reed" : {Material:"reed"},
	"ice" : {Material:"ice"},
	"endrod" : {Material:"endrod"},
	"treatedwood" : {Material:"treatedwood"},
	"livingwood" : {Material:"livingwood"},
	"weedwood" : {Material:"weedwood"},
	"nagascale" : {Material:"nagascale"},
	"steeleaf" : {Material:"steeleaf"}
};

val tinkerPartCasts as IItemStack[string] = {
	"metal" : <tconstruct:cast>,
	"clay" : <tconstruct:clay_cast>
};

val tinkerItemCasts as IItemStack[string] = {
	"ingot" : <tconstruct:cast_custom>,
	"nugget" : <tconstruct:cast_custom:1>,
	"gem" : <tconstruct:cast_custom:2>,
	"plate" : <tconstruct:cast_custom:3>,
	"gear" : <tconstruct:cast_custom:4>,
	"bucket" : <tcomplement:cast>
};

val tinkerArmorCasts as IItemStack[string] = {
	"helmet_core" : <betterwithmods:leather_tanned_helmet>,
	"chest_core" : <betterwithmods:leather_tanned_chest>,
	"leggings_core" : <betterwithmods:leather_tanned_pants>,
	"boots_core" : <betterwithmods:leather_tanned_boots>
};

val tinkerToolParts as IItemStack[string] = {
	"sharpening_kit" : <tconstruct:sharpening_kit>,
	"shard" : <tconstruct:shard>,
	"tool_rod" : <tconstruct:tool_rod>,
	"pick_head" : <tconstruct:pick_head>,
	"binding" : <tconstruct:binding>,
	"shovel_head" : <tconstruct:shovel_head>,
	"axe_head" : <tconstruct:axe_head>,
	"kama_head" : <tconstruct:kama_head>,
	"tough_tool_rod" : <tconstruct:tough_tool_rod>,
	"hammer_head" : <tconstruct:hammer_head>,
	"large_plate" : <tconstruct:large_plate>,
	"excavator_head" : <tconstruct:excavator_head>,
	"tough_binding" : <tconstruct:tough_binding>,
	"broad_axe_head" : <tconstruct:broad_axe_head>,
	"scythe_head" : <tconstruct:scythe_head>,
	"sword_blade" : <tconstruct:sword_blade>,
	"wide_guard" : <tconstruct:wide_guard>,
	"hand_guard" : <tconstruct:hand_guard>,
	"cross_guard" : <tconstruct:cross_guard>,
	"large_sword_blade" : <tconstruct:large_sword_blade>,
	"bow_limb" : <tconstruct:bow_limb>,
	"arrow_head" : <tconstruct:arrow_head>,
	"knife_blade" : <tconstruct:knife_blade>,
	"helmet_core" : <conarm:helmet_core>,
	"armor_plate" : <conarm:armor_plate>,
	"armor_trim" : <conarm:armor_trim>,
	"chest_core" : <conarm:chest_core>,
	"leggings_core" : <conarm:leggings_core>,
	"boots_core" : <conarm:boots_core>,
	"polishing_kit" : <conarm:polishing_kit>,
	"chisel_head" : <tcomplement:chisel_head>
};

val castLiquidAmount as int[string] = {
	"sharpening_kit" : 288,
	"shard" : 72,
	"tool_rod" : 144,
	"pick_head" : 288,
	"binding" : 144,
	"shovel_head" : 288,
	"axe_head" : 288,
	"kama_head" : 288,
	"tough_tool_rod" : 432,
	"hammer_head" : 1152,
	"large_plate" : 1152,
	"excavator_head" : 1152,
	"tough_binding" : 432,
	"broad_axe_head" : 1152,
	"scythe_head" : 1152,
	"sword_blade" : 288,
	"wide_guard" : 144,
	"hand_guard" : 144,
	"cross_guard" : 144,
	"large_sword_blade" : 1152,
	"bow_limb" : 432,
	"bow_string" : 144,
	"arrow_head" : 288,
	"knife_blade" : 144,
	"helmet_core" : 576,
	"armor_plate" : 432,
	"armor_trim" : 144,
	"chest_core" : 864,
	"leggings_core" : 720,
	"boots_core" : 576,
	"polishing_kit" : 288,
	"chisel_head" : 144,
	"ingot" : 144,
	"nugget" : 16,
	"plate" : 144,
	"gear" : 576,
	"block" : 1296,
	"ore" : 144,
	"dust" : 144,
	"stick" : 288,
	"gem" : 30,
	"bucket" : 432,
	"coin" : 48
};

val liquidSource as int[IIngredient][string] = {
	"iron" : {
		<ore:chunkIron> : 288,
		<ore:rockyChunkIron> : 144,
		<ore:lightPlateIron> : 144,
		<ore:heavyPlateIron> : 288,
		<minecraft:iron_horse_armor> : 576,
		<minecraft:anvil> : 4464,
		<jaff:iron_hook> : 64,
		<ore:blockSheetmetalIron> : 144,
		<ore:slabSheetmetalIron> : 72,
		<immersiveengineering:metal_device0:4> : 936,
		<immersiveengineering:metal_device0:6> : 684,
		<immersiveengineering:metal_device1:6> : 108,
		<immersiveengineering:drillhead:1> : 3312,
		<immersiveengineering:jerrycan> : 2304,
		<quark:iron_plate> : 48,
		//<abyssalcraft:ironp> : 144,
		<techreborn:smalldust:27> : 36,
		<ore:clusterIron> : 288,
		<ore:clumpMagnetite> : 144,
		<ore:dustSmallIron> : 36,
		<ore:dustTinyIron> : 9,
		<minecraft:shears> : 288,
		<magneticraft:crafting:5> : 720,
		<thaumcraft:cluster> : 288,
		<immersivepetroleum:upgrades:2> : 1512,
		<immersivepetroleum:upgrades:3> : 1008,
		<immersivepetroleum:oil_can> : 720
	},
	"gold" : {
		<ore:chunkGold> : 288,
		<ore:rockyChunkGold> : 144,
		<ore:lightPlateGold> : 144,
		<ore:heavyPlateGold> : 288,
		<ore:blockSheetmetalGold> : 144,
		<ore:slabSheetmetalGold> : 72,
		<ore:wireGold> : 72,
		<minecraft:golden_horse_armor> : 576,
		<iceandfire:goldpile> : 32,
		<thermalfoundation:tool.shears_gold> : 288,
		<techreborn:smalldust:24> : 36,
		<thaumcraft:cluster:1> : 288
	},
	"dark_steel" : {
		<enderio:block_painted_pressure_plate:8> : 288,
		<enderio:item_dark_steel_shears> : 288,
		<enderio:block_dark_iron_bars> : 54,
		<enderio:block_dark_steel_anvil> : 4464,
		<enderio:block_dark_steel_trapdoor> : 576,
		<enderio:block_dark_steel_door> : 288
	},
	"soularium" : {
		<enderio:block_painted_pressure_plate:10> : 288
	},
	"end_steel" : {
		<enderio:block_end_iron_bars> : 54
	},
	"tritanium" : {
		<matteroverdrive:decorative.vent.bright> : 96
	},
	"aluminum" : {
		<ore:chunkAluminum> : 288,
		<ore:rockyChunkAluminum> : 144,
		<ore:slabAluminum> : 648,
		<ore:blockSheetmetalAluminum> : 144,
		<ore:slabSheetmetalAluminum> : 72,
		<ore:wireAluminum> : 72,
		<ore:fenceAluminum> : 240,
		<ore:scaffoldingAluminum> : 108,
		<immersiveengineering:metal_decoration1_slab:5> : 54,
		<immersiveengineering:metal_decoration1_slab:6> : 54,
		<immersiveengineering:metal_decoration1_slab:7> : 54,
		<immersiveengineering:metal_decoration2:3> : 504,
		<immersiveengineering:aluminum_scaffolding_stairs0> : 81,
		<immersiveengineering:aluminum_scaffolding_stairs1> : 81,
		<immersiveengineering:aluminum_scaffolding_stairs2> : 81,
		<thermalfoundation:tool.shears_aluminum> : 288,
		<techreborn:smalldust:1> : 36
	},
	"brass" : {
		<thaumcraft:baubles:1> : 128,
		<techreborn:smalldust:6> : 36
	},
	"bronze" : {
		<thermalfoundation:tool.shears_bronze> : 288,
		<foundry:bronzecauldron> : 1008,
		<techreborn:smalldust:7> : 36,
		<techreborn:wrench> : 624
	},
	"copper" : {
		<ore:chunkCopper> : 288,
		<ore:rockyChunkCopper> : 144,
		<ore:lightPlateCopper> : 144,
		<ore:heavyPlateCopper> : 288,
		<ore:slabCopper> : 648,
		<ore:blockSheetmetalCopper> : 144,
		<ore:slabSheetmetalCopper> : 72,
		<ore:wireCopper> : 72,
		<magneticraft:electric_cable> : 12,
		<projectred-exploration:stone_wall:8> : 1296,
		<thermalfoundation:tool.shears_copper> : 288,
		<techreborn:smalldust:14> : 36,
		<thaumcraft:cluster:2> : 288
	},
	"electrum" : {
		<ore:slabElectrum> : 648,
		<ore:blockSheetmetalElectrum> : 144,
		<ore:slabSheetmetalElectrum> : 72,
		<ore:wireElectrum> : 72,
		<thermalfoundation:tool.shears_electrum> : 288,
		<techreborn:smalldust:17> : 36
	},
	"invar" : {
		<thermalfoundation:tool.shears_invar> : 288,
		<techreborn:smalldust:26> : 36
	},
	"lead" : {
		<ore:chunkLead> : 288,
		<ore:rockyChunkLead> : 144,
		<ore:lightPlateLead> : 144,
		<ore:heavyPlateLead> : 288,
		<ore:slabLead> : 648,
		<ore:blockSheetmetalLead> : 144,
		<ore:slabSheetmetalLead> : 72,
		<techreborn:smalldust:29> : 36,
		<thermalfoundation:tool.shears_lead> : 288,
		<thaumcraft:cluster:5> : 288
	},
	"nickel" : {
		<ore:chunkNickel> : 288,
		<ore:rockyChunkNickel> : 144,
		<ore:slabNickel> : 648,
		<ore:blockSheetmetalNickel> : 144,
		<ore:slabSheetmetalNickel> : 72,
		<techreborn:smalldust:34> : 36,
		<thermalfoundation:tool.shears_nickel> : 288
	},
	"platinum" : {
		<thermalfoundation:tool.shears_platinum> : 288,
		<techreborn:smalldust:38> : 36
	},
	"silver" : {
		<ore:chunkSilver> : 288,
		<ore:rockyChunkSilver> : 144,
		<ore:slabSilver> : 648,
		<ore:blockSheetmetalSilver> : 144,
		<ore:slabSheetmetalSilver> : 72,
		<iceandfire:silverpile> : 32,
		<thermalfoundation:tool.shears_silver> : 288,
		<techreborn:smalldust:47> : 36,
		<thaumcraft:cluster:4> : 288
	},
	"steel" : {
		<ore:lightPlateSteel> : 144,
		<ore:heavyPlateSteel> : 288,
		<ore:slabSteel> : 648,
		<ore:blockSheetmetalSteel> : 144,
		<ore:slabSheetmetalSteel> : 72,
		<ore:wireSteel> : 72,
		<ore:fenceSteel> : 240,
		<ore:scaffoldingSteel> : 108,
		<immersiveengineering:metal_decoration1_slab:1> : 54,
		<immersiveengineering:metal_decoration1_slab:2> : 54,
		<immersiveengineering:metal_decoration1_slab:3> : 54,
		<immersiveengineering:steel_scaffolding_stairs0> : 81,
		<immersiveengineering:steel_scaffolding_stairs1> : 81,
		<immersiveengineering:steel_scaffolding_stairs2> : 81,
		<immersiveengineering:metal_decoration2:1> : 504,
		<immersiveengineering:metal_decoration2:5> : 936,
		<immersiveengineering:material:16> : 720,
		<immersiveengineering:material:14> : 432,
		<immersiveengineering:drillhead> : 3312,
		<immersiveengineering:mold> : 720,
		<immersiveengineering:mold:1> : 720,
		<immersiveengineering:mold:2> : 720,
		<immersiveengineering:mold:3> : 720,
		<immersiveengineering:mold:4> : 720,
		<immersiveengineering:mold:5> : 720,
		<immersiveengineering:mold:6> : 720,
		<immersiveengineering:mold:7> : 720,
		<engineersdoors:trapdoor_steel> : 576,
		<engineersdoors:door_steel> : 288,
		<immersivepetroleum:upgrades> : 1872,
		<immersivepetroleum:upgrades:1> : 2160,
		<thermalfoundation:tool.shears_steel> : 288,
		<techreborn:smalldust:51> : 36
	},
	"tin" : {
		<ore:chunkTin> : 288,
		<ore:rockyChunkTin> : 144,
		<ore:wireTin> : 72,
		<projectred-exploration:stone_wall:9> : 1296,
		<thermalfoundation:tool.shears_tin> : 288,
		<techreborn:smalldust:53> : 36,
		<techreborn:dynamiccell> : 36,
		<thaumcraft:cluster:3> : 288
	},
	"zinc" : {
		<ore:chunkZinc> : 288,
		<ore:rockyChunkZinc> : 144,
		<techreborn:smalldust:59> : 36
	},
	"constantan" : {
		<ore:slabConstantan> : 648,
		<ore:blockSheetmetalConstantan> : 144,
		<ore:slabSheetmetalConstantan> : 72,
		<thermalfoundation:tool.shears_constantan> : 288
	},
	"cobalt" : {
		<ore:chunkCobalt> : 288,
		<ore:rockyChunkCobalt> : 144
	},
	"osmium" : {
		<ore:chunkOsmium> : 288,
		<ore:rockyChunkOsmium> : 144
	},
	"mithril" : {
		<ore:chunkMithril> : 288,
		<ore:rockyChunkMithril> : 144
	},
	"tough" : {
		<nuclearcraft:part:5> : 432
	},
	"uranium" : {
		<ore:slabUranium> : 648,
		<ore:blockSheetmetalUranium> : 144,
		<ore:slabSheetmetalUranium> : 72
	}
};

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output);
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output);

for metal, fluid in metalMolten {
	var temp = metalTemperature[metal];
	
	//Melting
	if(!isNull(liquidSource[metal])) {
		for entry, amount in liquidSource[metal] {
			addMelting(entry, fluid, amount, temp);
		}
	}
	for part, ore_entry in metalOres[metal] {
		addMelting(ore_entry, fluid, castLiquidAmount[part], temp);
	}
	if(!isNull(dataTags[metal])) {
		for part, entry in tinkerToolParts {
			addTinkerToolMelting(entry.withTag(dataTags[metal]), fluid, castLiquidAmount[part], temp);
		}
	}
	
	//Casting
	for part, amount in castLiquidAmount {
		if(!isNull(dataTags[metal]) & !isNull(tinkerToolParts[part])) {
			var tinker_part = tinkerToolParts[part].withTag(dataTags[metal]);
			mods.tconstruct.Casting.removeTableRecipe(tinker_part);
			if(!isNull(dataTags[part])) {
				mods.tconstruct.Casting.addTableRecipe(tinker_part, tinkerPartCasts.metal.withTag(dataTags[part]), fluid, amount, false);
				mods.tconstruct.Casting.addTableRecipe(tinker_part, tinkerPartCasts.clay.withTag(dataTags[part]), fluid, amount, true);
			} else if(!isNull(tinkerArmorCasts[part])) {
				mods.tconstruct.Casting.addTableRecipe(tinker_part, tinkerArmorCasts[part], fluid, amount, true);
			}
		} else if(!isNull(metalItems[metal][part]) & !isNull(tinkerItemCasts[part])) {
			mods.tconstruct.Casting.removeTableRecipe(metalItems[metal][part]);
			mods.tconstruct.Casting.addTableRecipe(metalItems[metal][part], tinkerItemCasts[part], fluid, amount, false);
		}
	}
	if(!isNull(metalItems[metal].block)) {
		var mB = castLiquidAmount.block;		
		mods.tconstruct.Casting.removeBasinRecipe(metalItems[metal].block);
		mods.tconstruct.Casting.addBasinRecipe(metalItems[metal].block, null, fluid, mB);
		mods.foundry.Casting.removeRecipe(fluid, <foundry:mold:4>);
		mods.foundry.Casting.addRecipe(metalItems[metal].block, fluid * mB, <foundry:mold:4>);
		mods.foundry.CastingTable.removeBlockRecipe(fluid);
		mods.foundry.CastingTable.addBlockRecipe(metalItems[metal].block, fluid * mB);
	}
}
addMelting(<tconstruct:bow_string>.withTag(dataTags.soularium), metalMolten.soularium, castLiquidAmount.bow_string, metalTemperature.soularium);

mods.tconstruct.Casting.removeTableRecipe(<minecraft:bucket>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:bucket>, tinkerItemCasts.bucket, metalMolten.iron, castLiquidAmount.bucket, false);
mods.tconstruct.Casting.addTableRecipe(<primal:bucket_clay>, tinkerItemCasts.bucket, <liquid:clay>, 720, false);

val shaft_materials as IItemStack[string] = {
	"wood" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["wood","iron"]}}),
	"bone" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["bone","iron"]}}),
	"blaze" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["blaze","iron"]}}),
	"reed" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["reed","iron"]}}),
	"ice" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["ice","iron"]}}),
	"endrod" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["endrod","iron"]}}),
	"treatedwood" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["treatedwood","iron"]}}),
	"livingwood" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["livingwood","iron"]}}),
	"weedwood" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["weedwood","iron"]}}),
	"nagascale" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["nagascale","iron"]}}),
	"steeleaf" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["steeleaf","iron"]}}),
	"fierymetal" : <tconstruct:bolt_core>.withTag({TinkerData:{Materials:["fierymetal","iron"]}})
};

for material, bolt_core in shaft_materials {
	var shaft = <tconstruct:tool_rod>.withTag(dataTags[material]);
	mods.tconstruct.Casting.addTableRecipe(bolt_core, shaft, metalMolten.iron, 144, true);
}

//mods.foundry.AlloyingCrucible.addRecipe(ILiquidStack output, ILiquidStack input_a, ILiquidStack input_b);
//mods.foundry.AlloyingCrucible.removeRecipe(ILiquidStack input_a, ILiquidStack input_b);
//mods.foundry.AlloyMixer.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
//mods.foundry.AlloyMixer.removeRecipe(ILiquidStack[] inputs);

//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
//mods.tconstruct.Alloy.removeRecipe(ILiquidStack output);

val metalAlloys as ILiquidStack[][ILiquidStack] = {
	metalMolten["invar"] * 144 : [
		metalMolten["iron"] * 96,
		metalMolten["nickel"] * 48
	],
	metalMolten["steel"] * 18 : [
		metalMolten["iron"] * 18,
		<liquid:coal> * 25
	],
	metalMolten["knightslime"] * 72 : [
		metalMolten["iron"] * 72,
		<liquid:purpleslime> * 125,
		<liquid:stone> * 144
	],
	metalMolten["pigiron"] * 144 : [
		metalMolten["iron"] * 144,
		<liquid:coal> * 40,
		<liquid:clay> * 72
	],
	metalMolten["pulsating_iron"] * 72 : [
		metalMolten["iron"] * 72,
		<liquid:ender> * 125
	],
	metalMolten["conductive_iron"] * 36 : [
		metalMolten["iron"] * 36,
		<liquid:redstone> * 25
	],
	metalMolten["dark_steel"] * 36 : [
		metalMolten["iron"] * 36,
		<liquid:coal> * 25,
		<liquid:obsidian> * 36
	],
	metalMolten["electrum"] * 32 : [
		metalMolten["gold"] * 16,
		metalMolten["silver"] * 16
	],
	metalMolten["energetic_alloy"] * 72 : [
		metalMolten["gold"] * 72,
		<liquid:redstone> * 50,
		<liquid:glowstone> * 125
	],
	<liquid:alubrass> * 64 : [
		metalMolten["copper"] * 16,
		metalMolten["aluminum"] * 48
	],
	metalMolten["brass"] * 48 : [
		metalMolten["copper"] * 32,
		metalMolten["zinc"] * 16
	],
	metalMolten["constantan"] * 32 : [
		metalMolten["copper"] * 16,
		metalMolten["nickel"] * 16
	],
	metalMolten["bronze"] * 64 : [
		metalMolten["copper"] * 48,
		metalMolten["tin"] * 16
	],
	metalMolten["signalum"] * 144 : [
		metalMolten["copper"] * 108,
		metalMolten["silver"] * 36,
		<liquid:redstone> * 250
	],
	metalMolten["enderium"] * 144 : [
		metalMolten["lead"] * 108,
		metalMolten["platinum"] * 36,
		<liquid:ender> * 250
	],
	metalMolten["lumium"] * 144 : [
		metalMolten["tin"] * 108,
		metalMolten["silver"] * 36,
		<liquid:glowstone> * 250
	],
	<liquid:ferroboron> * 32 : [
		metalMolten["steel"] * 16,
		metalMolten["boron"] * 16
	]
};

for output, inputs in metalAlloys {
	mods.tconstruct.Alloy.removeRecipe(output);
	mods.foundry.AlloyMixer.removeRecipe(inputs);
	mods.tconstruct.Alloy.addRecipe(output, inputs);
	mods.foundry.AlloyMixer.addRecipe(output, inputs);
	if(inputs.length == 2) {
		mods.foundry.AlloyingCrucible.removeRecipe(inputs[0], inputs[1]);
		mods.foundry.AlloyingCrucible.addRecipe(output, inputs[0], inputs[1]);
	}
}

val meltingToRemove as IItemStack[] = [
	<techreborn:iron_furnace>,
	<magneticraft:chunks:6>,
	<magneticraft:rocky_chunks:6>,
	<magneticraft:light_plates:4>,
	<magneticraft:heavy_plates:4>,
	<magneticraft:light_plates:9>,
	<magneticraft:heavy_plates:9>,
	<magneticraft:light_plates:10>,
	<magneticraft:heavy_plates:10>,
	<magneticraft:light_plates:12>,
	<magneticraft:heavy_plates:12>,
	<magneticraft:light_plates:13>,
	<magneticraft:heavy_plates:13>,
	<magneticraft:light_plates:14>,
	<magneticraft:heavy_plates:14>
];

for item in meltingToRemove {
	removeMeltingItem(item);
}

//Glass Melting

val glass_temp as int = 880;

val liquidGlass as ILiquidStack[string] = {
	"clear" : <liquid:liquidglass>,
	"white" : <liquid:liquidglasswhite>,
	"orange" : <liquid:liquidglassorange>,
	"magenta" : <liquid:liquidglassmagenta>,
	"lightblue" : <liquid:liquidglasslight_blue>,
	"yellow" : <liquid:liquidglassyellow>,
	"lime" : <liquid:liquidglasslime>,
	"pink" : <liquid:liquidglasspink>,
	"gray" : <liquid:liquidglassgray>,
	"lightgray" : <liquid:liquidglasssilver>,
	"cyan" : <liquid:liquidglasscyan>,
	"purple" : <liquid:liquidglasspurple>,
	"blue" : <liquid:liquidglassblue>,
	"brown" : <liquid:liquidglassbrown>,
	"green" : <liquid:liquidglassgreen>,
	"red" : <liquid:liquidglassred>,
	"black" : <liquid:liquidglassblack>
};

for glass, liquid in liquidGlass {
	liquid.definition.temperature = glass_temp;
}

removeMeltingLiquid(<liquid:glass>);

val glassLiquidAmount as int[string] = {
	"block" : 1296,
	"pane" : 486,
	"shard" : 324
};

val glassItem as IItemStack[string][string] = {
	"clear" : {
		"block" : <minecraft:glass>,
		"pane" : <minecraft:glass_pane>,
		"shard" : <quark:glass_shards>
	},
	"white" : {
		"block" : <minecraft:stained_glass>,
		"pane" : <minecraft:stained_glass_pane>,
		"shard" : <quark:glass_shards:1>
	},
	"orange" : {
		"block" : <minecraft:stained_glass:1>,
		"pane" : <minecraft:stained_glass_pane:1>,
		"shard" : <quark:glass_shards:2>
	},
	"magenta" : {
		"block" : <minecraft:stained_glass:2>,
		"pane" : <minecraft:stained_glass_pane:2>,
		"shard" : <quark:glass_shards:3>
	},
	"lightblue" : {
		"block" : <minecraft:stained_glass:3>,
		"pane" : <minecraft:stained_glass_pane:3>,
		"shard" : <quark:glass_shards:4>
	},
	"yellow" : {
		"block" : <minecraft:stained_glass:4>,
		"pane" : <minecraft:stained_glass_pane:4>,
		"shard" : <quark:glass_shards:5>
	},
	"lime" : {
		"block" : <minecraft:stained_glass:5>,
		"pane" : <minecraft:stained_glass_pane:5>,
		"shard" : <quark:glass_shards:6>
	},
	"pink" : {
		"block" : <minecraft:stained_glass:6>,
		"pane" : <minecraft:stained_glass_pane:6>,
		"shard" : <quark:glass_shards:7>
	},
	"gray" : {
		"block" : <minecraft:stained_glass:7>,
		"pane" : <minecraft:stained_glass_pane:7>,
		"shard" : <quark:glass_shards:8>
	},
	"lightgray" : {
		"block" : <minecraft:stained_glass:8>,
		"pane" : <minecraft:stained_glass_pane:8>,
		"shard" : <quark:glass_shards:9>
	},
	"cyan" : {
		"block" : <minecraft:stained_glass:9>,
		"pane" : <minecraft:stained_glass_pane:9>,
		"shard" : <quark:glass_shards:10>
	},
	"purple" : {
		"block" : <minecraft:stained_glass:10>,
		"pane" : <minecraft:stained_glass_pane:10>,
		"shard" : <quark:glass_shards:11>
	},
	"blue" : {
		"block" : <minecraft:stained_glass:11>,
		"pane" : <minecraft:stained_glass_pane:11>,
		"shard" : <quark:glass_shards:12>
	},
	"brown" : {
		"block" : <minecraft:stained_glass:12>,
		"pane" : <minecraft:stained_glass_pane:12>,
		"shard" : <quark:glass_shards:13>
	},
	"green" : {
		"block" : <minecraft:stained_glass:13>,
		"pane" : <minecraft:stained_glass_pane:13>,
		"shard" : <quark:glass_shards:14>
	},
	"red" : {
		"block" : <minecraft:stained_glass:14>,
		"pane" : <minecraft:stained_glass_pane:14>,
		"shard" : <quark:glass_shards:15>
	},
	"black" : {
		"block" : <minecraft:stained_glass:15>,
		"pane" : <minecraft:stained_glass_pane:15>,
		"shard" : <quark:glass_shards:16>
	}
};

val glassOre as IIngredient[string][string] = {
	"clear" : {
		"block" : <ore:blockGlassColorless>,
		"pane" : <ore:paneGlassColorless>
	},
	"white" : {
		"block" : <ore:blockGlassWhite>,
		"pane" : <ore:paneGlassWhite>
	},
	"orange" : {
		"block" : <ore:blockGlassOrange>,
		"pane" : <ore:paneGlassOrange>
	},
	"magenta" : {
		"block" : <ore:blockGlassMagenta>,
		"pane" : <ore:paneGlassMagenta>
	},
	"lightblue" : {
		"block" : <ore:blockGlassLightBlue>,
		"pane" : <ore:paneGlassLightBlue>
	},
	"yellow" : {
		"block" : <ore:blockGlassYellow>,
		"pane" : <ore:paneGlassYellow>
	},
	"lime" : {
		"block" : <ore:blockGlassLime>,
		"pane" : <ore:paneGlassLime>
	},
	"pink" : {
		"block" : <ore:blockGlassPink>,
		"pane" : <ore:paneGlassPink>
	},
	"gray" : {
		"block" : <ore:blockGlassGray>,
		"pane" : <ore:paneGlassGray>
	},
	"lightgray" : {
		"block" : <ore:blockGlassLightGray>,
		"pane" : <ore:paneGlassLightGray>
	},
	"cyan" : {
		"block" : <ore:blockGlassCyan>,
		"pane" : <ore:paneGlassCyan>
	},
	"purple" : {
		"block" : <ore:blockGlassPurple>,
		"pane" : <ore:paneGlassPurple>
	},
	"blue" : {
		"block" : <ore:blockGlassBlue>,
		"pane" : <ore:paneGlassBlue>
	},
	"brown" : {
		"block" : <ore:blockGlassBrown>,
		"pane" : <ore:paneGlassBrown>
	},
	"green" : {
		"block" : <ore:blockGlassGreen>,
		"pane" : <ore:paneGlassGreen>
	},
	"red" : {
		"block" : <ore:blockGlassRed>,
		"pane" : <ore:paneGlassRed>
	},
	"black" : {
		"block" : <ore:blockGlassBlack>,
		"pane" : <ore:paneGlassBlack>
	}
};

for color, glass_items in glassItem {
	removeMeltingLiquid(liquidGlass[color]);
	addMelting(glassOre[color].block, liquidGlass[color], glassLiquidAmount.block, glass_temp);
	addMelting(glassOre[color].pane, liquidGlass[color], glassLiquidAmount.pane, glass_temp);
	addMelting(glass_items.shard, liquidGlass[color], glassLiquidAmount.shard, glass_temp);
	
	mods.tconstruct.Casting.removeTableRecipe(glass_items.pane);
	mods.tconstruct.Casting.addTableRecipe(glass_items.pane, null, liquidGlass[color], glassLiquidAmount.pane);
	mods.tconstruct.Casting.removeBasinRecipe(glass_items.block);
	mods.tconstruct.Casting.addBasinRecipe(glass_items.block, null, liquidGlass[color], glassLiquidAmount.block);
	mods.foundry.Casting.removeRecipe(liquidGlass[color], <foundry:mold:4>);
	mods.foundry.Casting.addRecipe(glass_items.block, liquidGlass[color] * glassLiquidAmount.block, <foundry:mold:4>);
	mods.foundry.CastingTable.removeBlockRecipe(liquidGlass[color]);
	mods.foundry.CastingTable.addBlockRecipe(glass_items.block, liquidGlass[color] * glassLiquidAmount.block);
}
mods.tconstruct.Casting.addTableRecipe(<quark:glass_item_frame>, <minecraft:item_frame>, liquidGlass.clear, 1944, true);
mods.foundry.Casting.addRecipe(<primal:slab_glass>, liquidGlass.clear * 648, <foundry:mold:5>);

val glassItems as int[IIngredient] = {
	<astralsorcery:itemcraftingcomponent:3> : 486,
	<primal:slab_glass> : 648,
	<primal:thin_slab_glass> : 324,
	<quark:glass_item_frame> : 1944,
	<terraqueous:doodads:6> : 1296,
	<terraqueous:item_main:108> : 324,
	<ore:sand> : 1296
};

for item, amount in glassItems {
	addMelting(item, liquidGlass.clear, amount, glass_temp);
}