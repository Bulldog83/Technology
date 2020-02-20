
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.globals.Utility.strToName;

function recipeHelmet(material as IIngredient, helmet as IItemStack, pad as IIngredient, clamping as IIngredient, builder as RecipeBuilder, tool as IIngredient) {
	Disabling.markForRemove(helmet);
	builder
		.setShaped([
			[clamping,material,clamping],
			[material,pad,material]
		])
		.addOutput(helmet)
		.addTool(tool, 3)
		.create();
}

function recipeChestplate(material as IIngredient, chestplate as IItemStack, pad as IIngredient, clamping as IIngredient, builder as RecipeBuilder, tool as IIngredient) {
	Disabling.markForRemove(chestplate);
	builder
		.setShaped([
			[material,pad,material],
			[clamping,material,clamping],
			[material,material,material]
		])
		.addOutput(chestplate)
		.addTool(tool, 5)
		.create();
}

function recipeLeggings(material as IIngredient, leggings as IItemStack, pad as IIngredient, clamping as IIngredient, builder as RecipeBuilder, tool as IIngredient) {
	Disabling.markForRemove(leggings);
	builder
		.setShaped([
			[clamping,material,clamping],
			[material,pad,material],
			[material,null,material]
		])
		.addOutput(leggings)
		.addTool(tool, 5)
		.create();
}

function recipeBoots(material as IIngredient, boots as IItemStack, pad as IIngredient, clamping as IIngredient, builder as RecipeBuilder, tool as IIngredient) {
	Disabling.markForRemove(boots);
	builder
		.setShaped([
			[clamping,pad,clamping],
			[material,null,material],
			[material,null,material]
		])
		.addOutput(boots)
		.addTool(tool, 3)
		.create();
}

function copyLeatherRecipe(item as IItemStack) {
	builderTanner.convertRecipe(item, art_tools.needle, 3);
}

function addRadiationShield(item as IItemStack) {
	val shielding = <nuclearcraft:rad_shielding:*>;
	recipes.addShapeless(strToName("protect_" ~ item.definition.id ~ "_" ~ item.displayName ~ "_with_shielding"), item, [item.marked("armor"),shielding.marked("shield")], 
		function(out, ins, cInfo) {			
			val shieldingProtect as IData[] = [
				{ncRadiationResistance: 1.0E-4 as double},
				{ncRadiationResistance: 0.01 as double},
				{ncRadiationResistance: 1.0 as double}
			];
			val meta as int = ins.shield.metadata;
			val tags as IData = ins.armor.hasTag ? ins.armor.tag + shieldingProtect[meta] : shieldingProtect[meta];
			
			return out.withTag(tags);
	}, null);
	
	val plastic = <nuclearcraft:part:6>;
	val shield_high = <nuclearcraft:rad_shielding:2>;
	recipes.addShaped(strToName("heavy_shielding_" ~ item.definition.id ~ "_" ~ item.displayName), item, [[plastic,shield_high,plastic],[shield_high,item.marked("armor"),shield_high]], 
		function(out, ins, cInfo) {			
			val protect as IData = {ncRadiationResistance: 3.0 as double};
			val tags as IData = ins.armor.hasTag ? ins.armor.tag + protect : protect;
			
			return out.withTag(tags);
	}, null);
}

