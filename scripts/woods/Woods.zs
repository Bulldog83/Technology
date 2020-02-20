
#priority 1000

import crafttweaker.item.IItemStack;

global plankLogs as IItemStack[][IItemStack]  = {
	<minecraft:planks>: [
		<minecraft:log>,
		<primal:logs_stripped>,
		<quark:bark>
	],
	<minecraft:planks:1>: [
		<minecraft:log:1>,
		<primal:logs_stripped:1>,
		<quark:bark:1>
	],
	<minecraft:planks:2>: [
		<minecraft:log:2>,
		<primal:logs_stripped:2>,
		<quark:bark:2>
	],
	<minecraft:planks:3>: [
		<minecraft:log:3>,
		<primal:logs_stripped:3>,
		<betterwithmods:blood_log>,
		<quark:bark:3>
	],
	<minecraft:planks:4>: [
		<minecraft:log2>,
		<primal:logs_stripped:4>,
		<quark:bark:4>
	],
	<minecraft:planks:5>: [
		<minecraft:log2:1>,
		<primal:logs_stripped:5>,
		<quark:bark:5>
	],
	<natura:nether_planks:1>: [
		<natura:nether_logs2:15>,
		<natura:nether_logs2>
	],
	<natura:nether_planks:2>: [
		<natura:nether_logs:1>
	],
	<natura:nether_planks:3>: [
		<natura:nether_logs:2>
	],
	<natura:nether_planks>: [
		<natura:nether_logs>
	],
	<natura:overworld_planks:1>: [
		<natura:overworld_logs:1>
	],
	<natura:overworld_planks:2>: [
		<natura:overworld_logs:2>
	],
	<natura:overworld_planks:3>: [
		<natura:overworld_logs:3>
	],
	<natura:overworld_planks:6>: [
		<natura:overworld_logs2:2>
	],
	<natura:overworld_planks:7>: [
		<natura:overworld_logs2:3>
	],
	<natura:overworld_planks>: [
		<natura:overworld_logs>
	],
	<primal:planks>: [
		<primal:logs>,
		<primal:logs_stripped:6>
	],
	<primal:planks:1>: [
		<primal:logs:1>,
		<primal:logs_stripped:7>
	],
	<primal:planks:3>: [
		<primal:corypha_stalk>,
		<primal:corypha_stalk:1>
	],
	<rustic:planks:1>: [
		<rustic:log:1>
	],
	<rustic:planks>: [
		<rustic:log>
	],
	<biomesoplenty:planks_0>: [
		<biomesoplenty:log_0:4>
	],
	<biomesoplenty:planks_0:1>: [
		<biomesoplenty:log_0:5>,
		<terraqueous:trunk1:1>
	],
	<biomesoplenty:planks_0:2>: [
		<biomesoplenty:log_0:6>
	],
	<biomesoplenty:planks_0:3>: [
		<biomesoplenty:log_0:7>
	],
	<biomesoplenty:planks_0:4>: [
		<biomesoplenty:log_1:4>
	],
	<biomesoplenty:planks_0:5>: [
		<biomesoplenty:log_1:5>
	],
	<biomesoplenty:planks_0:6>: [
		<biomesoplenty:log_1:6>
	],
	<biomesoplenty:planks_0:7>: [
		<biomesoplenty:log_1:7>,
		<terraqueous:trunk2:3>,
		<terraqueous:trunk2:4>
	],
	<biomesoplenty:planks_0:8>: [
		<biomesoplenty:log_2:4>,
		<natura:redwood_logs:1>
	],
	<biomesoplenty:planks_0:9>: [
		<biomesoplenty:log_2:5>,
		<natura:overworld_logs2>
	],
	<biomesoplenty:planks_0:10>: [
		<biomesoplenty:log_2:6>
	],
	<biomesoplenty:planks_0:11>: [
		<biomesoplenty:log_2:7>
	],
	<biomesoplenty:planks_0:12>: [
		<biomesoplenty:log_3:4>
	],
	<biomesoplenty:planks_0:13>: [
		<biomesoplenty:log_3:5>
	],
	<biomesoplenty:planks_0:14>: [
		<biomesoplenty:log_3:6>
	],
	<biomesoplenty:planks_0:15>: [
		<biomesoplenty:log_3:7>,		
		<natura:overworld_logs2:1>
	],
	<terraqueous:planks>: [
		<terraqueous:trunk1>
	],
	<terraqueous:planks:2>: [
		<terraqueous:trunk1:2>
	],
	<terraqueous:planks:3>: [
		<terraqueous:trunk1:3>
	],
	<terraqueous:planks:4>: [
		<terraqueous:trunk1:4>
	],
	<terraqueous:planks:5>: [
		<terraqueous:trunk2>
	],
	<terraqueous:planks:6>: [
		<terraqueous:trunk2:1>
	],
	<terraqueous:planks:7>: [
		<terraqueous:trunk2:2>
	],/*
	<abyssalcraft:dltplank>: [
		<abyssalcraft:dltlog>
	],
	<abyssalcraft:dreadplanks>: [
		<abyssalcraft:dreadlog>
	],*/
	<thaumcraft:plank_greatwood>: [
		<thaumcraft:log_greatwood>
	],
	<thaumcraft:plank_silverwood>: [
		<thaumcraft:log_silverwood>
	],
	<botania:livingwood:1>: [
		<botania:livingwood>
	],
	<botania:dreamwood:1>: [
		<botania:dreamwood>
	],
	<techreborn:rubber_planks>: [
		<techreborn:rubber_log>
	],
	<thebetweenlands:weedwood_planks>: [
		<thebetweenlands:log_weedwood>,
		<thebetweenlands:log_weedwood:12>
	],
	<thebetweenlands:rubber_tree_planks>: [
		<thebetweenlands:log_rubber>
	],
	<thebetweenlands:giant_root_planks>: [
		<thebetweenlands:giant_root>
	],
	<bloodarsenal:blood_infused_wooden_planks>: [
		<bloodarsenal:blood_infused_wooden_log>
	],
	<twilightforest:tower_wood>: [
		<twilightforest:twilight_log:3>
	]
};

