
#priority 100

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val masonBuilder = builderMason.builder();

builderBasic.builder()
	.setShapeless([ore_plank])
	.setFluid(<liquid:creosote> * 125)
	.addOutput(<immersiveengineering:treated_wood>)
	.create();

builderBasic.convertRecipe("immersiveengineering:cloth_devices/jump_cushion", art_tools.needle, 2);
builderBasic.convertRecipe("immersiveengineering:cloth_devices/balloon", art_tools.needle, 3);
builderBasic.convertRecipe("immersiveengineering:cloth_devices/strip_curtain", art_tools.needle, 4);
builderBasic.convertRecipe("immersiveengineering:material/windmill_sail", art_tools.needle, 5);
builderBasic.convertRecipe("immersiveengineering:material/wooden_grip", art_tools.framing_hammer, 4);

builderMason.convertRecipe("immersiveengineering:stone_decoration/cokebrick", art_tools.trowel, 2);
builderMason.convertRecipe("immersiveengineering:stone_decoration/blastbrick", art_tools.trowel, 4);
builderMason.convertRecipe("immersiveengineering:stone_decoration/blastbrick_reinforced", art_tools.hammer, 2);
builderMason.convertRecipe("immersiveengineering:stone_decoration/concrete_leaded", art_tools.hammer, 1);
builderMason.convertRecipe("immersiveengineering:stone_decoration/hempcrete", art_tools.trowel, 2);
builderMason.convertRecipe("immersivetech:stone_decoration/cokebrick_reinforced", art_tools.hammer, 2);

val recipesCarpenter as int[string] = {	
	"immersiveengineering:treated_wood/treated_wood_scaffolding" : 4,
	"immersiveengineering:wooden_devices/crate" : 6,
	"immersiveengineering:wooden_devices/reinforced_crate" : 9,
	"immersiveengineering:wooden_devices/barrel" : 4,
	"immersiveengineering:wooden_devices/workbench" : 6,
	"immersiveengineering:wooden_devices/watermill" : 8,
	"immersiveengineering:wooden_devices/windmill" : 8,
	"immersiveengineering:wooden_devices/post" : 5,
	"immersiveengineering:wooden_devices/wallmount" : 5,
	"immersiveengineering:material/waterwheel_segment" : 3,
	"immersiveengineering:material/windmill_blade" : 3,
	"immersivepetroleum:speedboat/emergency_paddles" : 3
};

for recipe, dmg in recipesCarpenter {
	builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, dmg);
}

val recipesBlacksmith as int[string] = {
	"immersiveengineering:connectors/connector_structural" : 5,
	"immersiveengineering:sheetmetal/copper_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/aluminum_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/lead_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/silver_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/nickel_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/uranium_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/constantan_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/electrum_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/steel_sheetmetal" : 7,
	"immersiveengineering:sheetmetal/iron_sheetmetal" : 6,
	"immersiveengineering:sheetmetal/gold_sheetmetal" : 5,
	"immersiveengineering:sheetmetal/copper_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/aluminum_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/lead_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/silver_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/nickel_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/uranium_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/constantan_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/electrum_sheetmetal_slab_back" : 2,
	"immersiveengineering:sheetmetal/steel_sheetmetal_slab_back" : 4,
	"immersiveengineering:sheetmetal/iron_sheetmetal_slab_back" : 3,
	"immersiveengineering:sheetmetal/gold_sheetmetal_slab_back" : 2,
	"immersiveengineering:metal_decoration/steel_fence" : 8,
	"immersiveengineering:metal_decoration/aluminum_fence" : 5,
	"immersiveengineering:metal_decoration/steel_scaffolding" : 10,
	"immersiveengineering:metal_decoration/steel_scaffolding_cycle0" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_cycle1" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_cycle2" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_back0" : 4,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_back1" : 4,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_back2" : 4,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_cycle0" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_cycle1" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab_cycle2" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs0" : 10,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs1" : 10,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs2" : 10,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs_cycle0" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs_cycle1" : 2,
	"immersiveengineering:metal_decoration/steel_scaffolding_stairs_cycle2" : 2,
	"immersiveengineering:metal_decoration/steel_post" : 10,
	"immersiveengineering:metal_decoration/steel_wallmount" : 12,
	"immersiveengineering:metal_decoration/aluminum_scaffolding" : 7,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_cycle0" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_cycle1" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_cycle2" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_back0" : 2,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_back1" : 2,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_back2" : 2,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_cycle0" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_cycle1" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab_cycle2" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs0" : 6,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs1" : 6,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs2" : 6,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs_cycle0" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs_cycle1" : 1,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_stairs_cycle2" : 1,
	"immersiveengineering:metal_decoration/aluminum_post" : 6,
	"immersiveengineering:metal_decoration/aluminum_wallmount" : 8,
	"immersiveengineering:metal_decoration/razor_wire" : 12,
	"immersiveengineering:metal_decoration/ladder" : 5,
	"immersiveengineering:metal_devices/barrel" : 10,
	"immersiveengineering:metal_devices/fluid_outlet" : 8,
	"immersiveengineering:metal_devices/fluid_pipe" : 12,
	"immersiveengineering:material/component_iron" : 6,
	"immersiveengineering:material/component_steel" : 8,
	"immersiveengineering:material/gunpart_barrel" : 8,
	"immersiveengineering:material/gunpart_drum" : 8,
	"immersiveengineering:material/gunpart_hammer" : 10,
	"immersiveengineering:tool/drillhead_steel" : 16,
	"immersiveengineering:tool/drillhead_iron" : 13,
	"immersiveengineering:tool/jerrycan" : 10,
	"immersiveengineering:tool/speedloader" : 12,
	"immersiveengineering:tool/shield" : 18,
	"immersiveengineering:toolupgrades/drill_damage" : 12,
	"immersiveengineering:toolupgrades/drill_capacity" : 15,
	"immersiveengineering:toolupgrades/drill_waterproof" : 12,
	"immersiveengineering:toolupgrades/revolver_bayonet" : 14,
	"immersiveengineering:toolupgrades/chemthrower_focus" : 16,
	"immersivepetroleum:speedboat/reinforced_hull" : 18,
	"immersivepetroleum:speedboat/icebreaker_bow" : 16,
	"immersivepetroleum:speedboat/expanded_tank" : 16,
	"immersivepetroleum:speedboat/rudders" : 14,
	"immersivepetroleum:tool/oil_can" : 6
};