function createRecipes(input as IItemStack[string][string][IIngredient]) {
	val blacksmithBuilder = builderBlacksmith.builder();
	for material, items in input {
		if(!isNull(items.helmet)) {
			recipeHelmet(material, items.helmet.item, items.helmet.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
			addRadiationShield(items.helmet.item);
		}
		if(!isNull(items.chestplate)) {
			recipeChestplate(material, items.chestplate.item, items.chestplate.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
			addRadiationShield(items.chestplate.item);
		}
		if(!isNull(items.leggings)) {
			recipeLeggings(material, items.leggings.item, items.leggings.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
			addRadiationShield(items.leggings.item);
		}
		if(!isNull(items.boots)) {
			recipeBoots(material, items.boots.item, items.boots.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
			addRadiationShield(items.boots.item);
		}
	}
}

val blacksmithBuilder = builderBlacksmith.builder();
val tannerBuilder = builderTanner.builder();
val basicBuilder = builderBasic.builder();
val engineerBuilder = builderEngineer.builder();

val fluxArmor as IItemStack[string] = {
	helmet: <redstonearsenal:armor.helmet_flux>.withTag({Energy:0}),
	chestplate: <redstonearsenal:armor.plate_flux>.withTag({Energy:0}),
	leggings: <redstonearsenal:armor.legs_flux>.withTag({Energy:0}),
	boots: <redstonearsenal:armor.boots_flux>.withTag({Energy:0})
};

val flux_plate = <ore:plateElectrumFlux>;
val flux_cover = <redstonearsenal:material:224>;
recipeHelmet(flux_plate, fluxArmor.helmet, <minecraft:iron_helmet>, flux_cover, engineerBuilder, art_tools.driver);
recipeChestplate(flux_plate, fluxArmor.chestplate, <minecraft:iron_chestplate>, flux_cover, engineerBuilder, art_tools.driver);
recipeLeggings(flux_plate, fluxArmor.leggings, <minecraft:iron_leggings>, flux_cover, engineerBuilder, art_tools.driver);
recipeBoots(flux_plate, fluxArmor.boots, <minecraft:iron_boots>, flux_cover, engineerBuilder, art_tools.driver);
addRadiationShield(fluxArmor.helmet);
addRadiationShield(fluxArmor.chestplate);
addRadiationShield(fluxArmor.leggings);
addRadiationShield(fluxArmor.boots);

val enchData as IData[string][string] = {
	imp : {
		helmet: {ench: [{lvl:1,id:0},{lvl:1,id:1}]},
		chestplate: {ench: [{lvl:1,id:3},{lvl:1,id:1}]},
		leggings: {ench: [{lvl:1,id:4},{lvl:1,id:1}]},
		boots: {ench: [{lvl:1,id:2},{lvl:1,id:1}]}
	},
	naga : {
		chestplate: {ench: [{lvl:3,id:1}]},
		leggings: {ench: [{lvl:3,id:0}]}
	},
	ironwood : {
		helmet: {ench: [{lvl:1,id:6}]},
		chestplate: {ench: [{lvl:1,id:0}]},
		leggings: {ench: [{lvl:1,id:0}]},
		boots: {ench: [{lvl:1,id:2}]}
	},
	steeleaf : {
		helmet: {ench: [{lvl:2,id:4}]},
		chestplate: {ench: [{lvl:2,id:3}]},
		leggings: {ench: [{lvl:2,id:1}]},
		boots: {ench: [{lvl:2,id:2}]}
	},
	yeti : {
		helmet: {ench: [{lvl:2,id:0}]},
		chestplate: {ench: [{lvl:2,id:0}]},
		leggings: {ench: [{lvl:2,id:0}]},
		boots: {ench: [{lvl:2,id:0},{lvl:4,id:2}]}
	}
};

val armorLeather as IItemStack[string][string] = {
	leather: {
			helmet: <minecraft:leather_helmet>,
		chestplate: <minecraft:leather_chestplate>,
		  leggings: <minecraft:leather_leggings>,
			 boots: <minecraft:leather_boots>
	},
	tanned: {
			helmet: <betterwithmods:leather_tanned_helmet>,
		chestplate: <betterwithmods:leather_tanned_chest>,
		  leggings: <betterwithmods:leather_tanned_pants>,
			 boots: <betterwithmods:leather_tanned_boots>
	},
	imp: {
			helmet: <natura:imp_armor_helmet>.withTag(enchData.imp.helmet),
		chestplate: <natura:imp_armor_chestplate>.withTag(enchData.imp.chestplate),
		  leggings: <natura:imp_armor_leggings>.withTag(enchData.imp.leggings),
			 boots: <natura:imp_armor_boots>.withTag(enchData.imp.boots)
	},
	yeti : {
		helmet: <twilightforest:yeti_helmet>.withTag(enchData.yeti.helmet),
		chestplate: <twilightforest:yeti_chestplate>.withTag(enchData.yeti.chestplate),
		leggings: <twilightforest:yeti_leggings>.withTag(enchData.yeti.leggings),
		boots: <twilightforest:yeti_boots>.withTag(enchData.yeti.boots)
	},
	arctic : {
		helmet: <twilightforest:arctic_helmet>,
		chestplate: <twilightforest:arctic_chestplate>,
		leggings: <twilightforest:arctic_leggings>,
		boots: <twilightforest:arctic_boots>
	},
	lurker : {
		helmet: <thebetweenlands:lurker_skin_helmet>,
		chestplate: <thebetweenlands:lurker_skin_chestplate>,
		leggings: <thebetweenlands:lurker_skin_leggings>,
		boots: <thebetweenlands:lurker_skin_boots>
	}
};

val materialLeather as IIngredient[string][string] = {
	leather: {
		material: <ore:leather>,
		cordage: <ore:cordageQuality>
	},
	tanned: {
		material: <ore:leatherTannedCut>,
		cordage: <ore:cordageQuality>
	},
	imp: {
		material: <natura:materials:6>,
		cordage: <ore:cordageNether>
	},
	yeti: {
		material: <twilightforest:alpha_fur>,
		cordage: <ore:cordageQuality>
	},
	arctic: {
		material: <twilightforest:arctic_fur>,
		cordage: <ore:cordageQuality>
	},
	lurker: {
		material: <thebetweenlands:items_misc:4>,
		cordage: <thebetweenlands:items_misc:7>
	}
};

for type, parts in armorLeather {
	recipeHelmet(materialLeather[type].material, parts.helmet, null, materialLeather[type].cordage, tannerBuilder, art_tools.needle);
	recipeChestplate(materialLeather[type].material, parts.chestplate, null, materialLeather[type].cordage, tannerBuilder, art_tools.needle);
	recipeLeggings(materialLeather[type].material, parts.leggings, null, materialLeather[type].cordage, tannerBuilder, art_tools.needle);
	recipeBoots(materialLeather[type].material, parts.boots, null, materialLeather[type].cordage, tannerBuilder, art_tools.needle);
	
	for part, item in parts {
		addRadiationShield(item);
	}
}

val cordage_between = <thebetweenlands:items_misc:7>;
val bone_between = <thebetweenlands:items_misc:14>;
recipeHelmet(bone_between, <thebetweenlands:bone_helmet>, armorLeather.leather.helmet, cordage_between, basicBuilder, art_tools.needle);
recipeChestplate(bone_between, <thebetweenlands:bone_chestplate>, armorLeather.leather.chestplate, cordage_between, basicBuilder, art_tools.needle);
recipeLeggings(bone_between, <thebetweenlands:bone_leggings>, armorLeather.leather.leggings, cordage_between, basicBuilder, art_tools.needle);
recipeBoots(bone_between, <thebetweenlands:bone_boots>, armorLeather.leather.boots, cordage_between, basicBuilder, art_tools.needle);
addRadiationShield(<thebetweenlands:bone_helmet>);
addRadiationShield(<thebetweenlands:bone_chestplate>);
addRadiationShield(<thebetweenlands:bone_leggings>);
addRadiationShield(<thebetweenlands:bone_boots>);

val circuit = <matteroverdrive:isolinear_circuit:1>;
val tritanium_helmet = <matteroverdrive:tritanium_helmet>;
val tritanium_chestplate = <matteroverdrive:tritanium_chestplate>;
val tritanium_leggings = <matteroverdrive:tritanium_leggings>;
val tritanium_boots = <matteroverdrive:tritanium_boots>;
recipeHelmet(metalOres.tritanium.plate, tritanium_helmet, armorLeather.tanned.helmet, circuit, engineerBuilder, art_tools.driver);
recipeChestplate(metalOres.tritanium.plate, tritanium_chestplate, armorLeather.tanned.chestplate, circuit, engineerBuilder, art_tools.driver);
recipeLeggings(metalOres.tritanium.plate, tritanium_leggings, armorLeather.tanned.leggings, circuit, engineerBuilder, art_tools.driver);
recipeBoots(metalOres.tritanium.plate, tritanium_boots, armorLeather.tanned.boots, circuit, engineerBuilder, art_tools.driver);
addRadiationShield(tritanium_helmet);
addRadiationShield(tritanium_chestplate);
addRadiationShield(tritanium_leggings);
addRadiationShield(tritanium_boots);

val chainArmors as IItemStack[string][string][IIngredient] = {
	<twilightforest:naga_scale> : {
		chestplate: {
			item: <twilightforest:naga_chestplate>.withTag(enchData.naga.chestplate),
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <twilightforest:naga_leggings>.withTag(enchData.naga.leggings),
			pad: armorLeather.tanned.leggings
		}
	},
	<ore:ingotSteeleaf> : {
		helmet: {
			item: <twilightforest:steeleaf_helmet>.withTag(enchData.steeleaf.helmet),
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <twilightforest:steeleaf_chestplate>.withTag(enchData.steeleaf.chestplate),
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <twilightforest:steeleaf_leggings>.withTag(enchData.steeleaf.leggings),
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <twilightforest:steeleaf_boots>.withTag(enchData.steeleaf.boots),
			pad: armorLeather.tanned.boots
		}
	},
	<ore:gemBoronNitride> : {
		helmet: {
			item: <nuclearcraft:helm_boron_nitride>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <nuclearcraft:chest_boron_nitride>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <nuclearcraft:legs_boron_nitride>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <nuclearcraft:boots_boron_nitride>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_silver> : {
		helmet: {
			item: <iceandfire:armor_silver_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_silver_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_silver_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_silver_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_sapphire> : {
		helmet: {
			item: <iceandfire:armor_sapphire_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_sapphire_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_sapphire_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_sapphire_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_white> : {
		helmet: {
			item: <iceandfire:armor_white_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_white_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_white_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_white_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_blue> : {
		helmet: {
			item: <iceandfire:armor_blue_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_blue_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_blue_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_blue_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_gray> : {
		helmet: {
			item: <iceandfire:armor_gray_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_gray_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_gray_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_gray_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_green> : {
		helmet: {
			item: <iceandfire:armor_green_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_green_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_green_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_green_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_bronze> : {
		helmet: {
			item: <iceandfire:armor_bronze_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_bronze_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_bronze_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_bronze_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:dragonscales_red> : {
		helmet: {
			item: <iceandfire:armor_red_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <iceandfire:armor_red_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <iceandfire:armor_red_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <iceandfire:armor_red_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	<iceandfire:deathworm_chitin:2> : {
		helmet: {
			item: <iceandfire:deathworm_red_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <iceandfire:deathworm_red_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <iceandfire:deathworm_red_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <iceandfire:deathworm_red_boots>,
			pad: armorLeather.leather.boots
		}
	},
	<iceandfire:deathworm_chitin:1> : {
		helmet: {
			item: <iceandfire:deathworm_white_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <iceandfire:deathworm_white_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <iceandfire:deathworm_white_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <iceandfire:deathworm_white_boots>,
			pad: armorLeather.leather.boots
		}
	},
	<iceandfire:deathworm_chitin> : {
		helmet: {
			item: <iceandfire:deathworm_yellow_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <iceandfire:deathworm_yellow_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <iceandfire:deathworm_yellow_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <iceandfire:deathworm_yellow_boots>,
			pad: armorLeather.leather.boots
		}
	},
	<ore:meshIron> : {
		helmet: {
			item: <minecraft:chainmail_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <minecraft:chainmail_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <minecraft:chainmail_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <minecraft:chainmail_boots>,
			pad: armorLeather.leather.boots
		}
	},
	<thebetweenlands:items_misc:19> : {
		helmet: {
			item: <thebetweenlands:valonite_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <thebetweenlands:valonite_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <thebetweenlands:valonite_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <thebetweenlands:valonite_boots>,
			pad: armorLeather.tanned.boots
		}
	}
};

for material, items in chainArmors {
	if(!isNull(items.helmet)) {
		recipeHelmet(material, items.helmet.item, items.helmet.pad, ore_ring_iron, blacksmithBuilder, art_tools.pliers);
		addRadiationShield(items.helmet.item);
	}
	if(!isNull(items.chestplate)) {
		recipeChestplate(material, items.chestplate.item, items.chestplate.pad, ore_ring_iron, blacksmithBuilder, art_tools.pliers);
		addRadiationShield(items.chestplate.item);
	}
	if(!isNull(items.leggings)) {
		recipeLeggings(material, items.leggings.item, items.leggings.pad, ore_ring_iron, blacksmithBuilder, art_tools.pliers);
		addRadiationShield(items.leggings.item);
	}
	if(!isNull(items.boots)) {
		recipeBoots(material, items.boots.item, items.boots.pad, ore_ring_iron, blacksmithBuilder, art_tools.pliers);
		addRadiationShield(items.boots.item);
	}
}

val plateArmors as IItemStack[string][string][IIngredient] = {
	metalOres["ironwood"].ingot : {
		helmet: {
			item: <twilightforest:ironwood_helmet>.withTag(enchData.steeleaf.ironwood),
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <twilightforest:ironwood_chestplate>.withTag(enchData.ironwood.chestplate),
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <twilightforest:ironwood_leggings>.withTag(enchData.ironwood.leggings),
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <twilightforest:ironwood_boots>.withTag(enchData.ironwood.boots),
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["fierymetal"].ingot : {
		helmet: {
			item: <twilightforest:fiery_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <twilightforest:fiery_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <twilightforest:fiery_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <twilightforest:fiery_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["knightmetal"].ingot : {
		helmet: {
			item: <twilightforest:knightmetal_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <twilightforest:knightmetal_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <twilightforest:knightmetal_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <twilightforest:knightmetal_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["void"].plate : {
		helmet: {
			item: <thaumcraft:void_helm>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <thaumcraft:void_chest>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <thaumcraft:void_legs>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <thaumcraft:void_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["thaumium"].plate : {
		helmet: {
			item: <thaumcraft:thaumium_helm>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thaumcraft:thaumium_chest>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thaumcraft:thaumium_legs>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thaumcraft:thaumium_boots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["hard_carbon"].ingot : {
		helmet: {
			item: <nuclearcraft:helm_hard_carbon>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <nuclearcraft:chest_hard_carbon>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <nuclearcraft:legs_hard_carbon>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <nuclearcraft:boots_hard_carbon>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["tough"].ingot : {
		helmet: {
			item: <nuclearcraft:helm_tough>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <nuclearcraft:chest_tough>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <nuclearcraft:legs_tough>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <nuclearcraft:boots_tough>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["boron"].ingot : {
		helmet: {
			item: <nuclearcraft:helm_boron>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <nuclearcraft:chest_boron>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <nuclearcraft:legs_boron>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <nuclearcraft:boots_boron>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["iron"].plate : {
		helmet: {
			item: <minecraft:iron_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <minecraft:iron_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <minecraft:iron_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <minecraft:iron_boots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["gold"].plate : {
		helmet: {
			item: <minecraft:golden_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <minecraft:golden_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <minecraft:golden_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <minecraft:golden_boots>,
			pad: armorLeather.leather.boots
		}
	},
	<ore:plateDiamond> : {
		helmet: {
			item: <minecraft:diamond_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <minecraft:diamond_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <minecraft:diamond_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <minecraft:diamond_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["copper"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_copper>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_copper>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_copper>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_copper>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["tin"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_tin>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_tin>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_tin>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_tin>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["silver"].plate : {
		helmet: {
			item: <iceandfire:armor_silver_metal_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <iceandfire:armor_silver_metal_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <iceandfire:armor_silver_metal_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <iceandfire:armor_silver_metal_boots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["lead"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_lead>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_lead>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_lead>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_lead>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["aluminum"].plate : {
		helmet: {
			item: <immersiveengineering:faraday_suit_head>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <immersiveengineering:faraday_suit_chest>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <immersiveengineering:faraday_suit_legs>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <immersiveengineering:faraday_suit_feet>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["nickel"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_nickel>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_nickel>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_nickel>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_nickel>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["platinum"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_platinum>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_platinum>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_platinum>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_platinum>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["bronze"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_bronze>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_bronze>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_bronze>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_bronze>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["steel"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_steel>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_steel>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_steel>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_steel>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["electrum"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_electrum>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_electrum>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_electrum>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_electrum>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["invar"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_invar>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_invar>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_invar>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_invar>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["constantan"].plate : {
		helmet: {
			item: <thermalfoundation:armor.helmet_constantan>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thermalfoundation:armor.plate_constantan>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thermalfoundation:armor.legs_constantan>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thermalfoundation:armor.boots_constantan>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["manyullyn"].ingot : {
		helmet: {
			item: <tcomplement:manyullyn_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <tcomplement:manyullyn_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <tcomplement:manyullyn_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <tcomplement:manyullyn_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["knightslime"].ingot : {
		helmet: {
			item: <tcomplement:knightslime_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <tcomplement:knightslime_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <tcomplement:knightslime_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <tcomplement:knightslime_boots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["dark_steel"].ingot : {
		helmet: {
			item: <enderio:item_dark_steel_helmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <enderio:item_dark_steel_chestplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <enderio:item_dark_steel_leggings>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <enderio:item_dark_steel_boots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["end_steel"].ingot : {
		helmet: {
			item: <enderio:item_end_steel_helmet>,
			pad: <enderio:item_material:56>
		},
		chestplate: {
			item: <enderio:item_end_steel_chestplate>,
			pad: <enderio:item_material:56>
		},
		leggings: {
			item: <enderio:item_end_steel_leggings>,
			pad: <enderio:item_material:56>
		},
		boots: {
			item: <enderio:item_end_steel_boots>,
			pad: <enderio:item_material:56>
		}
	},/*
	metalOres["abyssalnite"].ingot : {
		helmet: {
			item: <abyssalcraft:ahelmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <abyssalcraft:aplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <abyssalcraft:alegs>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <abyssalcraft:aboots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["coralium"].ingot : {
		helmet: {
			item: <abyssalcraft:corhelmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <abyssalcraft:corplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <abyssalcraft:corlegs>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <abyssalcraft:corboots>,
			pad: armorLeather.tanned.boots
		}
	},
	metalOres["dreadium"].ingot : {
		helmet: {
			item: <abyssalcraft:dreadiumhelmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <abyssalcraft:dreadiumplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <abyssalcraft:dreadiumlegs>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <abyssalcraft:dreadiumboots>,
			pad: armorLeather.tanned.boots
		}
	},
	<ore:ingotEthaxium> : {
		helmet: {
			item: <abyssalcraft:ethaxiumhelmet>,
			pad: armorLeather.tanned.helmet
		},
		chestplate: {
			item: <abyssalcraft:ethaxiumplate>,
			pad: armorLeather.tanned.chestplate
		},
		leggings: {
			item: <abyssalcraft:ethaxiumlegs>,
			pad: armorLeather.tanned.leggings
		},
		boots: {
			item: <abyssalcraft:ethaxiumboots>,
			pad: armorLeather.tanned.boots
		}
	},*/
	metalOres["syrmorite"].ingot : {
		helmet: {
			item: <thebetweenlands:syrmorite_helmet>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <thebetweenlands:syrmorite_chestplate>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <thebetweenlands:syrmorite_leggings>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <thebetweenlands:syrmorite_boots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["manasteel"].ingot : {
		helmet: {
			item: <botania:manasteelhelm>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <botania:manasteelchest>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <botania:manasteellegs>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <botania:manasteelboots>,
			pad: armorLeather.leather.boots
		}
	},
	metalOres["elementium"].ingot : {
		helmet: {
			item: <botania:elementiumhelm>,
			pad: armorLeather.leather.helmet
		},
		chestplate: {
			item: <botania:elementiumchest>,
			pad: armorLeather.leather.chestplate
		},
		leggings: {
			item: <botania:elementiumlegs>,
			pad: armorLeather.leather.leggings
		},
		boots: {
			item: <botania:elementiumboots>,
			pad: armorLeather.leather.boots
		}
	}
};

for material, items in plateArmors {
	if(!isNull(items.helmet)) {
		recipeHelmet(material, items.helmet.item, items.helmet.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
		addRadiationShield(items.helmet.item);
	}
	if(!isNull(items.chestplate)) {
		recipeChestplate(material, items.chestplate.item, items.chestplate.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
		addRadiationShield(items.chestplate.item);
	}
	if(!isNull(items.leggings)) {
		recipeLeggings(material, items.leggings.item, items.leggings.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
		addRadiationShield(items.leggings.item);
	}
	if(!isNull(items.boots)) {
		recipeBoots(material, items.boots.item, items.boots.pad, ore_pin_iron, blacksmithBuilder, art_tools.hammer);
		addRadiationShield(items.boots.item);
	}
}

val tusk = <iceandfire:troll_tusk>;
val trollArmor as IItemStack[string][IIngredient] = {
	<iceandfire:troll_leather_forest> : {
		helmet: <iceandfire:forest_troll_leather_helmet>,
		chestplate: <iceandfire:forest_troll_leather_chestplate>,
		leggings: <iceandfire:forest_troll_leather_leggings>,
		boots: <iceandfire:forest_troll_leather_boots>
	},
	<iceandfire:troll_leather_frost> : {
		helmet: <iceandfire:frost_troll_leather_helmet>,
		chestplate: <iceandfire:frost_troll_leather_chestplate>,
		leggings: <iceandfire:frost_troll_leather_leggings>,
		boots: <iceandfire:frost_troll_leather_boots>
	},
	<iceandfire:troll_leather_mountain> : {
		helmet: <iceandfire:mountain_troll_leather_helmet>,
		chestplate: <iceandfire:mountain_troll_leather_chestplate>,
		leggings: <iceandfire:mountain_troll_leather_leggings>,
		boots: <iceandfire:mountain_troll_leather_boots>
	}
};

val cordage_leather = <ore:cordageQuality>;
for leather, parts in trollArmor {
	Disabling.markForRemove(parts.helmet);
	tannerBuilder
		.setShaped([
			[cordage_leather,leather,cordage_leather],
			[tusk,null,tusk],
			[leather,null,leather]
		])
		.addOutput(parts.helmet)
		.addTool(art_tools.needle, 3)
		.create();
	
	recipeChestplate(leather, parts.chestplate, null, cordage_leather, tannerBuilder, art_tools.needle);
	recipeLeggings(leather, parts.leggings, null, cordage_leather, tannerBuilder, art_tools.needle);
	recipeBoots(leather, parts.boots, null, cordage_leather, tannerBuilder, art_tools.needle);
	
	addRadiationShield(parts.helmet);
	addRadiationShield(parts.chestplate);
	addRadiationShield(parts.leggings);
	addRadiationShield(parts.boots);
}

val sheepArmor as IItemStack[] = [
	<iceandfire:sheep_helmet>,
	<iceandfire:sheep_chestplate>,
	<iceandfire:sheep_leggings>,
	<iceandfire:sheep_boots>
];

for item in sheepArmor {
	copyLeatherRecipe(item);
	addRadiationShield(item);
}

val wolfArmor as IIngredient[string][IItemStack] = {
	<wolfarmor:leather_wolf_armor> : {
		"material" : <ore:itemLeather>,
		"tool" : art_tools["needle"]
	},
	<wolfarmor:chainmail_wolf_armor> : {
		"material" : <ore:meshIron>,
		"tool" : art_tools["pliers"]
	},
	<wolfarmor:iron_wolf_armor> : {
		"material" : <ore:plateIron>,
		"tool" : art_tools["hammer"]
	},
	<wolfarmor:gold_wolf_armor> : {
		"material" : <ore:plateGold>,
		"tool" : art_tools["hammer"]
	},
	<wolfarmor:diamond_wolf_armor> : {
		"material" : <ore:plateDiamond>,
		"tool" : art_tools["hammer"]
	}
};

var leather = <ore:itemLeather>;
for armor, materialTool in wolfArmor {
	Disabling.markForRemove(armor);
	var material = materialTool.material;
	basicBuilder
		.setShaped([
			[material,null,null],
			[leather,material,material],
			[material,leather,material]
		])
		.addOutput(armor)
		.addTool(materialTool.tool, 3)
		.create();
}

val armorForProtection as IItemStack[] = [
	<astralsorcery:itemcape>,/*
	<abyssalcraft:dhelmet>,
	<abyssalcraft:dplate>,
	<abyssalcraft:dlegs>,
	<abyssalcraft:dboots>,
	<abyssalcraft:corhelmetp>,
	<abyssalcraft:corplatep>,
	<abyssalcraft:corlegsp>,
	<abyssalcraft:corbootsp>,
	<abyssalcraft:depthshelmet>,
	<abyssalcraft:depthsplate>,
	<abyssalcraft:depthslegs>,
	<abyssalcraft:depthsboots>,
	<abyssalcraft:dreadiumsamuraihelmet>,
	<abyssalcraft:dreadiumsamuraiplate>,
	<abyssalcraft:dreadiumsamurailegs>,
	<abyssalcraft:dreadiumsamuraiboots>,*/
	<betterwithmods:steel_helmet>,
	<betterwithmods:steel_chest>,
	<betterwithmods:steel_pants>,
	<betterwithmods:steel_boots>,
	<mowziesmobs:wrought_helmet>,
	<primal:armor_wolf_head>,
	<primal:armor_wolf_body>,
	<primal:armor_wolf_legs>,
	<primal:armor_wolf_feet>,
	<primal:armor_ovis_head>,
	<primal:armor_ovis_body>,
	<primal:armor_ovis_legs>,
	<primal:armor_ovis_feet>,
	<simplyjetpacks:itemjetpack:14>,
	<simplyjetpacks:itemjetpack:15>,
	<simplyjetpacks:itemjetpack:16>,
	<simplyjetpacks:itemjetpack:17>,
	<simplyjetpacks:itemjetpack:18>,
	<thaumcraft:fortress_helm>,
	<thaumcraft:fortress_chest>,
	<thaumcraft:fortress_legs>,
	<thaumcraft:crimson_plate_helm>,
	<thaumcraft:crimson_plate_chest>,
	<thaumcraft:crimson_plate_legs>,
	<thaumcraft:crimson_robe_helm>,
	<thaumcraft:crimson_robe_chest>,
	<thaumcraft:crimson_robe_legs>,
	<thaumcraft:crimson_praetor_helm>,
	<thaumcraft:crimson_praetor_chest>,
	<thaumcraft:crimson_praetor_legs>,
	<thaumcraft:crimson_boots>,
	<thaumcraft:cloth_chest>,
	<thaumcraft:cloth_legs>,
	<thaumcraft:cloth_boots>,
	<thaumcraft:void_robe_helm>,
	<thaumcraft:void_robe_chest>,
	<thaumcraft:void_robe_legs>,
	<thebetweenlands:rubber_boots>,
	<thebetweenlands:marsh_runner_boots>,
	<camping:armor_fur_helm>,
	<camping:armor_fur_chest>,
	<camping:armor_fur_leg>,
	<camping:armor_fur_boots>,
	<conarm:helmet>,
	<conarm:chestplate>,
	<conarm:leggings>,
	<conarm:boots>,
	<twilightforest:phantom_helmet>,
	<twilightforest:phantom_chestplate>
];

for item in armorForProtection {
	addRadiationShield(item);
}