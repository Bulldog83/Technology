
#priority 100

import crafttweaker.item.IItemStack;

import mods.artisanworktables.builder.Copy;

val engineerBuilder = builderEngineer.builder();

builderCarpenter.convertRecipe("magneticraft:feeding_trough_center_north", art_tools.framing_hammer, 5);
builderCarpenter.convertRecipe("magneticraft:box", art_tools.framing_hammer, 5);

builderBlacksmith.convertRecipe("magneticraft:wrench_normal", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:iron_gear_normal", art_tools.hammer, 8);
builderBlacksmith.convertRecipe("magneticraft:steel_gear_normal", art_tools.hammer, 10);
builderBlacksmith.convertRecipe("magneticraft:tungsten_gear_normal", art_tools.hammer, 10);
builderBlacksmith.convertRecipe("magneticraft:multiblock_parts_grate", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:multiblock_parts_striped", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:multiblock_parts_corrugated_iron", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:multiblock_column_axis_y", art_tools.hammer, 8);
builderBlacksmith.convertRecipe("magneticraft:iron_pipe_normal", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:steam_boiler_normal", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:heat_pipe_normal", art_tools.hammer, 6);
builderBlacksmith.convertRecipe("magneticraft:insulated_heat_pipe_normal", art_tools.hammer, 8);
builderBlacksmith.convertRecipe("magneticraft:insulated_heat_pipe_normal_1", art_tools.hammer, 8);
builderBlacksmith.convertRecipe("magneticraft:heat_sink_down", art_tools.hammer, 5);
builderBlacksmith.convertRecipe("magneticraft:gasification_unit_normal", art_tools.hammer, 8);

builderEngineer.convertRecipe("magneticraft:crafting_motor", art_tools.driver, 6);
builderEngineer.convertRecipe("magneticraft:voltmeter", art_tools.driver, 10);
builderEngineer.convertRecipe("magneticraft:battery_item_low_normal", art_tools.driver, 6);
builderEngineer.convertRecipe("magneticraft:battery_item_medium_normal", art_tools.driver, 10);
builderEngineer.convertRecipe("magneticraft:floppy_disk_user", art_tools.driver, 8);
builderEngineer.convertRecipe("magneticraft:tube_light", art_tools.driver, 5);
builderEngineer.convertRecipe("magneticraft:multiblock_parts_electric", art_tools.driver, 8);
builderEngineer.convertRecipe("magneticraft:multiblock_parts_copper_coil", art_tools.driver, 8);
builderEngineer.convertRecipe("magneticraft:battery_north", art_tools.driver, 12);
builderEngineer.convertRecipe("magneticraft:thermopile_normal", art_tools.driver, 10);
builderEngineer.convertRecipe("magneticraft:electric_heater_off", art_tools.driver, 12);
builderEngineer.convertRecipe("magneticraft:rf_heater_off", art_tools.driver, 12);
builderEngineer.convertRecipe("magneticraft:computer_north", art_tools.driver, 16);
builderEngineer.convertRecipe("magneticraft:mining_robot_north", art_tools.driver, 18);
builderEngineer.convertRecipe("magneticraft:electric_pole_transformer_north", art_tools.driver, 10);
builderEngineer.convertRecipe("magneticraft:multiblock_parts_base", art_tools.spanner, 8);
builderEngineer.convertRecipe("magneticraft:inserter_north", art_tools.spanner, 14);
builderEngineer.convertRecipe("magneticraft:conveyor_belt_north", art_tools.spanner, 12);
builderEngineer.convertRecipe("magneticraft:wind_turbine_north", art_tools.spanner, 10);
builderEngineer.convertRecipe("magneticraft:airlock_normal", art_tools.spanner, 10);

engineerBuilder
	.setCopy(Copy.byName("magneticraft:electric_cable_normal_1")
				 .replaceInput(<ore:ingotCopper>, <ore:wireCopper>))
	.create();
engineerBuilder
	.setCopy(Copy.byName("magneticraft:electric_cable_normal_2")
				 .replaceInput(<ore:ingotCopper>, <ore:wireCopper>))
	.create();
Disabling.markForRemove(<magneticraft:electric_cable>);

val hammersToAdd as int[string][IItemStack] = {
	<artisanworktables:artisans_hammer_stone> : {
		"level" : 1,
		"speed" : 8
	},
	<artisanworktables:artisans_hammer_iron> : {
		"level" : 2,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_gold> : {
		"level" : 2,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_diamond> : {
		"level" : 4,
		"speed" : 15
	},
	<artisanworktables:artisans_hammer_flint> : {
		"level" : 1,
		"speed" : 9
	},
	<artisanworktables:artisans_hammer_bone> : {
		"level" : 1,
		"speed" : 9
	},
	<artisanworktables:artisans_hammer_aluminum> : {
		"level" : 1,
		"speed" : 8
	},
	<artisanworktables:artisans_hammer_bronze> : {
		"level" : 2,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_constantan> : {
		"level" : 3,
		"speed" : 9
	},
	<artisanworktables:artisans_hammer_copper> : {
		"level" : 1,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_electrum> : {
		"level" : 1,
		"speed" : 16
	},
	<artisanworktables:artisans_hammer_invar> : {
		"level" : 3,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_lead> : {
		"level" : 1,
		"speed" : 12
	},
	<artisanworktables:artisans_hammer_nickel> : {
		"level" : 3,
		"speed" : 11
	},
	<artisanworktables:artisans_hammer_platinum> : {
		"level" : 5,
		"speed" : 14
	},
	<artisanworktables:artisans_hammer_silver> : {
		"level" : 2,
		"speed" : 10
	},
	<artisanworktables:artisans_hammer_steel> : {
		"level" : 4,
		"speed" : 15
	},
	<artisanworktables:artisans_hammer_tin> : {
		"level" : 1,
		"speed" : 6
	},
	<artisanworktables:artisans_hammer_manasteel> : {
		"level" : 2,
		"speed" : 12
	},
	<artisanworktables:artisans_hammer_elementium> : {
		"level" : 2,
		"speed" : 13
	},
	<artisanworktables:artisans_hammer_terrasteel> : {
		"level" : 4,
		"speed" : 16
	},/*
	<artisanworktables:artisans_hammer_abyssalnite> : {
		"level" : 5,
		"speed" : 14
	},
	<artisanworktables:artisans_hammer_coralium> : {
		"level" : 5,
		"speed" : 16
	},
	<artisanworktables:artisans_hammer_dreadium> : {
		"level" : 6,
		"speed" : 18
	},*/
	<primal:stone_gallagher> : {
		"level" : 1,
		"speed" : 8
	},
	<primal:nether_gallagher> : {
		"level" : 1,
		"speed" : 8
	},
	<primal:quartz_gallagher> : {
		"level" : 1,
		"speed" : 9
	},
	<primal:iron_gallagher> : {
		"level" : 2,
		"speed" : 10
	},
	<thermalfoundation:tool.hammer_copper> : {
		"level" : 1,
		"speed" : 10
	},
	<thermalfoundation:tool.hammer_tin> : {
		"level" : 1,
		"speed" : 8
	},
	<thermalfoundation:tool.hammer_silver> : {
		"level" : 2,
		"speed" : 10
	},
	<thermalfoundation:tool.hammer_lead> : {
		"level" : 1,
		"speed" : 12
	},
	<thermalfoundation:tool.hammer_aluminum> : {
		"level" : 1,
		"speed" : 9
	},
	<thermalfoundation:tool.hammer_nickel> : {
		"level" : 3,
		"speed" : 11
	},
	<thermalfoundation:tool.hammer_platinum> : {
		"level" : 5,
		"speed" : 16
	},
	<thermalfoundation:tool.hammer_steel> : {
		"level" : 4,
		"speed" : 15
	},
	<thermalfoundation:tool.hammer_electrum> : {
		"level" : 1,
		"speed" : 12
	},
	<thermalfoundation:tool.hammer_invar> : {
		"level" : 3,
		"speed" : 12
	},
	<thermalfoundation:tool.hammer_bronze> : {
		"level" : 2,
		"speed" : 12
	},
	<thermalfoundation:tool.hammer_constantan> : {
		"level" : 3,
		"speed" : 10
	},
	<thermalfoundation:tool.hammer_iron> : {
		"level" : 2,
		"speed" : 10
	},
	<thermalfoundation:tool.hammer_diamond> : {
		"level" : 4,
		"speed" : 15
	},
	<thermalfoundation:tool.hammer_gold> : {
		"level" : 2,
		"speed" : 10
	}
};

//mods.magneticraft.CrushingTable.addHammer(IItemStack hammer, int mining_level, int speed, int durability_spend);
for hammer, stats in hammersToAdd {
	mods.magneticraft.CrushingTable.addHammer(hammer, stats.level, stats.speed, 1);
}