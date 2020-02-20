
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val engineerBuilder = builderEngineer.builder();
val blacksmithBuilder = builderBlacksmith.builder();

val circuit_basic = <techreborn:part:29>;
val circuit_adv = <techreborn:part:30>;
val circuit_elite = <techreborn:part:1>;
val circuit_ultima = <techreborn:part>;
val ore_circ_basic = <ore:circuitBasic>;
val ore_circ_adv = <ore:circuitAdvanced>;
val ore_circ_elite = <ore:circuitElite>;
val ore_circ_ultima = <ore:circuitUltimate>;
val base_basic = <mekanism:controlcircuit>;
val base_adv = <mekanism:controlcircuit:1>;
val base_elite = <mekanism:controlcircuit:2>;
val base_ultima = <mekanism:controlcircuit:3>;
val copper_cable = <techreborn:cable:5>;
val gold_cable = <techreborn:cable:6>;
val lapis = <minecraft:dye:4>;
val plate_lapis = <ore:plateLazurite>;
val alloy_elite = <ore:alloyElite>;
val alloy_ultima = <ore:alloyUltimate>;
val logic_proc = <appliedenergistics2:material:22>;
val calc_proc = <appliedenergistics2:material:23>;
val eng_proc = <appliedenergistics2:material:24>;
val motor = <thermalfoundation:material:512>;
val gear_iron = metalOres.iron.gear;
val ender_capacitor_1 = <enderio:item_basic_capacitor>;
val ender_capacitor_2 = <enderio:item_basic_capacitor:1>;
val ender_capacitor_3 = <enderio:item_basic_capacitor:2>;
val rubber = <ore:itemRubber>;
val plate_redstone = <techreborn:plates:4>;
val electrotine = <ore:dustElectrotine>;

mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:10>, <ore:gemLapis>, <immersiveengineering:mold>, 2400);
mods.techreborn.compressor.addRecipe(<techreborn:plates:10>, <ore:gemLapis>, 300, 4);
mods.techreborn.compressor.addRecipe(<techreborn:plates:10> * 9, <ore:blockLapis>, 1800, 4);
mods.nuclearcraft.pressurizer.addRecipe(<ore:gemLapis>, <techreborn:plates:10>, 600);
mods.immersiveengineering.MetalPress.addRecipe(plate_redstone, ore_redstone, <immersiveengineering:mold>, 2400);
mods.techreborn.compressor.addRecipe(plate_redstone, ore_redstone, 300, 4);
mods.nuclearcraft.pressurizer.addRecipe(ore_redstone, plate_redstone, 600);
mods.thermalexpansion.Compactor.addPressRecipe(plate_redstone, <minecraft:redstone>, 4000);

val multitoolItemRecipes as int[IIngredient][IItemStack] = {
	<techreborn:part:3> : {
		art_tools["driver"] : 12,
		art_tools["pliers"] : 10
	},
	<techreborn:part:17> : {
		art_tools["driver"] : 16,
		art_tools["pliers"] : 10
	},
	<techreborn:part:27> : {
		art_tools["driver"] : 20,
		art_tools["pliers"] : 14
	}
};

for item, tools in multitoolItemRecipes {
	builderEngineer.convertMultitoolRecipe(item, tools);
}

val multitoolNameRecipes as int[IIngredient][string] = {
	"mekanism:robit" : {
		art_tools["driver"] : 32,
		art_tools["spanner"] : 14
	},
	"mekanism:jetpack" : {
		art_tools["driver"] : 18,
		art_tools["spanner"] : 26
	},
	"mekanism:flamethrower" : {
		art_tools["driver"] : 18,
		art_tools["spanner"] : 22
	},
	"mekanism:atomicdisassembler" : {
		art_tools["driver"] : 26,
		art_tools["pliers"] : 16
	},
	"mekanism:portableteleporter" : {
		art_tools["driver"] : 48,
		art_tools["pliers"] : 10
	},
	"matteroverdrive:me_conversion_matrix" : {
		art_tools["driver"] : 26,
		art_tools["pliers"] : 14
	},
	"matteroverdrive:forcefield_emitter" : {
		art_tools["driver"] : 24,
		art_tools["pliers"] : 12
	},
	"matteroverdrive:replicator" : {
		art_tools["driver"] : 38,
		art_tools["spanner"] : 25
	},
	"matteroverdrive:pattern_monitor" : {
		art_tools["driver"] : 22,
		art_tools["spanner"] : 15
	},
	"matteroverdrive:fusion_reactor_controller" : {
		art_tools["driver"] : 42,
		art_tools["spanner"] : 35
	},
	"matteroverdrive:solar_panel" : {
		art_tools["driver"] : 20,
		art_tools["spanner"] : 12
	},
	"matteroverdrive:inscriber" : {
		art_tools["driver"] : 28,
		art_tools["spanner"] : 15
	},
	"matteroverdrive:transporter" : {
		art_tools["driver"] : 45,
		art_tools["spanner"] : 38
	},
	"matteroverdrive:weapon_station" : {
		art_tools["driver"] : 42,
		art_tools["spanner"] : 35
	},
	"matteroverdrive:android_station" : {
		art_tools["driver"] : 50,
		art_tools["spanner"] : 45
	},
	"matteroverdrive:charging_station" : {
		art_tools["driver"] : 40,
		art_tools["spanner"] : 32
	},
	"matteroverdrive:spacetime_accelerator" : {
		art_tools["driver"] : 35,
		art_tools["pliers"] : 28
	},
	"matteroverdrive:star_map" : {
		art_tools["driver"] : 48,
		art_tools["pliers"] : 35
	},
	"thermalinnovation:quiver" : {
		art_tools["driver"] : 12,
		<ore:artisansNeedle> : 12
	}
};

