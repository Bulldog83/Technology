
#priority 100

import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.Copy;

val basicBuilder = builderBasic.builder();
val engineerBuilder = builderEngineer.builder();

val masonRecipes as int[IIngredient][string] = {
	"minecraft:flower_pot" : {
		art_tools["chisel"] : 2
	},
	"minecraft:stone_button" : {
		art_tools["chisel"] : 8
	},
	"minecraft:stone_pressure_plate" : {
		art_tools["handsaw"] : 4
	}
};
for recipe, toolDmg in masonRecipes {
	for tool, dmg in toolDmg {
		builderMason.convertRecipe(recipe, tool, dmg);
	}
}

builderMason.builder()
	.setCopy(Copy.byName("minecraft:furnace"))
	.addTool(art_tools.trowel, 3)
	.setSecondaryIngredients([ore_mortar * 5])
	.create();
Disabling.markForRemove("minecraft:furnace");

val carpenterRecipes as int[IIngredient][string] = {
	"minecraft:ladder" : {
		art_tools["framing_hammer"] : 3
	},
	"minecraft:sign" : {
		art_tools["framing_hammer"] : 2
	},
	"minecraft:item_frame" : {
		art_tools["framing_hammer"] : 2
	},
	"minecraft:armor_stand" : {
		art_tools["framing_hammer"] : 3
	},
	"minecraft:painting" : {
		art_tools["framing_hammer"] : 2
	},
	"minecraft:bowl" : {
		art_tools["razor"] : 3
	}
};

for recipe, toolDmg in carpenterRecipes {
	for tool, dmg in toolDmg {
		builderCarpenter.convertRecipe(recipe, tool, dmg);
	}
}

for color in colors {
	builderCarpenter.convertRecipe("minecraft:" ~ color ~ "_bed", art_tools.framing_hammer, 3);
	builderCarpenter.convertRecipe("minecraft:" ~ color ~ "_banner", art_tools.framing_hammer, 2);
	builderBasic.convertRecipe("minecraft:" ~ color ~ "_carpet", art_tools.shears, 3);
	builderBasic.convertRecipe("minecraft:" ~ color ~ "_stained_glass_pane", art_tools.handsaw, 6);
}
builderBasic.convertRecipe("minecraft:glass_pane", art_tools.handsaw, 6);

val blacksmithRecipes as int[string] = {
	"minecraft:light_weighted_pressure_plate" : 2,
	"minecraft:heavy_weighted_pressure_plate" : 2,
	"minecraft:iron_trapdoor" : 3,
	"minecraft:iron_door" : 4,
	"minecraft:shears" : 1,
	"minecraft:cauldron" : 5,
	"minecraft:hopper" : 3
};

for recipe, dmg in blacksmithRecipes {
	builderBlacksmith.convertRecipe(recipe, art_tools.hammer, dmg);
}
builderBlacksmith.convertRecipe(<minecraft:bucket>, art_tools.hammer, 2);

builderBlacksmith.builder()
	.setCopy(Copy.byName("minecraft:iron_bars")
				 .replaceInput(<minecraft:iron_ingot>, <ore:stickIron>))
	.addTool(art_tools.hammer, 4)
	.create();
Disabling.markForRemove("minecraft:iron_bars");


val engineerRecipes as int[IIngredient][string] = {
	"minecraft:dispenser" : {
		art_tools["spanner"] : 3
	},
	"minecraft:dropper" : {
		art_tools["spanner"] : 2
	},
	"minecraft:observer" : {
		art_tools["spanner"] : 5
	},
	"minecraft:comparator" : {
		art_tools["driver"] : 2
	},
	"minecraft:repeater" : {
		art_tools["driver"] : 2
	},
	"minecraft:tripwire_hook" : {
		art_tools["driver"] : 1
	},
	"minecraft:minecart" : {
		art_tools["spanner"] : 5
	},
	"minecraft:piston" : {
		art_tools["spanner"] : 3
	},
	"minecraft:compass" : {
		art_tools["driver"] : 1
	},
	"minecraft:clock" : {
		art_tools["driver"] : 1
	},
	"minecraft:lever" : {
		art_tools["driver"] : 1
	},
	"minecraft:jukebox" : {
		art_tools["driver"] : 1
	},
	"minecraft:jukebox" : {
		art_tools["driver"] : 3
	},
	"minecraft:noteblock" : {
		art_tools["driver"] : 3
	},
	"minecraft:daylight_detector" : {
		art_tools["driver"] : 4
	},
	"minecraft:redstone_lamp" : {
		art_tools["driver"] : 2
	}
};