for recipe, dmg in recipesBlacksmith {
	builderBlacksmith.convertRecipe(recipe, art_tools.hammer, dmg);
}

val metalSlabs as int[string] = {
	"immersiveengineering:sheetmetal/copper_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/aluminum_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/lead_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/silver_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/nickel_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/uranium_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/constantan_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/electrum_sheetmetal_slab" : 6,
	"immersiveengineering:sheetmetal/steel_sheetmetal_slab" : 8,
	"immersiveengineering:sheetmetal/iron_sheetmetal_slab" : 7,
	"immersiveengineering:sheetmetal/gold_sheetmetal_slab" : 6,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab0" : 8,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab1" : 8,
	"immersiveengineering:metal_decoration/steel_scaffolding_slab2" : 8,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab0" : 6,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab1" : 6,
	"immersiveengineering:metal_decoration/aluminum_scaffolding_slab2" : 6
};

for recipe, dmg in metalSlabs {
	builderBlacksmith.convertRecipe(recipe, art_tools.handsaw, dmg);
}

val recipesEngineerDriver as int[string] = {
	"immersiveengineering:metal_decoration/lantern" : 6,
	"immersiveengineering:connectors/transformer" : 12,
	"immersiveengineering:connectors/transformer_hv" : 16,
	"immersiveengineering:connectors/breaker_switch" : 6,
	"immersiveengineering:connectors/redstone_breaker" : 10,
	"immersiveengineering:connectors/current_transformer" : 16,
	"immersiveengineering:connectors/connector_redstone" : 8,
	"immersiveengineering:connectors/connector_probe" : 16,
	"immersiveengineering:metal_devices/capacitor_lv" : 10,
	"immersiveengineering:metal_devices/capacitor_mv" : 12,
	"immersiveengineering:metal_devices/capacitor_hv" : 16,
	"immersiveengineering:metal_devices/dynamo" : 14,
	"immersiveengineering:metal_devices/thermoelectric_generator" : 18,
	"immersiveengineering:metal_devices/powered_lantern" : 12,
	"immersiveengineering:metal_devices/charging_station" : 16,
	"immersiveengineering:metal_devices/tesla_coil" : 18,
	"immersiveengineering:metal_devices/floodlight" : 14,
	"immersiveengineering:metal_devices/garden_cloche" : 14,
	"immersiveengineering:tool/voltmeter" : 8,
	"immersiveengineering:tool/skyhook" : 16,
	"immersiveengineering:toolupgrades/revolver_magazine" : 8,
	"immersiveengineering:toolupgrades/revolver_electro" : 12,
	"immersiveengineering:toolupgrades/railgun_scope" : 10,
	"immersiveengineering:toolupgrades/railgun_capacitors" : 12,
	"immersiveengineering:toolupgrades/shield_flash" : 8,
	"immersiveengineering:toolupgrades/shield_shock" : 10,
	"immersiveengineering:toolupgrades/shield_magnet" : 12,
	"immersiveengineering:toolupgrades/chemthrower_multitank" : 14,
	"immersiveengineering:armor/powerpack" : 16,
	"immersivepetroleum:tool/projector" : 15,
	"immersivepetroleum:metal_decoration/generator" : 15,
	"immersivetech:connectors/connectors_timer" : 12
};