for recipe, tools in multitoolNameRecipes {
	builderEngineer.convertMultitoolRecipe(recipe, tools);
}

val convertNameRecipes as int[string] = {
	"matteroverdrive:sniper_scope" : 14,
	"matteroverdrive:pattern_drive" : 18,
	"matteroverdrive:matter_scanner" : 26,
	"mekanism:controlcircuit_1" : 8,
	"mekanism:energytablet" : 6,
	"mekanism:configurator" : 12,
	"mekanism:networkreader" : 12,
	"mekanism:walkietalkie" : 12,
	"mekanism:configurationcard" : 10,
	"mekanism:seismicreader" : 26,
	"mekanism:tierinstaller_0" : 18,
	"mekanism:tierinstaller_1" : 24,
	"thermalinnovation:drill" : 18,
	"thermalinnovation:saw" : 18,
	"thermalinnovation:magnet" : 12,
	"thermalinnovation:magnet_1" : 16,
	"thermalinnovation:magnet_2" : 18,
	"thermalinnovation:magnet_3" : 26,
	"thermalinnovation:magnet_4" : 38,
	"thermalinnovation:injector" : 10,
	"thermalinnovation:injector_1" : 15,
	"thermalinnovation:injector_2" : 18,
	"thermalinnovation:injector_3" : 24,
	"thermalinnovation:injector_4" : 30,
	"thermalinnovation:quiver_1" : 18,
	"thermalinnovation:quiver_2" : 26,
	"thermalinnovation:quiver_3" : 32,
	"thermalinnovation:quiver_4" : 40,
	"thermalfoundation:meter" : 16,
	"appliedenergistics2:network/parts/monitors_conversion" : 14,
	"appliedenergistics2:network/parts/monitors_storage" : 12,
	"appliedenergistics2:network/parts/terminals" : 18,
	"appliedenergistics2:network/parts/terminals_crafting" : 16,
	"appliedenergistics2:network/parts/terminals_interface" : 18,
	"appliedenergistics2:network/parts/terminals_pattern" : 16
};

for recipe, dmg in convertNameRecipes {
	builderEngineer.convertRecipe(recipe, art_tools.driver, dmg);
}

val convertItemRecipes as int[IItemStack] = {
	<techreborn:part:26> : 12,
	<techreborn:part:28> : 16,
	<thermalexpansion:frame> : 6,
	<thermalexpansion:frame:64> : 6,
	<thermalexpansion:frame:128> : 6,
	<appliedenergistics2:part:280> : 5,
	<appliedenergistics2:part:300> : 20,
	<appliedenergistics2:part:320> : 20,
	<appliedenergistics2:part:220> : 22,
	<appliedenergistics2:entropy_manipulator> : 24,
	<appliedenergistics2:wireless_terminal> : 22,
	<appliedenergistics2:matter_cannon> : 36,
	<appliedenergistics2:portable_cell> : 25,
	<appliedenergistics2:color_applicator> : 33,
	<appliedenergistics2:network_tool> : 17,
	<wct:wct> : 26
};

for item, dmg in convertItemRecipes {
	builderEngineer.convertRecipe(item, art_tools.driver, dmg);
}

//Tech Reborn

engineerBuilder
	.setCopy(Copy.byOutput([circuit_basic])
				 .replaceInput(<techreborn:ingot:19>, base_basic))
	.addTool(art_tools.driver, 5)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([circuit_adv])
				 .replaceInput(<minecraft:glowstone_dust>, gold_cable)
				 .replaceInput(lapis, plate_lapis)
				 .replaceInput(<techreborn:part:29>, base_adv))
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([circuit_elite])
				 .replaceInput(<ore:ingotIridium>, base_elite)
				 .replaceShapedInput(1, 0, ender_capacitor_2))
	.addTool(art_tools.driver, 16)
	.addTool(art_tools.pliers, 8)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([circuit_ultima])
				 .replaceInput(<ore:ingotTungsten>, <ore:plateTungsten>)
				 .replaceInput(<techreborn:plates:37>, base_ultima)
				 .replaceShapedInput(0, 0, ender_capacitor_2)
				 .replaceShapedInput(2, 0, ender_capacitor_2))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<techreborn:part:2>])
				 .replaceInput(<minecraft:glowstone_dust>, gold_cable)
				 .replaceInput(<minecraft:dye:4>, <ore:plateLazurite>))
	.addTool(art_tools.driver, 10)
	.addTool(art_tools.pliers, 6)
	.setMinimumTier(1)
	.create();