global woodPlanksItems as IItemStack[string][IItemStack]  = {
	<minecraft:planks> : {
		"stick" : <minecraft:stick>,
		"slab" : <minecraft:wooden_slab>,
		"stairs" : <minecraft:oak_stairs>,
		"door" : <minecraft:wooden_door>,
		"trapdoor" : <minecraft:trapdoor>,
		"fence" : <minecraft:fence>,
		"fence_gate" : <minecraft:fence_gate>,
		"pressure_plate" : <minecraft:wooden_pressure_plate>,
		"button" : <minecraft:wooden_button>,
		"boat" : <minecraft:boat>,
		"bookshelf" : <minecraft:bookshelf>,
		"workbench" : <minecraft:crafting_table>,
		"chest" : <minecraft:chest>
	},
	<minecraft:planks:1> : {
		"slab" : <minecraft:wooden_slab:1>,
		"stairs" : <minecraft:spruce_stairs>,
		"door" : <minecraft:spruce_door>,
		"trapdoor" : <malisisdoors:trapdoor_spruce>,
		"fence" : <minecraft:spruce_fence>,
		"fence_gate" : <minecraft:spruce_fence_gate>,
		"boat" : <minecraft:spruce_boat>,
		"bookshelf" : <chisel:bookshelf_spruce>,
		"chest" : <quark:custom_chest>
	},
	<minecraft:planks:2> : {
		"slab" : <minecraft:wooden_slab:2>,
		"stairs" : <minecraft:birch_stairs>,
		"door" : <minecraft:birch_door>,
		"trapdoor" : <malisisdoors:trapdoor_birch>,
		"fence" : <minecraft:birch_fence>,
		"fence_gate" : <minecraft:birch_fence_gate>,
		"boat" : <minecraft:birch_boat>,
		"bookshelf" : <chisel:bookshelf_birch>,
		"chest" : <quark:custom_chest:1>	
	},
	<minecraft:planks:3> : {
		"slab" : <minecraft:wooden_slab:3>,
		"stairs" : <minecraft:jungle_stairs>,
		"door" : <minecraft:jungle_door>,
		"trapdoor" : <malisisdoors:trapdoor_jungle>,
		"fence" : <minecraft:jungle_fence>,
		"fence_gate" : <minecraft:jungle_fence_gate>,
		"boat" : <minecraft:jungle_boat>,
		"bookshelf" : <chisel:bookshelf_jungle>,
		"chest" : <quark:custom_chest:2>	
	},
	<minecraft:planks:4> : {
		"slab" : <minecraft:wooden_slab:4>,
		"stairs" : <minecraft:acacia_stairs>,
		"door" : <minecraft:acacia_door>,
		"trapdoor" : <malisisdoors:trapdoor_acacia>,
		"fence" : <minecraft:acacia_fence>,
		"fence_gate" : <minecraft:acacia_fence_gate>,
		"boat" : <minecraft:acacia_boat>,
		"bookshelf" : <chisel:bookshelf_acacia>,
		"chest" : <quark:custom_chest:3>	
	},
	<minecraft:planks:5> : {
		"slab" : <minecraft:wooden_slab:5>,
		"stairs" : <minecraft:dark_oak_stairs>,
		"door" : <minecraft:dark_oak_door>,
		"trapdoor" : <malisisdoors:trapdoor_dark_oak>,
		"fence" : <minecraft:dark_oak_fence>,
		"fence_gate" : <minecraft:dark_oak_fence_gate>,
		"boat" : <minecraft:dark_oak_boat>,
		"bookshelf" : <chisel:bookshelf_darkoak>,
		"chest" : <quark:custom_chest:4>	
	},
	<natura:nether_planks> : {
		"stick" : <natura:sticks:9>,
		"slab" : <natura:nether_slab>,
		"stairs" : <natura:nether_stairs_ghostwood>,
		"door" : <natura:nether_doors>,
		"trapdoor" : <natura:ghostwood_trap_door>,
		"fence" : <natura:ghostwood_fence>,
		"fence_gate" : <natura:ghostwood_fence_gate>,
		"pressure_plate" : <natura:ghostwood_pressure_plate>,
		"button" : <natura:ghostwood_button>,
		"bookshelf" : <natura:nether_bookshelves>,
		"workbench" : <natura:nether_workbenches>
	},
	<natura:nether_planks:1> : {
		"stick" : <natura:sticks:12>,
		"slab" : <natura:nether_slab:1>,
		"stairs" : <natura:nether_stairs_bloodwood>,
		"door" : <natura:nether_doors:1>,
		"trapdoor" : <natura:bloodwood_trap_door>,
		"fence" : <natura:bloodwood_fence>,
		"fence_gate" : <natura:bloodwood_fence_gate>,
		"pressure_plate" : <natura:bloodwood_pressure_plate>,
		"button" : <natura:bloodwood_button>,
		"bookshelf" : <natura:nether_bookshelves:1>,
		"workbench" : <natura:nether_workbenches:1>
	},
	<natura:nether_planks:2>: {
		"stick" : <natura:sticks:10>,
		"slab" : <natura:nether_slab:2>,
		"stairs" : <natura:nether_stairs_darkwood>,
		"trapdoor" : <natura:darkwood_trap_door>,
		"fence" : <natura:darkwood_fence>,
		"fence_gate" : <natura:darkwood_fence_gate>,
		"pressure_plate" : <natura:darkwood_pressure_plate>,
		"button" : <natura:darkwood_button>,
		"bookshelf" : <natura:nether_bookshelves:2>,
		"workbench" : <natura:nether_workbenches:2>	
	},
	<natura:nether_planks:3>: {
		"stick" : <natura:sticks:11>,
		"slab" : <natura:nether_slab:3>,
		"stairs" : <natura:nether_stairs_fusewood>,
		"trapdoor" : <natura:fusewood_trap_door>,
		"fence" : <natura:fusewood_fence>,
		"fence_gate" : <natura:fusewood_fence_gate>,
		"pressure_plate" : <natura:fusewood_pressure_plate>,
		"button" : <natura:fusewood_button>,
		"bookshelf" : <natura:nether_bookshelves:3>,
		"workbench" : <natura:nether_workbenches:3>
	},
	<natura:overworld_planks> : {
		"stick" : <natura:sticks>,
		"slab" : <natura:overworld_slab>,
		"stairs" : <natura:overworld_stairs_maple>,
		"trapdoor" : <natura:maple_trap_door>,
		"fence" : <natura:maple_fence>,
		"fence_gate" : <natura:maple_fence_gate>,
		"pressure_plate" : <natura:maple_pressure_plate>,
		"button" : <natura:maple_button>,
		"bookshelf" : <natura:overworld_bookshelves>,
		"workbench" : <natura:overworld_workbenches>
	},
	<natura:overworld_planks:1> : {
		"stick" : <natura:sticks:1>,
		"slab" : <natura:overworld_slab:1>,
		"stairs" : <natura:overworld_stairs_silverbell>,
		"trapdoor" : <natura:silverbell_trap_door>,
		"fence" : <natura:silverbell_fence>,
		"fence_gate" : <natura:silverbell_fence_gate>,
		"pressure_plate" : <natura:silverbell_pressure_plate>,
		"button" : <natura:silverbell_button>,
		"bookshelf" : <natura:overworld_bookshelves:1>,
		"workbench" : <natura:overworld_workbenches:1>	
	},
	<natura:overworld_planks:2> : {
		"stick" : <natura:sticks:2>,
		"slab" : <natura:overworld_slab:2>,
		"stairs" : <natura:overworld_stairs_amaranth>,
		"trapdoor" : <natura:amaranth_trap_door>,
		"fence" : <natura:amaranth_fence>,
		"fence_gate" : <natura:amaranth_fence_gate>,
		"pressure_plate" : <natura:amaranth_pressure_plate>,
		"button" : <natura:amaranth_button>,
		"bookshelf" : <natura:overworld_bookshelves:2>,
		"workbench" : <natura:overworld_workbenches:2>
	},
	<natura:overworld_planks:3> : {
		"stick" : <natura:sticks:3>,
		"slab" : <natura:overworld_slab:3>,
		"stairs" : <natura:overworld_stairs_tiger>,
		"trapdoor" : <natura:tiger_trap_door>,
		"fence" : <natura:tiger_fence>,
		"fence_gate" : <natura:tiger_fence_gate>,
		"pressure_plate" : <natura:tiger_pressure_plate>,
		"button" : <natura:tiger_button>,
		"bookshelf" : <natura:overworld_bookshelves:3>,
		"workbench" : <natura:overworld_workbenches:3>
	},
	<natura:overworld_planks:6> : {
		"stick" : <natura:sticks:6>,
		"slab" : <natura:overworld_slab2:1>,
		"stairs" : <natura:overworld_stairs_hopseed>,
		"door" : <natura:overworld_doors:1>,
		"trapdoor" : <natura:hopseed_trap_door>,
		"fence" : <natura:hopseed_fence>,
		"fence_gate" : <natura:hopseed_fence_gate>,
		"pressure_plate" : <natura:hopseed_pressure_plate>,
		"button" : <natura:hopseed_button>,
		"bookshelf" : <natura:overworld_bookshelves:6>,
		"workbench" : <natura:overworld_workbenches:6>
	},
	<natura:overworld_planks:7> : {
		"stick" : <natura:sticks:7>,
		"slab" : <natura:overworld_slab2:2>,
		"stairs" : <natura:overworld_stairs_sakura>,
		"door" : <natura:overworld_doors:2>,
		"trapdoor" : <natura:sakura_trap_door>,
		"fence" : <natura:sakura_fence>,
		"fence_gate" : <natura:sakura_fence_gate>,
		"pressure_plate" : <natura:sakura_pressure_plate>,
		"button" : <natura:sakura_button>,
		"bookshelf" : <natura:overworld_bookshelves:7>,
		"workbench" : <natura:overworld_workbenches:7>
	},
	<primal:planks> : {
		"stick" : <primal:ironwood_stick>,
		"slab" : <primal:slab_ironwood>,
		"stairs" : <primal:stairs_ironwood>,
		"door" : <primal:door_ironwood>,
		"fence" : <primal:fence>,
		"fence_gate" : <primal:gate_ironwood>,
		"boat" : <primal:boat_ironwood>
	},
	<primal:planks:1> : {
		"stick" : <primal:yew_stick>,
		"slab" : <primal:slab_yew>,
		"door" : <primal:door_yew>,
		"fence" : <primal:fence:1>,
		"fence_gate" : <primal:gate_yew>,
		"boat" : <primal:boat_yew>
	},
	<primal:planks:2> : {
		"stick" : <primal:lacquer_stick>,
		"slab" : <primal:slab_lacquer>,
		"stairs" : <primal:stairs_lacquer>,
		"fence" : <primal:fence:2>,
		"boat" : <primal:boat_lacquer>
	},
	<primal:planks:3> : {
		"stick" : <primal:corypha_stick>,
		"slab" : <primal:slab_corypha>,
		"stairs" : <primal:stairs_corypha>,
		"door" : <primal:door_corypha>,
		"fence" : <primal:fence:3>,
		"fence_gate" : <primal:gate_corypha>,
		"boat" : <primal:boat_corypha>
	},
	<rustic:planks> : {
		"slab" : <rustic:olive_slab_item>,
		"stairs" : <rustic:stairs_olive>,
		"door" : <rustic:olive_door>,
		"fence" : <rustic:fence_olive>,
		"fence_gate" : <rustic:fence_gate_olive>
	},
	<rustic:planks:1> : {
		"slab" : <rustic:ironwood_slab_item>,
		"stairs" : <rustic:stairs_ironwood>,
		"door" : <rustic:ironwood_door>,
		"fence" : <rustic:fence_ironwood>,
		"fence_gate" : <rustic:fence_gate_ironwood>
	},
	<biomesoplenty:planks_0> : {
		"slab" : <biomesoplenty:wood_slab_0>,
		"stairs" : <biomesoplenty:sacred_oak_stairs>,
		"door" : <biomesoplenty:sacred_oak_door>,
		"fence" : <biomesoplenty:sacred_oak_fence>,
		"fence_gate" : <biomesoplenty:sacred_oak_fence_gate>,
		"boat" : <biomesoplenty:boat_sacred_oak>
	},
	<biomesoplenty:planks_0:1> : {
		"slab" : <biomesoplenty:wood_slab_0:1>,
		"stairs" : <biomesoplenty:cherry_stairs>,
		"door" : <biomesoplenty:cherry_door>,
		"fence" : <biomesoplenty:cherry_fence>,
		"fence_gate" : <biomesoplenty:cherry_fence_gate>,
		"boat" : <biomesoplenty:boat_cherry>
	},
	<biomesoplenty:planks_0:2> : {
		"slab" : <biomesoplenty:wood_slab_0:2>,
		"stairs" : <biomesoplenty:umbran_stairs>,
		"door" : <biomesoplenty:umbran_door>,
		"fence" : <biomesoplenty:umbran_fence>,
		"fence_gate" : <biomesoplenty:umbran_fence_gate>,
		"boat" : <biomesoplenty:boat_umbran>
	},
	<biomesoplenty:planks_0:3> : {
		"slab" : <biomesoplenty:wood_slab_0:3>,
		"stairs" : <biomesoplenty:fir_stairs>,
		"door" : <biomesoplenty:fir_door>,
		"fence" : <biomesoplenty:fir_fence>,
		"fence_gate" : <biomesoplenty:fir_fence_gate>,
		"boat" : <biomesoplenty:boat_fir>
	},
	<biomesoplenty:planks_0:4> : {
		"slab" : <biomesoplenty:wood_slab_0:4>,
		"stairs" : <biomesoplenty:ethereal_stairs>,
		"door" : <biomesoplenty:ethereal_door>,
		"fence" : <biomesoplenty:ethereal_fence>,
		"fence_gate" : <biomesoplenty:ethereal_fence_gate>,
		"boat" : <biomesoplenty:boat_ethereal>
	},
	<biomesoplenty:planks_0:5> : {
		"slab" : <biomesoplenty:wood_slab_0:5>,
		"stairs" : <biomesoplenty:magic_stairs>,
		"door" : <biomesoplenty:magic_door>,
		"fence" : <biomesoplenty:magic_fence>,
		"fence_gate" : <biomesoplenty:magic_fence_gate>,
		"boat" : <biomesoplenty:boat_magic>
	},
	<biomesoplenty:planks_0:6> : {
		"slab" : <biomesoplenty:wood_slab_0:6>,
		"stairs" : <biomesoplenty:mangrove_stairs>,
		"door" : <biomesoplenty:mangrove_door>,
		"fence" : <biomesoplenty:mangrove_fence>,
		"fence_gate" : <biomesoplenty:mangrove_fence_gate>,
		"boat" : <biomesoplenty:boat_mangrove>
	},
	<biomesoplenty:planks_0:7> : {
		"slab" : <biomesoplenty:wood_slab_0:7>,
		"stairs" : <biomesoplenty:palm_stairs>,
		"door" : <biomesoplenty:palm_door>,
		"fence" : <biomesoplenty:palm_fence>,
		"fence_gate" : <biomesoplenty:palm_fence_gate>,
		"boat" : <biomesoplenty:boat_palm>	
	},
	<biomesoplenty:planks_0:8> : {
		"stick" : <natura:sticks:8>,
		"slab" : <biomesoplenty:wood_slab_1>,
		"stairs" : <biomesoplenty:redwood_stairs>,
		"door" : <biomesoplenty:redwood_door>,
		"trapdoor" : <natura:redwood_trap_door>,
		"fence" : <biomesoplenty:redwood_fence>,
		"fence_gate" : <biomesoplenty:redwood_fence_gate>,
		"pressure_plate" : <natura:redwood_pressure_plate>,
		"button" : <natura:redwood_button>,
		"boat" : <biomesoplenty:boat_redwood>,
		"bookshelf" : <natura:overworld_bookshelves:8>,
		"workbench" : <natura:overworld_workbenches:8>
	},
	<biomesoplenty:planks_0:9> : {
		"stick" : <natura:sticks:4>,
		"slab" : <biomesoplenty:wood_slab_1:1>,
		"stairs" : <biomesoplenty:willow_stairs>,
		"trapdoor" : <natura:willow_trap_door>,
		"door" : <biomesoplenty:willow_door>,
		"fence" : <biomesoplenty:willow_fence>,
		"fence_gate" : <biomesoplenty:willow_fence_gate>,
		"pressure_plate" : <natura:willow_pressure_plate>,
		"button" : <natura:willow_button>,
		"boat" : <biomesoplenty:boat_willow>,
		"bookshelf" : <natura:overworld_bookshelves:4>,
		"workbench" : <natura:overworld_workbenches:4>
	},
	<biomesoplenty:planks_0:10> : {
		"slab" : <biomesoplenty:wood_slab_1:2>,
		"stairs" : <biomesoplenty:pine_stairs>,
		"door" : <biomesoplenty:pine_door>,
		"fence" : <biomesoplenty:pine_fence>,
		"fence_gate" : <biomesoplenty:pine_fence_gate>,
		"boat" : <biomesoplenty:boat_pine>
	},
	<biomesoplenty:planks_0:11> : {
		"slab" : <biomesoplenty:wood_slab_1:3>,
		"stairs" : <biomesoplenty:hellbark_stairs>,
		"door" : <biomesoplenty:hellbark_door>,
		"fence" : <biomesoplenty:hellbark_fence>,
		"fence_gate" : <biomesoplenty:hellbark_fence_gate>,
		"boat" : <biomesoplenty:boat_hellbark>
	},
	<biomesoplenty:planks_0:12> : {
		"slab" : <biomesoplenty:wood_slab_1:4>,
		"stairs" : <biomesoplenty:jacaranda_stairs>,
		"door" : <biomesoplenty:jacaranda_door>,
		"fence" : <biomesoplenty:jacaranda_fence>,
		"fence_gate" : <biomesoplenty:jacaranda_fence_gate>,
		"boat" : <biomesoplenty:boat_jacaranda>
	},
	<biomesoplenty:planks_0:13> : {
		"slab" : <biomesoplenty:wood_slab_1:5>,
		"stairs" : <biomesoplenty:mahogany_stairs>,
		"door" : <biomesoplenty:mahogany_door>,
		"fence" : <biomesoplenty:mahogany_fence>,
		"fence_gate" : <biomesoplenty:mahogany_fence_gate>,
		"boat" : <biomesoplenty:boat_mahogany>
	},
	<biomesoplenty:planks_0:14> : {
		"slab" : <biomesoplenty:wood_slab_1:6>,
		"stairs" : <biomesoplenty:ebony_stairs>,
		"door" : <biomesoplenty:ebony_door>,
		"fence" : <biomesoplenty:ebony_fence>,
		"fence_gate" : <biomesoplenty:ebony_fence_gate>,
		"boat" : <biomesoplenty:boat_ebony>
	},
	<biomesoplenty:planks_0:15> : {
		"stick" : <natura:sticks:5>,
		"slab" : <biomesoplenty:wood_slab_1:7>,
		"stairs" : <biomesoplenty:eucalyptus_stairs>,
		"door" : <biomesoplenty:eucalyptus_door>,
		"trapdoor" : <natura:eucalyptus_trap_door>,
		"fence" : <biomesoplenty:eucalyptus_fence>,
		"fence_gate" : <biomesoplenty:eucalyptus_fence_gate>,
		"pressure_plate" : <natura:eucalyptus_pressure_plate>,
		"button" : <natura:eucalyptus_button>,
		"boat" : <biomesoplenty:boat_eucalyptus>,
		"bookshelf" : <natura:overworld_bookshelves:5>,
		"workbench" : <natura:overworld_workbenches:5>
	},/*
	<abyssalcraft:dltplank> : {
		"slab" : <abyssalcraft:dltslab1>,
		"stairs" : <abyssalcraft:dltstairs>,
		"fence" : <abyssalcraft:dltfence>,
		"pressure_plate" : <abyssalcraft:dltpplate>,
		"button" : <abyssalcraft:dltbutton>
	},
	<abyssalcraft:dreadplanks> : {
		"fence" : <abyssalcraft:drtfence>
	},*/
	<thaumcraft:plank_greatwood> : {
		"slab" : <thaumcraft:slab_greatwood>,
		"stairs" : <thaumcraft:stairs_greatwood>
	},
	<thaumcraft:plank_silverwood> : {
		"slab" : <thaumcraft:slab_silverwood>,
		"stairs" : <thaumcraft:stairs_silverwood>
	},
	<botania:livingwood:1> : {
		"slab" : <botania:livingwood1slab>,
		"stairs" : <botania:livingwood1stairs>
	},
	<botania:dreamwood:1> : {
		"slab" : <botania:dreamwood1slab>,
		"stairs" : <botania:dreamwood1stairs>
	},
	<botania:shimmerwoodplanks> : {
		"slab" : <botania:shimmerwoodplanks0slab>,
		"stairs" : <botania:shimmerwoodplanks0stairs>
	},
	<quark:stained_planks> : {
		"slab" : <quark:stained_planks_white_slab>,
		"stairs" : <quark:stained_planks_white_stairs>
	},
	<quark:stained_planks:1> : {
		"slab" : <quark:stained_planks_orange_slab>,
		"stairs" : <quark:stained_planks_orange_stairs>
	},
	<quark:stained_planks:2> : {
		"slab" : <quark:stained_planks_magenta_slab>,
		"stairs" : <quark:stained_planks_magenta_stairs>
	},
	<quark:stained_planks:3> : {
		"slab" : <quark:stained_planks_light_blue_slab>,
		"stairs" : <quark:stained_planks_light_blue_stairs>
	},
	<quark:stained_planks:4> : {
		"slab" : <quark:stained_planks_yellow_slab>,
		"stairs" : <quark:stained_planks_yellow_stairs>
	},
	<quark:stained_planks:5> : {
		"slab" : <quark:stained_planks_lime_slab>,
		"stairs" : <quark:stained_planks_lime_stairs>
	},
	<quark:stained_planks:6> : {
		"slab" : <quark:stained_planks_pink_slab>,
		"stairs" : <quark:stained_planks_pink_stairs>
	},
	<quark:stained_planks:7> : {
		"slab" : <quark:stained_planks_gray_slab>,
		"stairs" : <quark:stained_planks_gray_stairs>
	},
	<quark:stained_planks:8> : {
		"slab" : <quark:stained_planks_silver_slab>,
		"stairs" : <quark:stained_planks_silver_stairs>
	},
	<quark:stained_planks:9> : {
		"slab" : <quark:stained_planks_cyan_slab>,
		"stairs" : <quark:stained_planks_cyan_stairs>
	},
	<quark:stained_planks:10> : {
		"slab" : <quark:stained_planks_purple_slab>,
		"stairs" : <quark:stained_planks_purple_stairs>
	},
	<quark:stained_planks:11> : {
		"slab" : <quark:stained_planks_blue_slab>,
		"stairs" : <quark:stained_planks_blue_stairs>
	},
	<quark:stained_planks:12> : {
		"slab" : <quark:stained_planks_brown_slab>,
		"stairs" : <quark:stained_planks_brown_stairs>
	},
	<quark:stained_planks:13> : {
		"slab" : <quark:stained_planks_green_slab>,
		"stairs" : <quark:stained_planks_green_stairs>
	},
	<quark:stained_planks:14> : {
		"slab" : <quark:stained_planks_red_slab>,
		"stairs" : <quark:stained_planks_red_stairs>
	},
	<quark:stained_planks:15> : {
		"slab" : <quark:stained_planks_black_slab>,
		"stairs" : <quark:stained_planks_black_stairs>
	},
	<techreborn:rubber_planks> : {
		"slab" : <techreborn:rubber_plank_double_slab>,
		"stairs" : <techreborn:rubber_plank_stair>
	},
	<thebetweenlands:weedwood_planks> : {
		"stick" : <thebetweenlands:items_misc:20>,
		"slab" : <thebetweenlands:weedwood_plank_slab>,
		"stairs" : <thebetweenlands:weedwood_plank_stairs>,
		"door" : <thebetweenlands:weedwood_door_item>,
		"trapdoor" : <thebetweenlands:weedwood_trapdoor>,
		"fence" : <thebetweenlands:weedwood_plank_fence>,
		"fence_gate" : <thebetweenlands:weedwood_plank_fence_gate>,
		"pressure_plate" : <thebetweenlands:weedwood_plank_pressure_plate>,
		"button" : <thebetweenlands:weedwood_plank_button>,
		"boat" : <thebetweenlands:weedwood_rowboat>,
		"workbench" : <thebetweenlands:weedwood_workbench>,
		"chest" : <thebetweenlands:weedwood_chest>
	},
	<thebetweenlands:rubber_tree_planks> : {
		"slab" : <thebetweenlands:rubber_tree_plank_slab>,
		"stairs" : <thebetweenlands:rubber_tree_plank_stairs>,
		"door" : <thebetweenlands:rubber_tree_plank_door_item>,
		"trapdoor" : <thebetweenlands:rubber_tree_plank_trapdoor>,
		"fence" : <thebetweenlands:rubber_tree_plank_fence>,
		"fence_gate" : <thebetweenlands:rubber_tree_plank_fence_gate>
	},
	<thebetweenlands:giant_root_planks> : {
		"slab" : <thebetweenlands:giant_root_plank_slab>,
		"stairs" : <thebetweenlands:giant_root_plank_stairs>,
		"door" : <thebetweenlands:giant_root_plank_door_item>,
		"trapdoor" : <thebetweenlands:giant_root_plank_trapdoor>,
		"fence" : <thebetweenlands:giant_root_plank_fence>,
		"fence_gate" : <thebetweenlands:giant_root_plank_fence_gate>
	},
	<immersiveengineering:treated_wood> : {
		"stick" : <immersiveengineering:material>,
		"slab" : <immersiveengineering:treated_wood_slab>,
		"stairs" : <immersiveengineering:treated_wood_stairs0>,
		"door" : <engineersdoors:door_treated>,
		"trapdoor" : <engineersdoors:trapdoor_treated>,
		"fence" : <immersiveengineering:wooden_decoration>,
		"fence_gate" : <engineersdoors:fencegate_treated>
	},
	<immersiveengineering:treated_wood:1> : {
		"slab" : <immersiveengineering:treated_wood_slab:1>,
		"stairs" : <immersiveengineering:treated_wood_stairs1>
	},
	<immersiveengineering:treated_wood:2> : {
		"slab" : <immersiveengineering:treated_wood_slab:2>,
		"stairs" : <immersiveengineering:treated_wood_stairs2>
	},
	<bloodarsenal:blood_infused_wooden_planks> : {
		"stick" : <bloodarsenal:base_item:1>,
		"stairs" : <bloodarsenal:blood_infused_wooden_stairs>,
		"fence" : <bloodarsenal:blood_infused_wooden_fence>,
		"fence_gate" : <bloodarsenal:blood_infused_wooden_fence_gate>
	}
};

