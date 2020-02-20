
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val recipesEngineer as int[IIngredient][string] = {
	"pneumaticcraft:vortex_cannon" : {
		art_tools.spanner : 18
	},
	"pneumaticcraft:pneumatic_cylinder" : {
		art_tools.spanner : 6
	},
	"pneumaticcraft:pneumatic_wrench" : {
		art_tools.spanner : 12
	},
	"pneumaticcraft:pneumatic_door_base" : {
		art_tools.spanner : 15
	},
	"pneumaticcraft:minigun" : {
		art_tools.spanner : 13
	},
	"pneumaticcraft:air_compressor" : {
		art_tools.spanner : 12
	},
	"pneumaticcraft:advanced_air_compressor" : {
		art_tools.spanner : 12
	},
	"pneumaticcraft:air_cannon" : {
		art_tools.spanner : 14
	},
	"pneumaticcraft:pressure_chamber_interface" : {
		art_tools.spanner : 6
	},
	"pneumaticcraft:vacuum_pump" : {
		art_tools.spanner : 18
	},
	"pneumaticcraft:assembly_io_unit" : {
		art_tools.spanner : 16
	},
	"pneumaticcraft:assembly_platform" : {
		art_tools.spanner : 17
	},
	"pneumaticcraft:plastic_mixer" : {
		art_tools.spanner : 12
	},
	"pneumaticcraft:advanced_liquid_compressor" : {
		art_tools.spanner : 16
	},
	"pneumaticcraft:vortex_tube" : {
		art_tools.spanner : 15
	},
	"pneumaticcraft:gas_lift" : {
		art_tools.spanner : 13
	},
	"pneumaticcraft:thermopneumatic_processing_plant" : {
		art_tools.spanner : 15
	},
	"pneumaticcraft:kerosene_lamp" : {
		art_tools.spanner : 3
	},
	"pneumaticcraft:sentry_turret" : {
		art_tools.spanner : 18
	},
	"pneumaticcraft:heat_frame" : {
		art_tools.spanner : 10
	},
	"pneumaticcraft:pressure_gauge" : {
		art_tools.driver : 2
	},
	"pneumaticcraft:manometer" : {
		art_tools.driver : 2
	},
	"pneumaticcraft:remote" : {
		art_tools.driver : 18
	},
	"pneumaticcraft:logistics_configurator" : {
		art_tools.driver : 12
	},
	"pneumaticcraft:camo_applicator" : {
		art_tools.driver : 12
	},
	"pneumaticcraft:amadron_tablet" : {
		art_tools.driver : 18
	},
	"pneumaticcraft:assembly_controller" : {
		art_tools.driver : 17
	},
	"pneumaticcraft:programmable_controller" : {
		art_tools.driver : 24
	},
	"pneumaticcraft:uv_light_box" : {
		art_tools.driver : 16
	},
	"pneumaticcraft:security_station" : {
		art_tools.driver : 20
	},
	"pneumaticcraft:electrostatic_compressor" : {
		art_tools.driver : 22
	},
	"pneumaticcraft:flux_compressor" : {
		art_tools.driver : 24
	},
	"pneumaticcraft:programmer" : {
		art_tools.driver : 20
	},
	"pneumaticcraft:pneumatic_dynamo" : {
		art_tools.driver : 18
	}
};

for recipe, toolDmg in recipesEngineer {
	for tool, dmg in toolDmg {
		builderEngineer.convertRecipe(recipe, tool, dmg);
	}
}
builderEngineer.convertRecipe(<pneumaticcraft:elevator_base>, art_tools.spanner, 12);
builderEngineer.convertRecipe(<pneumaticcraft:advanced_pcb>, art_tools.driver, 18);

val pneumaticArmor as int[IIngredient][string] = {
	"pneumaticcraft:pneumatic_helmet" : {
		art_tools.driver : 15,
		art_tools.spanner : 18
	},
	"pneumaticcraft:pneumatic_chestplate" : {
		art_tools.driver : 18,
		art_tools.spanner : 22
	},
	"pneumaticcraft:pneumatic_leggings" : {
		art_tools.driver : 18,
		art_tools.spanner : 18
	},
	"pneumaticcraft:pneumatic_boots" : {
		art_tools.driver : 15,
		art_tools.spanner : 18
	}
};

for recipe, tools in pneumaticArmor {
	builderEngineer.convertMultitoolRecipe(recipe, tools);
}

val recipesBlacksmith as int[string] = {
	"pneumaticcraft:pressure_tube" : 4,
	"pneumaticcraft:air_canister" : 6,
	"pneumaticcraft:turbine_rotor" : 6,
	"pneumaticcraft:pressure_chamber_wall" : 8,
	"pneumaticcraft:pressure_chamber_valve" : 10,
	"pneumaticcraft:pressure_chamber_glass" : 6,
	"pneumaticcraft:elevator_frame" : 8,
	"pneumaticcraft:pneumatic_door" : 3,
	"pneumaticcraft:omnidirectional_hopper" : 5,
	"pneumaticcraft:heat_sink" : 6,
	"pneumaticcraft:crop_support" : 8,
	"pneumaticcraft:spawner_agitator" : 15
};