engineerBuilder
	.setCopy(Copy.byOutput([<techreborn:part:24>])
				 .replaceInput(<ore:dye>, copper_cable)
				 .replaceShapedInput(1, 0, ore_circ_basic))
	.addTool(art_tools.driver, 18)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<techreborn:lapotroncrystal>])
				 .replaceInput(<ore:dyeBlue>, lapis))
	.addTool(art_tools.pliers, 16)
	.create();
	
engineerBuilder
	.setShaped([
		[null,logic_proc,null],
		[alloy_elite,<ore:plateIridium>,alloy_elite],
		[null,base_adv,null]
	])
	.addOutput(base_elite)
	.addTool(art_tools.driver, 16)
	.addTool(art_tools.pliers, 8)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setShaped([
		[null,eng_proc,null],
		[alloy_ultima,<ore:plateIridiumAlloy>,alloy_ultima],
		[null,base_elite,null]
	])
	.addOutput(base_ultima)
	.addTool(art_tools.driver, 20)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();

engineerBuilder
	.setCopy(Copy.byName("mekanism:teleportationcore")
				 .replaceInput(<minecraft:diamond>, ender_capacitor_3)
				 .replaceInput(lapis, plate_lapis))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.pliers, 16)
	.setMinimumTier(1)
	.create();

val frame = <thermalexpansion:frame>;
val casing = <mekanism:basicblock:8>;
val machine_frame = <techreborn:machine_frame>;
val plate_tin = metalOres.tin.plate;

blacksmithBuilder
	.setShaped([
		[plate_tin,plate_tin,plate_tin],
		[plate_tin,frame,plate_tin],
		[plate_tin,plate_tin,plate_tin]
	])
	.addOutput(machine_frame)
	.addTool(art_tools.hammer, 12)
	.create();
blacksmithBuilder
	.setCopy(Copy.byOutput([casing])
				 .replaceInput(<ore:ingotOsmium>, machine_frame)
				 .replaceInput(<ore:ingotSteel>, <ore:plateSteel>)
				 .replaceInput(<ore:blockGlass>, <ore:ingotOsmium>))
	.addTool(art_tools.hammer, 16)
	.create();
blacksmithBuilder
	.setCopy(Copy.byName("matteroverdrive:machine_hull")
				 .replaceShapedInput(1, 1, machine_frame))
	.addTool(art_tools.hammer, 12)
	.create();

builderBlacksmith.convertRecipe(<techreborn:machine_frame:1>, art_tools.hammer, 18);
builderBlacksmith.convertRecipe(<techreborn:machine_frame:2>, art_tools.hammer, 24);

builderBlacksmith.convertRecipe(<thermalfoundation:material:656>, art_tools.hammer, 12);
builderBlacksmith.convertRecipe(<thermalfoundation:material:657>, art_tools.hammer, 12);
builderBlacksmith.convertRecipe("thermalfoundation:wrench", art_tools.hammer, 2);

//CoFH Mods

engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:upgrade>])
				 .replaceInput(<thermalfoundation:material:291>, ore_circ_basic))
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:upgrade:1>])
				 .replaceInput(<thermalfoundation:material:258>, ore_circ_adv))
	.addTool(art_tools.driver, 16)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:upgrade:2>])
				 .replaceInput(<thermalfoundation:material:289>, ore_circ_elite))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.pliers, 14)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:upgrade:3>])
				 .replaceInput(<thermalfoundation:material:294>, ore_circ_ultima))
	.addTool(art_tools.driver, 32)
	.addTool(art_tools.pliers, 24)
	.setMinimumTier(1)
	.create();
	
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:material:640>])
				 .replaceShapedInput(1, 1, ore_circ_basic))
	.addTool(art_tools.driver, 6)
	.create();

val copper_wire = <ore:wireCopper>;	
engineerBuilder
	.setShaped([
		[ore_redstone,electrotine,ore_redstone],
		[copper_wire,ore_ingot_iron,copper_wire],
		[ore_redstone,electrotine,ore_redstone]
	])
	.addOutput(<thermalfoundation:material:512>)
	.addTool(art_tools.driver, 8)
	.create();	
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:material:513>])
				 .replaceShapedInput(0, 1, copper_wire)
				 .replaceShapedInput(1, 0, copper_wire)
				 .replaceShapedInput(1, 2, copper_wire)
				 .replaceShapedInput(2, 1, copper_wire))
	.addTool(art_tools.driver, 6)
	.create();	
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:material:514>])
				 .replaceShapedInput(0, 1, copper_wire)
				 .replaceShapedInput(1, 0, copper_wire)
				 .replaceShapedInput(1, 2, copper_wire)
				 .replaceShapedInput(2, 1, copper_wire))
	.addTool(art_tools.driver, 6)
	.create();	
engineerBuilder
	.setCopy(Copy.byOutput([<thermalfoundation:material:515>])
				 .replaceShapedInput(0, 1, copper_wire)
				 .replaceShapedInput(1, 0, copper_wire)
				 .replaceShapedInput(1, 2, copper_wire)
				 .replaceShapedInput(2, 1, copper_wire))
	.addTool(art_tools.driver, 6)
	.create();	