global woodLogItems as IItemStack[string][IItemStack] = {
	<botania:livingwood> : {
		"slab" : <botania:livingwood0slab>,
		"stairs" : <botania:livingwood0stairs>,
		"wall" : <botania:livingwood0wall>
	},
	<botania:dreamwood> : {
		"slab" : <botania:dreamwood0slab>,
		"stairs" : <botania:dreamwood0stairs>,
		"wall" : <botania:dreamwood0wall>
	},
	<quark:bark> : {
		"slab" : <quark:bark_oak_slab>,
		"stairs" : <quark:bark_oak_stairs>,
		"wall" : <quark:bark_oak_wall>
	},
	<quark:bark:1> : {
		"slab" : <quark:bark_spruce_slab>,
		"stairs" : <quark:bark_spruce_stairs>,
		"wall" : <quark:bark_spruce_wall>
	},
	<quark:bark:2> : {
		"slab" : <quark:bark_birch_slab>,
		"stairs" : <quark:bark_birch_stairs>,
		"wall" : <quark:bark_birch_wall>
	},
	<quark:bark:3> : {
		"slab" : <quark:bark_jungle_slab>,
		"stairs" : <quark:bark_jungle_stairs>,
		"wall" : <quark:bark_jungle_wall>
	},
	<quark:bark:4> : {
		"slab" : <quark:bark_acacia_slab>,
		"stairs" : <quark:bark_acacia_stairs>,
		"wall" : <quark:bark_acacia_wall>
	},
	<quark:bark:5> : {
		"slab" : <quark:bark_dark_oak_slab>,
		"stairs" : <quark:bark_dark_oak_stairs>,
		"wall" : <quark:bark_dark_oak_wall>
	}
};