for recipe, dmg in recipesEngineerDriver {
	builderEngineer.convertRecipe(recipe, art_tools.driver, dmg);
}

val recipesEngineerWrench as int[string] = {
	"immersiveengineering:wooden_devices/item_router" : 14,
	"immersiveengineering:wooden_devices/fluid_router" : 14,
	"immersiveengineering:wooden_devices/turntable" : 12,
	"immersiveengineering:metal_decoration/redstone_engineering" : 6,
	"immersiveengineering:metal_decoration/light_engineering" : 6,
	"immersiveengineering:metal_decoration/heavy_engineering" : 8,
	"immersiveengineering:metal_decoration/generator" : 10,
	"immersiveengineering:metal_decoration/radiator" : 8,
	"immersiveengineering:metal_devices/fluid_pump" : 14,
	"immersiveengineering:metal_devices/blastfurnace_preheater" : 14,
	"immersiveengineering:metal_devices/furnace_heater" : 12,
	"immersiveengineering:metal_devices/coresample_drill" : 15,
	"immersiveengineering:conveyors/conveyor_extract" : 15,
	"immersivepetroleum:metal_decoration/auto_lubricator" : 16,
	"immersivepetroleum:speedboat/speedboat" : 16,
	"immersivetech:metal_device/coke_oven_preheater" : 16
};

for recipe, dmg in recipesEngineerWrench {
	builderEngineer.convertRecipe(recipe, art_tools.spanner, dmg);
}

val recipesMultitool as int[IIngredient][string] = {
	"immersiveengineering:tool/drill_diesel" : {
		art_tools["driver"] : 14,
		art_tools["spanner"] : 8		
	},
	"immersiveengineering:tool/revolver" : {
		art_tools["driver"] : 12,
		art_tools["spanner"] : 8
	},
	"immersiveengineering:tool/chemthrower" : {
		art_tools["driver"] : 16,
		art_tools["spanner"] : 10
	},
	"immersiveengineering:tool/railgun" : {
		art_tools["driver"] : 15,
		art_tools["spanner"] : 16
	},
	"immersiveengineering:metal_devices/turret_chemthrower" : {
		art_tools["driver"] : 20,
		art_tools["spanner"] : 16
	},
	"immersiveengineering:metal_devices/turret_gun" : {
		art_tools["driver"] : 20,
		art_tools["spanner"] : 16
	}
};

for recipe, tools in recipesMultitool {
	builderEngineer.convertMultitoolRecipe(recipe, tools);
}

masonBuilder
	.setCopy(Copy.byName("immersiveengineering:stone_decoration/concrete")
				 .replaceInput(<minecraft:water_bucket>, <ore:sand>))
	.setFluid(<liquid:water> * 1000)
	.addTool(art_tools.trowel, 2)
	.create();
masonBuilder
	.setCopy(Copy.byName("immersiveengineering:stone_decoration/concrete2")
				 .replaceInput(<minecraft:water_bucket>, <ore:itemSlag>))
	.setFluid(<liquid:water> * 1000)
	.addTool(art_tools.trowel, 3)
	.create();
masonBuilder
	.setCopy(Copy.byName("immersivepetroleum:stone_decoration/asphalt")
				 .replaceInput(<minecraft:water_bucket>, <ore:sand>))
	.setFluid(<liquid:water> * 1000)
	.addTool(art_tools.trowel, 2)
	.create();
masonBuilder
	.setCopy(Copy.byName("immersivepetroleum:stone_decoration/asphalt2")
				 .replaceInput(<minecraft:water_bucket>, <ore:itemSlag>))
	.setFluid(<liquid:water> * 1000)
	.addTool(art_tools.trowel, 3)
	.create();
masonBuilder
	.setShaped([
		[ore_mortar,<ore:sandstone>,ore_mortar],
		[<ore:ingotBrick>,ore_mortar,<ore:ingotBrick>],
		[ore_mortar,<ore:sandstone>,ore_mortar]
	])
	.addOutput(<immersiveengineering:stone_decoration:10> * 4)
	.addTool(art_tools.trowel, 2)
	.create();
	
builderEngineer.builder()
	.setCopy(Copy.byName("immersiveengineering:conveyors/conveyor_basic")
				 .replaceInput(<ore:leather>, <ore:leather> | <ore:itemRubber>))
	.addTool(art_tools.driver, 8)
	.create();

Disabling.markForRemove("immersiveengineering:conveyors/conveyor_basic");
Disabling.markForRemove("immersiveengineering:conveyors/conveyor_basic_rubber");
	
Disabling.markForRemove(<immersiveengineering:stone_decoration:5>);
Disabling.markForRemove(<immersiveengineering:stone_decoration:10>);
Disabling.markForRemove(<immersivepetroleum:stone_decoration>);