engineerBuilder
	.setCopy(Copy.byName("techreborn:alarm")
				 .replaceInput(<techreborn:cable>, copper_wire))
	.addTool(art_tools.driver, 13)
	.create();	
engineerBuilder
	.setCopy(Copy.byName("techreborn:lamp_incandescent")
				 .replaceInput(<techreborn:cable>, copper_wire))
	.addTool(art_tools.driver, 8)
	.create();
	
recipes.addShapeless("techreborn_cable_copper_insulated", <techreborn:cable:5>, [rubber, rubber, copper_wire]);

val plateWires as IIngredient[IItemStack] = {
	<immersiveengineering:material:20> : <ore:plateCopper>,	
	<immersiveengineering:material:21> : <ore:plateElectrum>,	
	<immersiveengineering:material:22> : <ore:plateAluminum>,	
	<immersiveengineering:material:23> : <ore:plateSteel>,
	<alternatingflux:material> : <ore:plateConstantan>,
	<techreborn:cable:1> : <ore:plateTin>,
	<techreborn:cable:2> : <ore:plateGold>,
	<techreborn:cable:3> : <ore:plateRefinedIron>
};

mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:1> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2400);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:2> * 2, <ore:ingotGold>, <immersiveengineering:mold:4>, 2400);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:3> * 2, <ore:ingotRefinedIron>, <immersiveengineering:mold:4>, 2400);

for wire, plate in plateWires {
	Disabling.markForRemove(wire);
	engineerBuilder
		.setShapeless([plate])
		.addOutput(wire * 2)
		.addTool(art_tools.cutters, 2)
		.create();
}
	
val thermalToolsSimple as IIngredient[string] = {
	"thermalinnovation:drill_1" : ore_circ_basic,
	"thermalinnovation:drill_2" : ore_circ_adv,
	"thermalinnovation:saw_1" : ore_circ_basic,
	"thermalinnovation:saw_2" : ore_circ_adv
};	
val thermalToolsAdvanced as IIngredient[string] = {
	"thermalinnovation:drill_3" : ore_circ_elite,
	"thermalinnovation:drill_4" : ore_circ_ultima,
	"thermalinnovation:saw_3" : ore_circ_elite,
	"thermalinnovation:saw_4" : ore_circ_ultima
};

for recipe, replace in thermalToolsSimple {
	engineerBuilder
		.setCopy(Copy.byName(recipe)
					 .replaceShapedInput(0, 2, replace)
					 .replaceShapedInput(2, 2, replace))
		.addTool(art_tools.driver, 24)
		.create();
	Disabling.markForRemove(recipe);	
}
for recipe, replace in thermalToolsAdvanced {
	engineerBuilder
		.setCopy(Copy.byName(recipe)
					 .replaceShapedInput(0, 2, replace)
					 .replaceShapedInput(2, 2, replace))
		.addTool(art_tools.driver, 32)
		.addTool(art_tools.pliers, 14)
		.setMinimumTier(1)
		.create();
	Disabling.markForRemove(recipe);	
}

//Appliedenergisitcs 2

val dust_lapis = <ore:dustLapis>;
val dust_sulfur = <ore:dustSulfur>;

val piston as IIngredient[string] = {
	normal : <minecraft:piston>,
	sticky : <minecraft:sticky_piston>
};

engineerBuilder
	.setCopy(Copy.byOutput([<appliedenergistics2:inscriber>])
				 .replaceShapedInput(2, 0, gear_iron)
				 .replaceShapedInput(2, 1, motor)
				 .replaceShapedInput(2, 2, gear_iron))
	.addTool(art_tools.driver, 12)
	.addTool(art_tools.spanner, 16)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<appliedenergistics2:controller>])
				 .replaceShapedInput(0, 1, eng_proc)
				 .replaceShapedInput(1, 1, circuit_elite)
				 .replaceShapedInput(2, 1, calc_proc))
	.addTool(art_tools.driver, 28)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<appliedenergistics2:drive>])
				 .replaceShapedInput(1, 1, circuit_adv))
	.addTool(art_tools.driver, 20)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byOutput([<appliedenergistics2:chest>])
				 .replaceShapedInput(1, 1, circuit_basic))
	.addTool(art_tools.driver, 20)
	.addTool(art_tools.pliers, 16)
	.setMinimumTier(1)
	.create();

engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/blocks/interfaces_interface")
				 .replaceShapedInput(1, 1, circuit_adv))
	.addTool(art_tools.driver, 18)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/blocks/fluid_interfaces_interface")
				 .replaceInput(<ore:dyeBlue>, plate_lapis)
				 .replaceShapedInput(1, 1, circuit_adv))
	.addTool(art_tools.driver, 18)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/export_bus")
				 .replaceInput(<minecraft:iron_ingot>, ore_plate_iron)
				 .replaceShapedInput(0, 1, circuit_basic)
				 .replaceShapedInput(2, 1, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/import_bus")
				 .replaceInput(<minecraft:iron_ingot>, ore_plate_iron)
				 .replaceShapedInput(0, 0, circuit_basic)
				 .replaceShapedInput(2, 0, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/export_bus_fluid")
				 .replaceInput(<minecraft:iron_ingot>, electrotine)
				 .replaceInput(<ore:dyeBlue>, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/import_bus_fluid")
				 .replaceInput(<minecraft:iron_ingot>, electrotine)
				 .replaceInput(<ore:dyeBlue>, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
engineerBuilder
	.setCopy(Copy.byName("extracells:parts/gasexportbus")
				 .replaceInput(<minecraft:iron_ingot>, dust_sulfur)
				 .replaceInput(<ore:dyeYellow>, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
engineerBuilder
	.setCopy(Copy.byName("extracells:parts/gasimportbus")
				 .replaceInput(<minecraft:iron_ingot>, dust_sulfur)
				 .replaceInput(<ore:dyeYellow>, circuit_basic))
	.addTool(art_tools.driver, 14)
	.create();
	
recipes.addShapeless("wct_magnet_card", <wct:magnet_card>.withTag({MagnetMode:0}), [<appliedenergistics2:material:28>,<appliedenergistics2:part:300>,<thermalinnovation:magnet:4>]);

//Matter Overdrive

val data_orb = <techreborn:part:3>;
val electrum_coil = <immersiveengineering:metal_decoration0:1>;

engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:machine_casing")
				 .replaceShapedInput(0, 0, circuit_adv)
				 .replaceShapedInput(1, 1, <matteroverdrive:machine_hull>)
				 .replaceShapedInput(2, 0, circuit_adv))
	.addTool(art_tools.driver, 18)
	.addTool(art_tools.pliers, 12)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:h_compensator")
				 .replaceShapedInput(0, 0, circuit_elite)
				 .replaceShapedInput(2, 0, circuit_elite))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.pliers, 14)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:integration_matrix")
				 .replaceShapedInput(0, 0, circuit_elite)
				 .replaceShapedInput(2, 0, circuit_elite))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.pliers, 14)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:plasma_core")
				 .replaceShapedInput(2, 0, circuit_ultima)
				 .replaceShapedInput(0, 2, circuit_ultima))
	.addTool(art_tools.driver, 32)
	.addTool(art_tools.pliers, 24)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:spacetime_equalizer")
				 .replaceShapedInput(0, 0, data_orb)
				 .replaceShapedInput(2, 0, data_orb)
				 .replaceShapedInput(0, 2, circuit_ultima)
				 .replaceShapedInput(2, 2, circuit_ultima))
	.addTool(art_tools.driver, 42)
	.addTool(art_tools.pliers, 28)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:gravitational_stabilizer")
				 .replaceShapedInput(0, 0, ender_capacitor_3)
				 .replaceShapedInput(2, 0, ender_capacitor_3))
	.addTool(art_tools.driver, 42)
	.addTool(art_tools.spanner, 38)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:matter_recycler")
				 .replaceShapedInput(1, 0, circuit_ultima))
	.addTool(art_tools.driver, 32)
	.addTool(art_tools.spanner, 20)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:matter_analyzer")
				 .replaceShapedInput(0, 0, ender_capacitor_3)
				 .replaceShapedInput(2, 0, ender_capacitor_3))
	.addTool(art_tools.driver, 38)
	.addTool(art_tools.spanner, 24)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:decomposer")
				 .replaceShapedInput(1, 1, circuit_ultima))
	.addTool(art_tools.driver, 38)
	.addTool(art_tools.spanner, 22)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:portable_decomposer")
				 .replaceShapedInput(0, 0, circuit_elite)
				 .replaceShapedInput(2, 0, circuit_elite)
				 .replaceShapedInput(0, 2, ender_capacitor_3)
				 .replaceShapedInput(2, 2, ender_capacitor_3))
	.addTool(art_tools.driver, 44)
	.addTool(art_tools.pliers, 36)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:network_switch")
				 .replaceShapedInput(0, 0, base_adv)
				 .replaceShapedInput(2, 0, base_adv)
				 .replaceShapedInput(0, 2, ender_capacitor_2)
				 .replaceShapedInput(2, 2, ender_capacitor_2))
	.addTool(art_tools.driver, 22)
	.addTool(art_tools.spanner, 10)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:fusion_reactor_coil")
				 .replaceShapedInput(1, 1, alloy_ultima))
	.addTool(art_tools.driver, 48)
	.addTool(art_tools.spanner, 40)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:fusion_reactor_io")
				 .replaceShapedInput(1, 1, data_orb))
	.addTool(art_tools.driver, 48)
	.addTool(art_tools.spanner, 40)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:s_magnet")
				 .replaceShapedInput(1, 0, <thermalexpansion:capacitor:2>)
				 .replaceShapedInput(1, 2, electrum_coil))
	.addTool(art_tools.driver, 16)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:matter_container")
				 .replaceShapedInput(0, 1, ender_capacitor_3)
				 .replaceShapedInput(2, 1, circuit_adv))
	.addTool(art_tools.driver, 26)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:isolinear_circuit_0")
				 .replaceInput(<minecraft:redstone>, base_basic)
				 .replaceInput(<ore:blockGlass>, ore_plate_iron)
				 .replaceInput(<minecraft:iron_ingot>, ender_capacitor_1))
	.addTool(art_tools.driver, 12)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:pattern_storage")
				 .replaceShapedInput(1, 1, data_orb))
	.addTool(art_tools.driver, 32)
	.addTool(art_tools.spanner, 20)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setCopy(Copy.byName("matteroverdrive:network_router")
				 .replaceShapedInput(0, 2, circuit_adv)
				 .replaceShapedInput(2, 2, circuit_adv))
	.addTool(art_tools.driver, 26)
	.addTool(art_tools.spanner, 17)
	.setMinimumTier(1)
	.create();
	