for recipe, toolDmg in engineerRecipes {
	for tool, dmg in toolDmg {
		builderEngineer.convertRecipe(recipe, tool, dmg);
	}
}
Disabling.markForRemove(<minecraft:daylight_detector>);
Disabling.markForRemove(<minecraft:comparator>);

val mageRecipes as int[string] = {
	"minecraft:enchanting_table" : 10,
	"minecraft:ender_chest" : 25,
	"minecraft:ender_eye" : 10,
	"minecraft:beacon" : 35,
	"minecraft:end_crystal" : 35,
};

for recipe, dmg in mageRecipes {
	builderMage.convertRecipe(recipe, art_tools.grimoire, dmg);
}

val ender_pearl = <ore:enderpearl>;
val end_stone = <ore:endstone>;
val end_crystal = <minecraft:end_crystal>;
builderMage.builder()
	.setShaped([
		[ender_pearl,end_stone,ender_pearl],
		[end_stone,end_crystal,end_stone],
		[ender_pearl,end_stone,ender_pearl]
	])
	.addOutput(<minecraft:end_portal_frame>)
	.addTool(art_tools.grimoire, 50)
	.addTool(art_tools.athame, 25)
	.setMinimumTier(1)
	.create();
	
val chemistRecipes as int[IIngredient][string] = {
	"minecraft:tnt" : {
		art_tools["beaker"] : 12
	},
	"minecraft:magma_cream" : {
		art_tools["burner"] : 5
	},
	"minecraft:fire_charge" : {
		art_tools["beaker"] : 5
	}
};

for recipe, toolDmg in chemistRecipes {
	for tool, dmg in toolDmg {
		builderChemist.convertRecipe(recipe, tool, dmg);
	}
}


val basicRails as int[IIngredient][string] = {
	"minecraft:rail" : {
		art_tools["hammer"] : 5
	},
	"tconstruct:gadgets/rail/wood_rail" : {
		art_tools["framing_hammer"] : 4
	},
	"tconstruct:gadgets/rail/wood_rail_trapdoor" : {
		art_tools["framing_hammer"] : 4
	}
};

for recipe, toolDmg in basicRails {
	for tool, dmg in toolDmg {
		basicBuilder
			.setCopy(Copy.byName(recipe)
						 .replaceInput(null, ore_stick))
			.addTool(tool, dmg)
			.create();
	}
	Disabling.markForRemove(recipe);
}

engineerBuilder
	.setShaped([
		[ore_ingot_gold,ore_redstone,ore_ingot_gold],
		[ore_ingot_gold,<minecraft:rail>,ore_ingot_gold],
		[ore_ingot_gold,ore_redstone,ore_ingot_gold]
	])
	.addOutput(<minecraft:golden_rail> * 6)
	.addTool(art_tools.spanner, 8)
	.create();
	
Disabling.markForRemove(<minecraft:rail>);
Disabling.markForRemove(<minecraft:golden_rail>);

val techRails as int[string] = {
	"minecraft:activator_rail" : 3,
	"betterwithmods:blocks/redstone/detector_rail_wood" : 5,
	"betterwithmods:blocks/redstone/detector_rail_steel" : 5,
	"betterwithmods:blocks/redstone/detector_rail_stone" : 5,
	"enderio:exit_rail" : 6
};

for recipe, dmg in techRails {
	engineerBuilder
		.setCopy(Copy.byName(recipe)
					 .replaceInput(null, ore_stick))
		.addTool(art_tools.spanner, dmg)
		.create();
	Disabling.markForRemove(recipe);
}

val boiled_leather = <ore:leatherBoiled>;
Disabling.markForRemove(<minecraft:saddle>);
builderTanner.builder()
	.setShaped([
		[boiled_leather,boiled_leather,boiled_leather],
		[ore_cordage,ore_wool,ore_cordage],
		[ore_ring_iron,null,ore_ring_iron]
	])
	.addOutput(<minecraft:saddle>)
	.addTool(art_tools.needle, 12)
	.create();
	
Disabling.removeRecipes();