for recipe, dmg in recipesBlacksmith {
	builderBlacksmith.convertRecipe(recipe, art_tools.hammer, dmg);
}

val engineerBuilder = builderEngineer.builder();

val pneumaticUpgrades as string[] = [
	"pneumaticcraft:volume_upgrade",
	"pneumaticcraft:dispenser_upgrade",
	"pneumaticcraft:item_life_upgrade",
	"pneumaticcraft:entity_tracker_upgrade",
	"pneumaticcraft:block_tracker_upgrade",
	"pneumaticcraft:coordinate_tracker_upgrade",
	"pneumaticcraft:speed_upgrade",
	"pneumaticcraft:search_upgrade",
	"pneumaticcraft:range_upgrade",
	"pneumaticcraft:security_upgrade",
	"pneumaticcraft:charging_upgrade",
	"pneumaticcraft:armor_upgrade",
	"pneumaticcraft:jet_boots_upgrade"
];

for recipe in pneumaticUpgrades {
	builderEngineer.convertReplace(recipe, art_tools.driver, 12, <minecraft:dye:4>, <ore:dustElectrotine>);
}
builderMage.convertRecipe("pneumaticcraft:thaumcraft_upgrade", art_tools.driver, 12);

engineerBuilder
	.setCopy(Copy.byName("pneumaticcraft:magnet_upgrade")
				 .replaceInput(<minecraft:dye:4>, <ore:dustElectrotine>)
				 .replaceShapedInput(1, 1, <ore:dustRedstone>))
	.addTool(art_tools.driver, 12)
	.create();

builderEngineer.convertReplace("pneumaticcraft:seismic_sensor", art_tools.driver, 8, {
	<minecraft:coal> : <ore:circuitBasic>,
	<ore:blockGlass> : <ore:plasticBlack>
} as IIngredient[IIngredient]);

builderEngineer.convertReplace("pneumaticcraft:assembly_drill", art_tools.driver, 16, <minecraft:diamond>, <thermalfoundation:material:656>);
builderEngineer.convertReplace("pneumaticcraft:assembly_laser", art_tools.driver, 16, <minecraft:dye:1>, <redstonearsenal:material:160>);
builderEngineer.convertReplace("pneumaticcraft:gps_tool", art_tools.driver, 8, <minecraft:diamond>, <ore:circuitBasic>);
builderEngineer.convertReplace("pneumaticcraft:refinery", art_tools.spanner, 15, <minecraft:diamond>, <pneumaticcraft:pressure_tube>);
builderEngineer.convertReplace("pneumaticcraft:aerial_interface", art_tools.spanner, 26, <minecraft:skull:1>, <pneumaticcraft:advanced_pcb>);

builderEngineer.copyRecipe("pneumaticcraft:color_drone");
builderEngineer.convertRecipe("pneumaticcraft:drone_from_logistic_drone", art_tools.driver, 6);
builderEngineer.convertRecipe("pneumaticcraft:drone_from_harvesting_drone", art_tools.driver, 6);
builderEngineer.convertShapedReplace("pneumaticcraft:drone", art_tools.driver, 16, {
	[0, 0] : <ore:ingotIronCompressed>,
	[0, 2] : <ore:ingotIronCompressed>,
	[2, 0] : <ore:ingotIronCompressed>,
	[2, 2] : <ore:ingotIronCompressed>
} as IIngredient[int[]]);

engineerBuilder
	.setShaped([
		[null,ore_redstone,null],
		[ore_redstone,<pneumaticcraft:drone>,ore_redstone],
		[null,ore_redstone,null]
	])
	.addOutput(<pneumaticcraft:logistic_drone>)
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setShaped([
		[null,<ore:seed>,null],
		[<ore:seed>,<pneumaticcraft:drone>,<ore:seed>],
		[null,<ore:seed>,null]
	])
	.addOutput(<pneumaticcraft:harvesting_drone>)
	.addTool(art_tools.driver, 8)
	.create();

engineerBuilder
	.setCopy(Copy.byName("pneumaticcraft:charging_station")
				 .replaceInput(<minecraft:stone_slab:3>, <ore:ingotIronCompressed>)
				 .replaceShapedInput(2, 1, <pneumaticcraft:air_canister>))
	.addTool(art_tools.spanner, 13)
	.create();
	
for i in 0 to 6 {
	var component = <pneumaticcraft:network_component>.definition.makeStack(i);
	builderEngineer.convertReplace(component, art_tools.driver, 8, <minecraft:chest>, <ore:circuitAdvanced>);
}

for item in [
	<pneumaticcraft:magnet_upgrade>,
	<pneumaticcraft:charging_station>,
	<pneumaticcraft:drone>,
	<pneumaticcraft:logistic_drone>,
	<pneumaticcraft:harvesting_drone>
] as IItemStack[] {
	Disabling.markForRemove(item);
}