//SolarFlux Reborn

val plate_electrum = metalOres.electrum.plate;
val plate_signal = metalOres.signalum.plate;
val plate_invar = metalOres.invar.plate;
val plate_enderium = metalOres.enderium.plate;
val glass = <ore:blockGlass>;
val glass_hard = <ore:blockGlassHardened>;
val glass_force = <ore:glassReinforced>;
val plate_adv = <ore:plateAdvancedAlloy>;
val plate_tungsteel = <ore:plateTungstensteel>;
val plate_photo = <ore:itemPlatePhotovoltaic>;
val power_coil = <thermalfoundation:material:514>;
val capacitor_1 = <thermalexpansion:capacitor>;
val capacitor_2 = <thermalexpansion:capacitor:1>;
val capacitor_3 = <thermalexpansion:capacitor:2>;
val capacitor_4 = <thermalexpansion:capacitor:3>;
val capacitor_5 = <thermalexpansion:capacitor:4>;
val thermal_cell_4 = <thermalexpansion:cell>.withTag({Level:3 as byte});
val thermal_cell_5 = <thermalexpansion:cell>.withTag({Level:4 as byte});
val duct_elect = <thermaldynamics:duct_0:3>;
val duct_ender = <thermaldynamics:duct_0:4>;

val sfx_mirror = <solarflux:mirror>;
val sfx_cell_1 = <solarflux:photovoltaic_cell_1>;
val sfx_cell_2 = <solarflux:photovoltaic_cell_2>;
val sfx_cell_3 = <solarflux:photovoltaic_cell_3>;
val sfx_cell_4 = <solarflux:photovoltaic_cell_4>;
val sfx_solar_1 = <solarflux:solar_panel_1>;
val sfx_solar_2 = <solarflux:solar_panel_2>;
val sfx_solar_3 = <solarflux:solar_panel_3>;
val sfx_solar_4 = <solarflux:solar_panel_4>;
val sfx_solar_5 = <solarflux:solar_panel_5>;
val sfx_solar_6 = <solarflux:solar_panel_6>;
val sfx_solar_7 = <solarflux:solar_panel_7>;
val sfx_solar_8 = <solarflux:solar_panel_8>;

engineerBuilder
	.setShaped([
		[glass,glass,glass],
		[ore_plate_iron,ore_plate_iron,ore_plate_iron]
	])
	.addOutput(sfx_mirror)
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setShaped([
		[glass,glass,glass],
		[plate_lapis,plate_lapis,plate_lapis],
		[ore_plate_iron,ore_plate_iron,ore_plate_iron]
	])
	.addOutput(sfx_cell_1)
	.addTool(art_tools.driver, 13)
	.create();
engineerBuilder
	.setShaped([
		[glass_hard,glass_hard,glass_hard],
		[plate_lapis,plate_lapis,plate_lapis],
		[sfx_mirror,sfx_mirror,sfx_mirror]
	])
	.addOutput(sfx_cell_2)
	.addTool(art_tools.driver, 16)
	.create();
engineerBuilder
	.setShaped([
		[glass_hard,glass_hard,glass_hard],
		[plate_photo,plate_photo,plate_photo],
		[plate_electrum,plate_electrum,plate_electrum]
	])
	.addOutput(sfx_cell_3)
	.addTool(art_tools.driver, 22)
	.create();
engineerBuilder
	.setShaped([
		[glass_force,glass_force,glass_force],
		[plate_photo,plate_photo,plate_photo],
		[plate_signal,plate_signal,plate_signal]
	])
	.addOutput(sfx_cell_4)
	.addTool(art_tools.driver, 27)
	.create();
engineerBuilder
	.setShaped([
		[sfx_mirror,sfx_mirror,sfx_mirror],
		[ore_plate_iron,capacitor_1,ore_plate_iron],
		[ore_plate_iron,power_coil,ore_plate_iron]
	])
	.addOutput(sfx_solar_1)
	.addTool(art_tools.driver, 18)
	.create();
engineerBuilder
	.setShaped([
		[sfx_solar_1,sfx_solar_1,sfx_solar_1],
		[ore_plate_iron,frame,ore_plate_iron],
		[ore_plate_iron,power_coil,ore_plate_iron]
	])
	.addOutput(sfx_solar_2)
	.addTool(art_tools.driver, 26)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_1,sfx_cell_1,sfx_cell_1],
		[plate_invar,capacitor_2,plate_invar],
		[plate_invar,power_coil,plate_invar]
	])
	.addOutput(sfx_solar_3)
	.addTool(art_tools.driver, 38)
	.addTool(art_tools.spanner, 26)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_2,sfx_cell_2,sfx_cell_2],
		[plate_adv,capacitor_3,plate_adv],
		[plate_adv,power_coil,plate_adv]
	])
	.addOutput(sfx_solar_4)
	.addTool(art_tools.driver, 42)
	.addTool(art_tools.spanner, 35)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_3,sfx_cell_3,sfx_cell_3],
		[plate_enderium,capacitor_4,plate_enderium],
		[plate_enderium,power_coil,plate_enderium]
	])
	.addOutput(sfx_solar_5)
	.addTool(art_tools.driver, 42)
	.addTool(art_tools.spanner, 35)
	.setMinimumTier(1)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_3,sfx_cell_3,sfx_cell_3,sfx_cell_3],
		[plate_enderium,capacitor_5,ender_capacitor_2,plate_enderium],
		[plate_enderium,duct_elect,duct_elect,plate_enderium],
		[plate_enderium,power_coil,power_coil,plate_enderium]
	])
	.addOutput(sfx_solar_6)
	.addTool(art_tools.driver, 54)
	.addTool(art_tools.spanner, 48)
	.addTool(art_tools.pliers, 45)
	.setMinimumTier(2)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_4,sfx_cell_4,sfx_cell_4,sfx_cell_4,sfx_cell_4],
		[plate_tungsteel,circuit_ultima,duct_ender,ender_capacitor_3,plate_tungsteel],
		[plate_tungsteel,duct_ender,thermal_cell_4,duct_ender,plate_tungsteel],
		[plate_tungsteel,power_coil,power_coil,power_coil,plate_tungsteel]
	])
	.addOutput(sfx_solar_7)
	.addTool(art_tools.driver, 68)
	.addTool(art_tools.spanner, 56)
	.addTool(art_tools.pliers, 55)
	.setMinimumTier(2)
	.create();
engineerBuilder
	.setShaped([
		[sfx_cell_4,sfx_cell_4,sfx_cell_4,sfx_cell_4,sfx_cell_4],
		[sfx_cell_4,ender_capacitor_3,duct_ender,ender_capacitor_3,sfx_cell_4],
		[plate_tungsteel,circuit_ultima,duct_ender,circuit_ultima,plate_tungsteel],
		[plate_tungsteel,duct_ender,thermal_cell_5,duct_ender,plate_tungsteel],
		[plate_tungsteel,power_coil,power_coil,power_coil,plate_tungsteel]
	])
	.addOutput(sfx_solar_8)
	.addTool(art_tools.driver, 92)
	.addTool(art_tools.spanner, 80)
	.addTool(art_tools.pliers, 82)
	.setMinimumTier(2)
	.create();

//Inscruber circuits automation

//Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);

val copper_plate = metalItems.copper.plate;
val iron_plate = metalItems.iron.plate;
val iridium_plate = metalItems.iridium.plate;
val lapis_plate = <techreborn:plates:10>;
val alloy_basic = <mekanism:enrichedalloy>;
val heavy_gold_plate = <magneticraft:heavy_plates:1>;
val compressed_redstone = <mekanism:compressedredstone>;
val circuit_mk2 = <matteroverdrive:isolinear_circuit:1>;
val circuit_mk3 = <matteroverdrive:isolinear_circuit:2>;
val circuit_mk4 = <matteroverdrive:isolinear_circuit:3>;

mods.appliedenergistics2.Inscriber.addRecipe(circuit_basic, base_basic, false, plate_redstone, copper_plate);
mods.appliedenergistics2.Inscriber.addRecipe(circuit_basic, base_basic, false, compressed_redstone, copper_plate);
mods.appliedenergistics2.Inscriber.addRecipe(base_adv, base_basic, false, alloy_basic, alloy_basic);
mods.appliedenergistics2.Inscriber.addRecipe(circuit_adv, circuit_basic, false, lapis_plate, base_adv);
mods.appliedenergistics2.Inscriber.addRecipe(<mekanism:energytablet>, base_adv, false, circuit_mk2, heavy_gold_plate);
mods.appliedenergistics2.Inscriber.addRecipe(base_elite, base_adv, false, circuit_mk3, iridium_plate);
mods.appliedenergistics2.Inscriber.addRecipe(<techreborn:part:2>, circuit_adv, false, circuit_mk4, <techreborn:plates:6>);
mods.appliedenergistics2.Inscriber.addRecipe(<matteroverdrive:isolinear_circuit>, base_basic, false, ender_capacitor_1, iron_plate);

val firstMetal as int[IIngredient] = {
	metalItems.refined_iron.ingot : 2,
	metalItems.nickel.ingot : 3,
	metalItems.invar.ingot : 4,
	metalItems.titanium.ingot : 5,
	metalItems.tungsten.ingot : 6
};

val second_metal = metalItems.bronze.ingot | metalItems.brass.ingot;
val third_metal = metalItems.tin.ingot | metalItems.aluminum.ingot | metalItems.zinc.ingot;
val composite_ingot = <techreborn:ingot:21>;

for ingot, quantity in firstMetal {
	for sec_ingot in second_metal.items {
		for third_ingot in third_metal.items {
			mods.pneumaticcraft.pressurechamber.addRecipe([ingot * 3, sec_ingot * 3, third_ingot * 3], 4.0, [composite_ingot * quantity]);
		}
	}
	blacksmithBuilder
		.setShaped([
			[ingot, ingot,ingot],
			[second_metal,second_metal,second_metal],
			[third_metal,third_metal,third_metal]
		])
		.addOutput(composite_ingot * quantity)
		.addTool(art_tools.hammer, quantity * 6)
		.create();
}

val crystal_fluix = <ore:crystalFluix> | <ore:crystalPureFluix>;
val dust_fluix = <appliedenergistics2:material:8>;

mods.pneumaticcraft.pressurechamber.addRecipe([metalItems.iridium.ingot * 4, <techreborn:plates:35> * 4, <ore:dustDiamond>], 5.0, [<techreborn:ingot:22>]);
for crystal in crystal_fluix.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([dust_fluix * 4, crystal * 4, <ore:enderpearl>], 3.0, [<appliedenergistics2:material:9>]);
}
mods.pneumaticcraft.pressurechamber.addRecipe([<appliedenergistics2:material:47>, <ore:dustEnder>], 7.0, [<appliedenergistics2:material:48>]);

val diamond = <minecraft:diamond> | <mekanism:otherdust>;
val emerald = <minecraft:emerald> | <techreborn:dust:18>;
val pulsating_crystal = <enderio:item_material:14>;
val vibrant_crystal = <enderio:item_material:15>;

mods.pneumaticcraft.pressurechamber.addRecipe([pulsating_crystal * 2, vibrant_crystal * 2, <enderio:item_material:16>], 3.0, [<enderio:item_material:18>]);

for item in diamond.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([item, metalItems.pulsating_iron.nugget * 8], 2.0, [pulsating_crystal]);
	mods.thermalexpansion.InductionSmelter.addRecipe(pulsating_crystal, item, metalItems.pulsating_iron.nugget * 8, 4000);
}
for item in emerald.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([item, metalItems.vibrant_alloy.nugget * 8], 2.0, [vibrant_crystal]);
	mods.thermalexpansion.InductionSmelter.addRecipe(vibrant_crystal, item, metalItems.vibrant_alloy.nugget * 8, 4000);
}


for item in [
	<solarflux:mirror>,
	<solarflux:photovoltaic_cell_1>,
	<solarflux:photovoltaic_cell_2>,
	<solarflux:photovoltaic_cell_3>,
	<solarflux:photovoltaic_cell_4>,
	<solarflux:solar_panel_1>,
	<solarflux:solar_panel_2>,
	<solarflux:solar_panel_3>,
	<solarflux:solar_panel_4>,
	<solarflux:solar_panel_5>,
	<solarflux:solar_panel_6>,
	<solarflux:solar_panel_7>,
	<solarflux:solar_panel_8>,
	<thermalfoundation:material:512>,
	<thermalfoundation:material:513>,
	<thermalfoundation:material:514>,
	<thermalfoundation:material:515>,
	<thermalfoundation:material:640>,
	<thermalfoundation:upgrade>,
	<thermalfoundation:upgrade:1>,
	<thermalfoundation:upgrade:2>,
	<thermalfoundation:upgrade:3>,
	<techreborn:cable>,
	<techreborn:part>,
	<techreborn:part:1>,
	<techreborn:part:2>,
	<techreborn:part:24>,
	<techreborn:part:29>,
	<techreborn:part:30>,
	<mekanism:controlcircuit:2>,
	<mekanism:controlcircuit:3>,
	<mekanism:basicblock:8>,
	<techreborn:machine_frame>,
	<techreborn:lapotroncrystal>,
	<techreborn:ingot:21>,
	<techreborn:ingot:22>,
	<appliedenergistics2:material:9>,
	<enderio:item_material:14>,
	<enderio:item_material:15>,
	<enderio:item_material:18>
] as IItemStack[] {
	Disabling.markForRemove(item);
}

for recipe in [
	"matteroverdrive:matter_container",
	"matteroverdrive:pattern_storage",
	"matteroverdrive:machine_hull",
	"matteroverdrive:network_router",
	"matteroverdrive:network_switch",
	"matteroverdrive:machine_casing",
	"matteroverdrive:isolinear_circuit_0",
	"matteroverdrive:h_compensator",
	"matteroverdrive:s_magnet",
	"matteroverdrive:plasma_core",
	"matteroverdrive:matter_analyzer",
	"matteroverdrive:matter_recycler",
	"matteroverdrive:decomposer",
	"matteroverdrive:fusion_reactor_io",
	"matteroverdrive:fusion_reactor_coil",
	"matteroverdrive:portable_decomposer",
	"matteroverdrive:integration_matrix",
	"matteroverdrive:spacetime_equalizer",
	"matteroverdrive:gravitational_stabilizer",
	"mekanism:teleportationcore",
	"techreborn:alarm",
	"techreborn:lamp_incandescent",
	"techreborn:cable_6",
	"clickmachine:recipe0"
] as string[] {
	Disabling.markForRemove(recipe);
}