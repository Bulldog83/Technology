
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

global blockToRock as IIngredient[int][IItemStack] = {
	<primal:rock_stone> : {
		6 : <minecraft:stone_stairs> |
			<minecraft:stone_brick_stairs> |
			<quark:stone_stairs>,
		4 : <minecraft:stone> |
			<minecraft:cobblestone> |
			<minecraft:stonebrick:*> |
			<minecraft:mossy_cobblestone> |
			<chisel:cobblestone:*> |
			<chisel:cobblestone1:*> |
			<chisel:cobblestone2:*> |
			<chisel:cobblestonemossy:*> |
			<chisel:cobblestonemossy1:*> |
			<chisel:cobblestonemossy2:*> |
			<chisel:stonebrick:*> |
			<chisel:stonebrick1:*> |
			<chisel:stonebrick2:*> |
			<primal:ladder_block_smoothstone> |
			<primal:ladder_block_stonebrick> |
			<primal:ladder_block_stonebrick_mossy> |
			<primal:ladder_block_stonebrick_cracked> |
			<primal:ladder_block_cobblestone> |
			<primal:ladder_block_cobblestone_mossy> |
			<quark:stone_wall> |
			<rustic:stone_pillar>,
		2 : <minecraft:stone_slab> |
			<minecraft:stone_slab:3> |
			<minecraft:stone_slab:5>
	},
	<primal:rock_granite> : {
		6 : <quark:stone_granite_stairs> |
			<quark:stone_granite_bricks_stairs>,
		4 : <minecraft:stone:1> |
			<minecraft:stone:2> |
			<betterwithmods:cobblestone> |
			<primal:ladder_block_granite> |
			<primal:ladder_block_smoothgranite> |
			<chisel:granite:*> |
			<chisel:granite1:*> |
			<chisel:granite2:*> |
			<quark:stone_granite_wall> |
			<rustic:granite_pillar> |
			<quark:world_stone_bricks> |
			<quark:stone_granite_bricks_wall>,
		2 : <quark:stone_granite_slab> |
			<quark:stone_granite_bricks_slab>
	},
	<primal:rock_diorite> : {
		6 : <quark:stone_diorite_stairs> |
			<quark:stone_diorite_bricks_stairs>,
		4 : <minecraft:stone:3> |
			<minecraft:stone:4> |
			<betterwithmods:cobblestone:1> |
			<primal:ladder_block_diorite> |
			<primal:ladder_block_smoothdiorite> |
			<chisel:diorite:*> |
			<chisel:diorite1:*> |
			<chisel:diorite2:*> |
			<quark:stone_diorite_wall> |
			<rustic:diorite_pillar> |
			<quark:world_stone_bricks:1> |
			<quark:stone_diorite_bricks_wall>,
		2 : <quark:stone_diorite_slab> |
			<quark:stone_diorite_bricks_slab>
	},
	<primal:rock_andesite> : {
		6 : <quark:stone_andesite_stairs> |
			<quark:stone_andesite_bricks_stairs>,
		4 : <minecraft:stone:5> |
			<minecraft:stone:6> |
			<betterwithmods:cobblestone:2> |
			<primal:ladder_block_andesite> |
			<primal:ladder_block_smoothandesite> |
			<chisel:andesite:*> |
			<chisel:andesite1:*> |
			<chisel:andesite2:*> |
			<quark:stone_andesite_wall> |
			<rustic:andesite_pillar> |
			<quark:world_stone_bricks:2> |
			<quark:stone_andesite_bricks_wall>,
		2 : <quark:stone_andesite_slab> |
			<quark:stone_andesite_bricks_slab>
	},
	<primal:rock_netherrack> : {
		6 : <primal:stairs_netherrack>,
		4 : <minecraft:netherrack> |
			<primal:ladder_block_netherrack> |
			<chisel:netherrack:*>,
		2 : <primal:slab_netherrack>
	},
	<minecraft:quartz> : {
		6 : <minecraft:quartz_stairs>,
		4 : <minecraft:quartz_ore> |
			<minecraft:quartz_block:*> |
			<chisel:quartz:*> |
			<chisel:quartz1:*>,
		2 : <minecraft:stone_slab:7>
	},
	<minecraft:prismarine_shard> : {
		6 : <quark:prismarine_stairs> |
			<quark:prismarine_bricks_stairs> |
			<quark:prismarine_dark_stairs>,
		4 : <minecraft:prismarine:*> |
			<chisel:prismarine:*> |
			<chisel:prismarine1:*> |
			<chisel:prismarine2:*> |
			<quark:prismarine_rough_wall> |
			<quark:prismarine_bricks_wall> |
			<quark:dark_prismarine_wall>,
		2 : <quark:prismarine_slab> |
			<quark:prismarine_bricks_slab> |
			<quark:prismarine_dark_slab>
	},
	<minecraft:chorus_fruit_popped> : {
		6 : <minecraft:purpur_stairs>,
		4 : <minecraft:purpur_block> |
			<minecraft:purpur_pillar> |
			<chisel:purpur1:*> |
			<chisel:purpur2:*>,
		2 : <minecraft:purpur_slab>
	}
};

global stoneItems as IItemStack[string][IItemStack] = {
	<minecraft:stone> : {
		"stairs" : <quark:stone_stairs>,
		"wall" : <quark:stone_wall>,
		"pillar" : <rustic:stone_pillar>,
		"smooth" : <quark:polished_stone>
	},
	<minecraft:stone:1> : {
		"slab" : <quark:stone_granite_slab>,
		"stairs" : <quark:stone_granite_stairs>,
		"wall" : <quark:stone_granite_wall>,
		"pillar" : <rustic:granite_pillar>,
		"smooth" : <minecraft:stone:2>
	},
	<minecraft:stone:3> : {
		"slab" : <quark:stone_diorite_slab>,
		"stairs" : <quark:stone_diorite_stairs>,
		"wall" : <quark:stone_diorite_wall>,
		"pillar" : <rustic:diorite_pillar>,
		"smooth" : <minecraft:stone:4>
	},
	<minecraft:stone:5> : {
		"slab" : <quark:stone_andesite_slab>,
		"stairs" : <quark:stone_andesite_stairs>,
		"wall" : <quark:stone_andesite_wall>,
		"pillar" : <rustic:andesite_pillar>,
		"smooth" : <minecraft:stone:6>
	},
	<minecraft:sandstone> : {
		"slab" : <minecraft:stone_slab:1>,
		"stairs" : <minecraft:sandstone_stairs>,
		"wall" : <quark:sandstone_wall>,
		"chiseled" : <minecraft:sandstone:1>,
		"smooth" : <minecraft:sandstone:2>
	},
	<minecraft:stonebrick> : {
		"slab" : <minecraft:stone_slab:5>,
		"stairs" : <minecraft:stone_brick_stairs>,
		"wall" : <quark:stonebrick_wall>,
		"chiseled" : <minecraft:stonebrick:3>
	},
	<minecraft:quartz_block> : {
		"slab" : <minecraft:stone_slab:7>,
		"stairs" : <minecraft:quartz_stairs>,
		"pillar" : <minecraft:quartz_block:2>,
		"chiseled" : <minecraft:quartz_block:1>
	},
	<minecraft:netherrack> : {
		"slab" : <primal:slab_netherrack>,
		"stairs" : <primal:stairs_netherrack>
	},
	<minecraft:red_sandstone> : {
		"slab" : <minecraft:stone_slab2>,
		"stairs" : <minecraft:red_sandstone_stairs>,
		"wall" : <quark:red_sandstone_wall>,
		"chiseled" : <minecraft:red_sandstone:1>,
		"smooth" : <minecraft:red_sandstone:2>
	},
	<minecraft:prismarine> : {
		"slab" : <quark:prismarine_slab>,
		"stairs" : <quark:prismarine_stairs>,
		"wall" : <quark:prismarine_rough_wall>
	},
	<minecraft:prismarine:1> : {
		"slab" : <quark:prismarine_bricks_slab>,
		"stairs" : <quark:prismarine_bricks_stairs>,
		"wall" : <quark:prismarine_bricks_wall>
	},
	<minecraft:prismarine:2> : {
		"slab" : <quark:prismarine_dark_slab>,
		"stairs" : <quark:prismarine_dark_stairs>,
		"wall" : <quark:dark_prismarine_wall>
	},
	<minecraft:mossy_cobblestone> : {
		"wall" : <minecraft:cobblestone_wall:1>
	},
	<minecraft:nether_brick> : {
		"fence" : <minecraft:nether_brick_fence>,
		"fence_gate" : <quark:nether_brick_fence_gate>
	},
	<minecraft:end_bricks> : {
		"slab" : <quark:end_bricks_slab>,
		"stairs" : <quark:end_bricks_stairs>,
		"wall" : <quark:end_bricks_wall>
	},
	<minecraft:purpur_block> : {
		"pillar" : <minecraft:purpur_pillar>
	},
	<quark:polished_stone> : {
		"slab" : <minecraft:stone_slab>
	},
	<astralsorcery:blockmarble:1> : {
		"slab" : <astralsorcery:blockmarbleslab>,
		"stairs" : <astralsorcery:blockmarblestairs>
	},
	<thebetweenlands:betweenstone> : {
		"slab" : <thebetweenlands:betweenstone_slab>,
		"stairs" : <thebetweenlands:betweenstone_stairs>,
		"wall" : <thebetweenlands:betweenstone_wall>,
		"chiseled" : <thebetweenlands:betweenstone_chiseled>
	},
	<thebetweenlands:smooth_betweenstone> : {
		"slab" : <thebetweenlands:smooth_betweenstone_slab>,
		"stairs" : <thebetweenlands:smooth_betweenstone_stairs>,
		"wall" : <thebetweenlands:smooth_betweenstone_wall>,
		"pillar" : <thebetweenlands:betweenstone_pillar>
	},
	<thebetweenlands:mossy_smooth_betweenstone> : {
		"slab" : <thebetweenlands:mossy_smooth_betweenstone_slab>,
		"stairs" : <thebetweenlands:mossy_smooth_betweenstone_stairs>,
		"wall" : <thebetweenlands:mossy_smooth_betweenstone_wall>
	},
	<thebetweenlands:betweenstone_bricks> : {
		"slab" : <thebetweenlands:betweenstone_brick_slab>,
		"stairs" : <thebetweenlands:betweenstone_brick_stairs>,
		"wall" : <thebetweenlands:betweenstone_brick_wall>
	},
	<thebetweenlands:mossy_betweenstone_bricks> : {
		"slab" : <thebetweenlands:mossy_betweenstone_brick_slab>,
		"stairs" : <thebetweenlands:mossy_betweenstone_brick_stairs>,
		"wall" : <thebetweenlands:mossy_betweenstone_brick_wall>
	},
	<thebetweenlands:cracked_betweenstone_bricks> : {
		"slab" : <thebetweenlands:cracked_betweenstone_brick_slab>,
		"stairs" : <thebetweenlands:cracked_betweenstone_brick_stairs>,
		"wall" : <thebetweenlands:cracked_betweenstone_brick_wall>
	},
	<thebetweenlands:cragrock> : {
		"slab" : <thebetweenlands:cragrock_slab>,
		"stairs" : <thebetweenlands:cragrock_stairs>,
		"wall" : <thebetweenlands:cragrock_wall>,
		"chiseled" : <thebetweenlands:cragrock_chiseled>
	},
	<thebetweenlands:smooth_cragrock> : {
		"slab" : <thebetweenlands:smooth_cragrock_slab>,
		"stairs" : <thebetweenlands:smooth_cragrock_stairs>,
		"wall" : <thebetweenlands:smooth_cragrock_wall>,
		"pillar" : <thebetweenlands:cragrock_pillar>
	},
	<thebetweenlands:cragrock_bricks> : {
		"slab" : <thebetweenlands:cragrock_brick_slab>,
		"stairs" : <thebetweenlands:cragrock_brick_stairs>,
		"wall" : <thebetweenlands:cragrock_brick_wall>
	},
	<thebetweenlands:pitstone> : {
		"slab" : <thebetweenlands:pitstone_slab>,
		"stairs" : <thebetweenlands:pitstone_stairs>,
		"wall" : <thebetweenlands:pitstone_wall>,
		"chiseled" : <thebetweenlands:pitstone_chiseled>
	},
	<thebetweenlands:smooth_pitstone> : {
		"slab" : <thebetweenlands:smooth_pitstone_slab>,
		"stairs" : <thebetweenlands:smooth_pitstone_stairs>,
		"wall" : <thebetweenlands:smooth_pitstone_wall>,
		"pillar" : <thebetweenlands:pitstone_pillar>
	},
	<thebetweenlands:pitstone_bricks> : {
		"slab" : <thebetweenlands:pitstone_brick_slab>,
		"stairs" : <thebetweenlands:pitstone_brick_stairs>,
		"wall" : <thebetweenlands:pitstone_brick_wall>
	},
	<thebetweenlands:limestone> : {
		"slab" : <thebetweenlands:limestone_slab>,
		"stairs" : <thebetweenlands:limestone_stairs>,
		"wall" : <thebetweenlands:limestone_wall>,
		"chiseled" : <thebetweenlands:limestone_chiseled>
	},
	<thebetweenlands:limestone_bricks> : {
		"slab" : <thebetweenlands:limestone_brick_slab>,
		"stairs" : <thebetweenlands:limestone_brick_stairs>,
		"wall" : <thebetweenlands:limestone_brick_wall>
	},
	<thebetweenlands:polished_limestone> : {
		"slab" : <thebetweenlands:polished_limestone_slab>,
		"stairs" : <thebetweenlands:polished_limestone_stairs>,
		"wall" : <thebetweenlands:polished_limestone_wall>,
		"pillar" : <thebetweenlands:limestone_pillar>
	},
	<thebetweenlands:tar_solid> : {
		"slab" : <thebetweenlands:tar_solid_slab>,
		"stairs" : <thebetweenlands:tar_solid_stairs>,
		"wall" : <thebetweenlands:tar_solid_wall>
	},
	<thebetweenlands:temple_bricks> : {
		"slab" : <thebetweenlands:temple_brick_slab>,
		"stairs" : <thebetweenlands:temple_brick_stairs>,
		"wall" : <thebetweenlands:temple_brick_wall>,
		"pillar" : <thebetweenlands:temple_pillar>
	},
	<biomesoplenty:white_sandstone> : {
		"slab" : <biomesoplenty:other_slab:1>,
		"stairs" : <biomesoplenty:white_sandstone_stairs>,
		"chiseled" : <biomesoplenty:white_sandstone:1>,
		"smooth" : <biomesoplenty:white_sandstone:2>
	},
	<botania:livingrock> : {
		"slab" : <botania:livingrock0slab>,
		"stairs" : <botania:livingrock0stairs>,
		"wall" : <botania:livingrock0wall>
	},
	<botania:livingrock:1> : {
		"slab" : <botania:livingrock1slab>,
		"stairs" : <botania:livingrock1stairs>,
		"chiseled" : <botania:livingrock:4>
	},
	<botania:quartztypedark> : {
		"slab" : <botania:quartzslabdarkhalf>,
		"stairs" : <botania:quartzstairsdark>,
		"pillar" : <botania:quartztypedark:2>,
		"chiseled" : <botania:quartztypedark:1>
	},
	<botania:quartztypemana> : {
		"slab" : <botania:quartzslabmanahalf>,
		"stairs" : <botania:quartzstairsmana>,
		"pillar" : <botania:quartztypemana:2>,
		"chiseled" : <botania:quartztypemana:1>
	},
	<botania:quartztypeblaze> : {
		"slab" : <botania:quartzslabblazehalf>,
		"stairs" : <botania:quartzstairsblaze>,
		"pillar" : <botania:quartztypeblaze:2>,
		"chiseled" : <botania:quartztypeblaze:1>
	},
	<botania:quartztypelavender> : {
		"slab" : <botania:quartzslablavenderhalf>,
		"stairs" : <botania:quartzstairslavender>,
		"pillar" : <botania:quartztypelavender:2>,
		"chiseled" : <botania:quartztypelavender:1>
	},
	<botania:quartztypered> : {
		"slab" : <botania:quartzslabredhalf>,
		"stairs" : <botania:quartzstairsred>,
		"pillar" : <botania:quartztypered:2>,
		"chiseled" : <botania:quartztypered:1>
	},
	<botania:quartztypeelf> : {
		"slab" : <botania:quartzslabelfhalf>,
		"stairs" : <botania:quartzstairself>,
		"pillar" : <botania:quartztypeelf:2>,
		"chiseled" : <botania:quartztypeelf:1>
	},
	<botania:quartztypesunny> : {
		"slab" : <botania:quartzslabsunnyhalf>,
		"stairs" : <botania:quartzstairssunny>,
		"pillar" : <botania:quartztypesunny:2>,
		"chiseled" : <botania:quartztypesunny:1>
	},
	<botania:biomestonea> : {
		"slab" : <botania:biomestonea0slab>,
		"stairs" : <botania:biomestonea0stairs>
	},
	<botania:biomestoneb> : {
		"slab" : <botania:biomestoneb0slab>,
		"stairs" : <botania:biomestoneb0stairs>,
		"chiseled" : <botania:biomestoneb:8>
	},
	<botania:biomestonea:1> : {
		"slab" : <botania:biomestonea1slab>,
		"stairs" : <botania:biomestonea1stairs>
	},
	<botania:biomestoneb:1> : {
		"slab" : <botania:biomestoneb1slab>,
		"stairs" : <botania:biomestoneb1stairs>,
		"chiseled" : <botania:biomestoneb:9>
	},
	<botania:biomestonea:2> : {
		"slab" : <botania:biomestonea2slab>,
		"stairs" : <botania:biomestonea2stairs>
	},
	<botania:biomestoneb:2> : {
		"slab" : <botania:biomestoneb2slab>,
		"stairs" : <botania:biomestoneb2stairs>,
		"chiseled" : <botania:biomestoneb:10>
	},
	<botania:biomestonea:3> : {
		"slab" : <botania:biomestonea3slab>,
		"stairs" : <botania:biomestonea3stairs>
	},
	<botania:biomestoneb:3> : {
		"slab" : <botania:biomestoneb3slab>,
		"stairs" : <botania:biomestoneb3stairs>,
		"chiseled" : <botania:biomestoneb:11>
	},
	<botania:biomestonea:4> : {
		"slab" : <botania:biomestonea4slab>,
		"stairs" : <botania:biomestonea4stairs>
	},
	<botania:biomestoneb:4> : {
		"slab" : <botania:biomestoneb4slab>,
		"stairs" : <botania:biomestoneb4stairs>,
		"chiseled" : <botania:biomestoneb:12>
	},
	<botania:biomestonea:5> : {
		"slab" : <botania:biomestonea5slab>,
		"stairs" : <botania:biomestonea5stairs>
	},
	<botania:biomestoneb:5> : {
		"slab" : <botania:biomestoneb5slab>,
		"stairs" : <botania:biomestoneb5stairs>,
		"chiseled" : <botania:biomestoneb:13>
	},
	<botania:biomestonea:6> : {
		"slab" : <botania:biomestonea6slab>,
		"stairs" : <botania:biomestonea6stairs>
	},
	<botania:biomestoneb:6> : {
		"slab" : <botania:biomestoneb6slab>,
		"stairs" : <botania:biomestoneb6stairs>,
		"chiseled" : <botania:biomestoneb:14>
	},
	<botania:biomestonea:7> : {
		"slab" : <botania:biomestonea7slab>,
		"stairs" : <botania:biomestonea7stairs>
	},
	<botania:biomestoneb:7> : {
		"slab" : <botania:biomestoneb7slab>,
		"stairs" : <botania:biomestoneb7stairs>,
		"chiseled" : <botania:biomestoneb:15>
	},
	<botania:biomestonea:8> : {
		"slab" : <botania:biomestonea8slab>,
		"stairs" : <botania:biomestonea8stairs>,
		"wall" : <botania:biomestonea0wall>,
	},
	<botania:biomestonea:9> : {
		"slab" : <botania:biomestonea9slab>,
		"stairs" : <botania:biomestonea9stairs>,
		"wall" : <botania:biomestonea0wall:1>
	},
	<botania:biomestonea:10> : {
		"slab" : <botania:biomestonea10slab>,
		"stairs" : <botania:biomestonea10stairs>,
		"wall" : <botania:biomestonea0wall:2>
	},
	<botania:biomestonea:11> : {
		"slab" : <botania:biomestonea11slab>,
		"stairs" : <botania:biomestonea11stairs>,
		"wall" : <botania:biomestonea0wall:3>
	},
	<botania:biomestonea:12> : {
		"slab" : <botania:biomestonea12slab>,
		"stairs" : <botania:biomestonea12stairs>,
		"wall" : <botania:biomestonea0wall:4>
	},
	<botania:biomestonea:13> : {
		"slab" : <botania:biomestonea13slab>,
		"stairs" : <botania:biomestonea13stairs>,
		"wall" : <botania:biomestonea0wall:5>
	},
	<botania:biomestonea:14> : {
		"slab" : <botania:biomestonea14slab>,
		"stairs" : <botania:biomestonea14stairs>,
		"wall" : <botania:biomestonea0wall:6>
	},
	<botania:biomestonea:15> : {
		"slab" : <botania:biomestonea15slab>,
		"stairs" : <botania:biomestonea15stairs>,
		"wall" : <botania:biomestonea0wall:7>
	},
	<botania:pavement> : {
		"slab" : <botania:pavement0slab>,
		"stairs" : <botania:pavement0stairs>
	},
	<botania:pavement:1> : {
		"slab" : <botania:pavement1slab>,
		"stairs" : <botania:pavement1stairs>
	},
	<botania:pavement:2> : {
		"slab" : <botania:pavement2slab>,
		"stairs" : <botania:pavement2stairs>
	},
	<botania:pavement:3> : {
		"slab" : <botania:pavement3slab>,
		"stairs" : <botania:pavement3stairs>
	},
	<botania:pavement:4> : {
		"slab" : <botania:pavement4slab>,
		"stairs" : <botania:pavement4stairs>
	},
	<botania:pavement:5> : {
		"slab" : <botania:pavement5slab>,
		"stairs" : <botania:pavement5stairs>
	},
	<botania:shimmerrock> : {
		"slab" : <botania:shimmerrock0slab>,
		"stairs" : <botania:shimmerrock0stairs>
	},
	<ferdinandsflowers:block_dye_brick> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half>
	},
	<ferdinandsflowers:block_dye_brick:1> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:1>
	},
	<ferdinandsflowers:block_dye_brick:2> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:2>
	},
	<ferdinandsflowers:block_dye_brick:3> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:3>
	},
	<ferdinandsflowers:block_dye_brick:4> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:4>
	},
	<ferdinandsflowers:block_dye_brick:5> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:5>
	},
	<ferdinandsflowers:block_dye_brick:6> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:6>
	},
	<ferdinandsflowers:block_dye_brick:7> : {
		"slab" : <ferdinandsflowers:block_dye_brick_half:7>
	},
	<ferdinandsflowers:block_dye_brick:8> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb>
	},
	<ferdinandsflowers:block_dye_brick:9> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:1>
	},
	<ferdinandsflowers:block_dye_brick:10> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:2>
	},
	<ferdinandsflowers:block_dye_brick:11> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:3>
	},
	<ferdinandsflowers:block_dye_brick:12> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:4>
	},
	<ferdinandsflowers:block_dye_brick:13> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:5>
	},
	<ferdinandsflowers:block_dye_brick:14> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:6>
	},
	<ferdinandsflowers:block_dye_brick:15> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfb:7>
	},
	<ferdinandsflowers:block_dye_brickb> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc>
	},
	<ferdinandsflowers:block_dye_brickb:1> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:1>
	},
	<ferdinandsflowers:block_dye_brickb:2> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:2>
	},
	<ferdinandsflowers:block_dye_brickb:3> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:3>
	},
	<ferdinandsflowers:block_dye_brickb:4> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:4>
	},
	<ferdinandsflowers:block_dye_brickb:5> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:5>
	},
	<ferdinandsflowers:block_dye_brickb:6> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:6>
	},
	<ferdinandsflowers:block_dye_brickb:7> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfc:7>
	},
	<ferdinandsflowers:block_dye_brickb:8> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd>
	},
	<ferdinandsflowers:block_dye_brickb:9> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:1>
	},
	<ferdinandsflowers:block_dye_brickb:10> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:2>
	},
	<ferdinandsflowers:block_dye_brickb:11> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:3>
	},
	<ferdinandsflowers:block_dye_brickb:12> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:4>
	},
	<ferdinandsflowers:block_dye_brickb:13> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:5>
	},
	<ferdinandsflowers:block_dye_brickb:14> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:6>
	},
	<ferdinandsflowers:block_dye_brickb:15> : {
		"slab" : <ferdinandsflowers:block_dye_brick_halfd:7>
	},
	<primal:common_stone:1> : {
		"wall" : <primal:wall>,
		"pillar" : <primal:common_stone:7>
	},
	<primal:sarsen_stone:1> : {
		"wall" : <primal:wall:1>,
		"pillar" : <primal:sarsen_stone:7>
	},
	<primal:blue_stone:1> : {
		"wall" : <primal:wall:2>,
		"pillar" : <primal:blue_stone:7>
	},
	<primal:ortho_stone:1> : {
		"wall" : <primal:wall:3>,
		"pillar" : <primal:ortho_stone:7>
	},
	<primal:schist_green_stone:1> : {
		"wall" : <primal:wall:4>,
		"pillar" : <primal:schist_green_stone:7>
	},
	<primal:schist_blue_stone:1> : {
		"wall" : <primal:wall:5>,
		"pillar" : <primal:schist_blue_stone:7>
	},
	<primal:scoria_stone:1> : {
		"wall" : <primal:wall:6>,
		"pillar" : <primal:scoria_stone:7>
	},
	<primal:purpurite_stone:1> : {
		"wall" : <primal:wall:7>,
		"pillar" : <primal:purpurite_stone:7>
	},
	<primal:ferro_stone:1> : {
		"wall" : <primal:wall:8>,
		"stairs" : <primal:stairs_ferro_flag>,
		"pillar" : <primal:ferro_stone:7>
	},
	<primal:carbonate_stone:1> : {
		"wall" : <primal:wall:9>,
		"stairs" : <primal:stairs_carbonate_flag>,
		"pillar" : <primal:carbonate_stone:7>
	},
	<primal:ciniscotta_block:1> : {
		"wall" : <primal:wall:15>,
		"pillar" : <primal:ciniscotta_block:7>
	},
	<primal:terracotta_block:1> : {
		"wall" : <primal:wall:14>,
		"pillar" : <primal:terracotta_block:7>
	},
	<primal:mud_dried:1> : {
		"stairs" : <primal:stairs_mud>,
		"pillar" : <primal:mud_dried:7>
	},
	<primal:nether_earth:1> : {
		"pillar" : <primal:nether_earth:7>
	},
	<primal:desiccated_stone:1> : {
		"pillar" : <primal:desiccated_stone:7>
	},
	<primal:nether_stone:1> : {
		"wall" : <primal:wall:10>,
		"pillar" : <primal:nether_stone:7>
	},
	<primal:eroded_end_stone:1> : {
		"wall" : <primal:wall:11>,
		"pillar" : <primal:eroded_end_stone:7>
	},
	<primal:soul_stone:1> : {
		"wall" : <primal:wall:12>,
		"pillar" : <primal:soul_stone:7>
	},
	<primal:night_stone:1> : {
		"pillar" : <primal:night_stone:7>
	},
	<quark:sandstone_new> : {
		"slab" : <quark:sandstone_smooth_slab>
	},
	<quark:sandstone_new:1> : {
		"slab" : <quark:sandstone_bricks_slab>,
		"stairs" : <quark:sandstone_bricks_stairs>
	},
	<quark:sandstone_new:2> : {
		"slab" : <quark:red_sandstone_smooth_slab>
	},
	<quark:sandstone_new:3> : {
		"slab" : <quark:red_sandstone_bricks_slab>,
		"stairs" : <quark:red_sandstone_bricks_stairs>
	},
	<quark:soul_sandstone> : {
		"slab" : <quark:soul_sandstone_slab>,
		"stairs" : <quark:soul_sandstone_stairs>,
		"wall" : <quark:soul_sandstone_wall>,
		"chiseled" : <quark:soul_sandstone:1>,
		"smooth" : <quark:soul_sandstone:2>
	},
	<quark:sandstone_new:4> : {
		"slab" : <quark:soul_sandstone_smooth_slab>
	},
	<quark:sandstone_new:5> : {
		"slab" : <quark:soul_sandstone_bricks_slab>,
		"stairs" : <quark:soul_sandstone_bricks_stairs>
	},
	<quark:hardened_clay_tiles> : {
		"slab" : <quark:hardened_clay_tiles_slab>,
		"stairs" : <quark:hardened_clay_tiles_stairs>
	},
	<quark:stained_clay_tiles> : {
		"slab" : <quark:stained_clay_tiles_white_slab>,
		"stairs" : <quark:stained_clay_tiles_white_stairs>
	},
	<quark:stained_clay_tiles:1> : {
		"slab" : <quark:stained_clay_tiles_orange_slab>,
		"stairs" : <quark:stained_clay_tiles_orange_stairs>
	},
	<quark:stained_clay_tiles:2> : {
		"slab" : <quark:stained_clay_tiles_magenta_slab>,
		"stairs" : <quark:stained_clay_tiles_magenta_stairs>
	},
	<quark:stained_clay_tiles:3> : {
		"slab" : <quark:stained_clay_tiles_light_blue_slab>,
		"stairs" : <quark:stained_clay_tiles_blue_stairs>
	},
	<quark:stained_clay_tiles:4> : {
		"slab" : <quark:stained_clay_tiles_yellow_slab>,
		"stairs" : <quark:stained_clay_tiles_yellow_stairs>
	},
	<quark:stained_clay_tiles:5> : {
		"slab" : <quark:stained_clay_tiles_lime_slab>,
		"stairs" : <quark:stained_clay_tiles_lime_stairs>
	},
	<quark:stained_clay_tiles:6> : {
		"slab" : <quark:stained_clay_tiles_pink_slab>,
		"stairs" : <quark:stained_clay_tiles_pink_stairs>
	},
	<quark:stained_clay_tiles:7> : {
		"slab" : <quark:stained_clay_tiles_gray_slab>,
		"stairs" : <quark:stained_clay_tiles_gray_stairs>
	},
	<quark:stained_clay_tiles:8> : {
		"slab" : <quark:stained_clay_tiles_silver_slab>,
		"stairs" : <quark:stained_clay_tiles_silver_stairs>
	},
	<quark:stained_clay_tiles:9> : {
		"slab" : <quark:stained_clay_tiles_cyan_slab>,
		"stairs" : <quark:stained_clay_tiles_cyan_stairs>
	},
	<quark:stained_clay_tiles:10> : {
		"slab" : <quark:stained_clay_tiles_purple_slab>,
		"stairs" : <quark:stained_clay_tiles_purple_stairs>
	},
	<quark:stained_clay_tiles:11> : {
		"slab" : <quark:stained_clay_tiles_blue_slab>,
		"stairs" : <quark:stained_clay_tiles_blue_stairs>
	},
	<quark:stained_clay_tiles:12> : {
		"slab" : <quark:stained_clay_tiles_brown_slab>,
		"stairs" : <quark:stained_clay_tiles_brown_stairs>
	},
	<quark:stained_clay_tiles:13> : {
		"slab" : <quark:stained_clay_tiles_green_slab>,
		"stairs" : <quark:stained_clay_tiles_green_stairs>
	},
	<quark:stained_clay_tiles:14> : {
		"slab" : <quark:stained_clay_tiles_red_slab>,
		"stairs" : <quark:stained_clay_tiles_red_stairs>
	},
	<quark:stained_clay_tiles:15> : {
		"slab" : <quark:stained_clay_tiles_black_slab>,
		"stairs" : <quark:stained_clay_tiles_black_stairs>
	},
	<quark:sandy_bricks> : {
		"slab" : <quark:sandy_bricks_slab>,
		"stairs" : <quark:sandy_bricks_stairs>,
		"wall" : <quark:sandy_bricks_wall>
	},
	<quark:charred_nether_bricks> : {
		"slab" : <quark:charred_nether_brick_slab>,
		"stairs" : <quark:charred_nether_brick_stairs>
	},
	<quark:polished_netherrack:1> : {
		"slab" : <quark:polished_netherrack_bricks_slab>,
		"stairs" : <quark:polished_netherrack_bricks_stairs>,
		"wall" : <quark:polished_netherrack_bricks_wall>
	},
	<quark:world_stone_bricks> : {
		"slab" : <quark:stone_granite_bricks_slab>,
		"stairs" : <quark:stone_granite_bricks_stairs>,
		"wall" : <quark:stone_granite_bricks_wall>
	},
	<quark:world_stone_bricks:1> : {
		"slab" : <quark:stone_diorite_bricks_slab>,
		"stairs" : <quark:stone_diorite_bricks_stairs>,
		"wall" : <quark:stone_diorite_bricks_wall>
	},
	<quark:world_stone_bricks:2> : {
		"slab" : <quark:stone_andesite_bricks_slab>,
		"stairs" : <quark:stone_andesite_bricks_stairs>,
		"wall" : <quark:stone_andesite_bricks_wall>
	},
	<quark:basalt> : {
		"slab" : <quark:stone_basalt_slab>,
		"stairs" : <quark:stone_basalt_stairs>,
		"wall" : <quark:basalt_wall>,
		"smooth" : <quark:basalt:1>
	},
	<quark:world_stone_bricks:3> : {
		"slab" : <quark:stone_basalt_bricks_slab>,
		"stairs" : <quark:stone_basalt_bricks_stairs>,
		"wall" : <quark:stone_basalt_bricks_wall>
	},
	<quark:midori_block> : {
		"slab" : <quark:midori_block_slab>,
		"stairs" : <quark:midori_block_stairs>,
		"wall" : <quark:midori_block_wall>,
		"pillar" : <quark:midori_pillar>
	},
	<quark:magma_bricks> : {
		"slab" : <quark:magma_bricks_slab>,
		"stairs" : <quark:magma_bricks_stairs>
	},
	<quark:duskbound_block> : {
		"slab" : <quark:duskbound_block_slab>,
		"stairs" : <quark:duskbound_block_stairs>,
		"wall" : <quark:duskbound_block_wall>
	},
	<quark:biome_cobblestone> : {
		"slab" : <quark:fire_stone_slab>,
		"stairs" : <quark:fire_stone_stairs>,
		"wall" : <quark:fire_stone_wall>
	},
	<quark:biome_cobblestone:1> : {
		"slab" : <quark:icy_stone_slab>,
		"stairs" : <quark:icy_stone_stairs>,
		"wall" : <quark:icy_stone_wall>
	},
	<quark:biotite_block> : {
		"slab" : <quark:biotite_slab>,
		"stairs" : <quark:biotite_stairs>,
		"wall" : <quark:biotite_wall>,
		"pillar" : <quark:biotite_block:2>,
		"chiseled" : <quark:biotite_block:1>
	},
	<tconstruct:seared> : {
		"slab" : <tconstruct:seared_slab>,
		"stairs" : <tconstruct:seared_stairs_stone>,
		"chiseled" : <tconstruct:seared:6>,
		"smooth" : <tconstruct:seared:2>
	},
	<tconstruct:seared:1> : {
		"slab" : <tconstruct:seared_slab:1>,
		"stairs" : <tconstruct:seared_stairs_cobble>
	},
	<tconstruct:seared:2> : {
		"slab" : <tconstruct:seared_slab:2>,
		"stairs" : <tconstruct:seared_stairs_paver>
	},
	<tconstruct:seared:3> : {
		"slab" : <tconstruct:seared_slab:3>,
		"stairs" : <tconstruct:seared_stairs_brick>
	},
	<tconstruct:seared:4> : {
		"slab" : <tconstruct:seared_slab:4>,
		"stairs" : <tconstruct:seared_stairs_brick_cracked>
	},
	<tconstruct:seared:5> : {
		"slab" : <tconstruct:seared_slab:5>,
		"stairs" : <tconstruct:seared_stairs_brick_fancy>
	},
	<tconstruct:seared:6> : {
		"slab" : <tconstruct:seared_slab:6>,
		"stairs" : <tconstruct:seared_stairs_brick_square>
	},
	<tconstruct:seared:7> : {
		"slab" : <tconstruct:seared_slab:7>,
		"stairs" : <tconstruct:seared_stairs_road>
	},
	<tconstruct:seared:8> : {
		"slab" : <tconstruct:seared_slab2>,
		"stairs" : <tconstruct:seared_stairs_creeper>
	},
	<tconstruct:seared:9> : {
		"slab" : <tconstruct:seared_slab2:1>,
		"stairs" : <tconstruct:seared_stairs_brick_triangle>
	},
	<tconstruct:seared:11> : {
		"slab" : <tconstruct:seared_slab2:3>,
		"stairs" : <tconstruct:seared_stairs_tile>
	},
	<tconstruct:dried_clay> : {
		"slab" : <tconstruct:dried_clay_slab>,
		"stairs" : <tconstruct:dried_clay_stairs>
	},
	<tconstruct:brownstone:1> : {
		"slab" : <tconstruct:brownstone_slab:1>,
		"stairs" : <tconstruct:brownstone_stairs_rough>
	},
	<tconstruct:brownstone> : {
		"slab" : <tconstruct:brownstone_slab>,
		"stairs" : <tconstruct:brownstone_stairs_smooth>,
		"chiseled" : <tconstruct:brownstone:6>,
		"smooth" : <tconstruct:brownstone:2>
	},
	<tconstruct:brownstone:2> : {
		"slab" : <tconstruct:brownstone_slab:2>,
		"stairs" : <tconstruct:brownstone_stairs_paver>
	},
	<tconstruct:brownstone:3> : {
		"slab" : <tconstruct:brownstone_slab:3>,
		"stairs" : <tconstruct:brownstone_stairs_brick>
	},
	<tconstruct:brownstone:4> : {
		"slab" : <tconstruct:brownstone_slab:4>,
		"stairs" : <tconstruct:brownstone_stairs_brick_cracked>
	},
	<tconstruct:brownstone:5> : {
		"slab" : <tconstruct:brownstone_slab:5>,
		"stairs" : <tconstruct:brownstone_stairs_brick_fancy>
	},
	<tconstruct:brownstone:6> : {
		"slab" : <tconstruct:brownstone_slab:6>,
		"stairs" : <tconstruct:brownstone_stairs_brick_square>
	},
	<tconstruct:brownstone:7> : {
		"slab" : <tconstruct:brownstone_slab:7>,
		"stairs" : <tconstruct:brownstone_stairs_road>
	},
	<tconstruct:brownstone:8> : {
		"slab" : <tconstruct:brownstone_slab2>,
		"stairs" : <tconstruct:brownstone_stairs_creeper>
	},
	<tconstruct:brownstone:9> : {
		"slab" : <tconstruct:brownstone_slab2:1>,
		"stairs" : <tconstruct:brownstone_stairs_brick_triangle>
	},
	<tconstruct:brownstone:10> : {
		"slab" : <tconstruct:brownstone_slab2:2>,
		"stairs" : <tconstruct:brownstone_stairs_brick_small>
	},
	<tconstruct:brownstone:11> : {
		"slab" : <tconstruct:brownstone_slab2:3>,
		"stairs" : <tconstruct:brownstone_stairs_tile>
	},
	<tconstruct:firewood> : {
		"slab" : <tconstruct:firewood_slab>,
		"stairs" : <tconstruct:lavawood_stairs>
	},
	<tconstruct:firewood:1> : {
		"slab" : <tconstruct:firewood_slab:1>,
		"stairs" : <tconstruct:firewood_stairs>
	},
	<thaumcraft:stone_arcane> : {
		"slab" : <thaumcraft:slab_arcane_stone>,
		"stairs" : <thaumcraft:stairs_arcane>
	},
	<thaumcraft:stone_arcane_brick> : {
		"slab" : <thaumcraft:slab_arcane_brick>,
		"stairs" : <thaumcraft:stairs_arcane_brick>
	},
	<thaumcraft:stone_ancient> : {
		"slab" : <thaumcraft:slab_ancient>,
		"stairs" : <thaumcraft:stairs_ancient>
	},
	<thaumcraft:stone_eldritch_tile> : {
		"slab" : <thaumcraft:slab_eldritch>
	},
	<rustic:slate> : {
		"pillar" : <rustic:slate_pillar>,
		"chiseled" : <rustic:slate_chiseled>,
		"smooth" : <rustic:slate_tile>
	},
	<rustic:slate_roof> : {
		"slab" : <rustic:slate_roof_slab_item>,
		"stairs" : <rustic:stairs_slate_roof>
	},
	<rustic:slate_brick> : {
		"slab" : <rustic:slate_brick_slab_item>,
		"stairs" : <rustic:stairs_slate_brick>
	},
	<appliedenergistics2:quartz_block> : {
		"slab" : <appliedenergistics2:quartz_slab>,
		"stairs" : <appliedenergistics2:quartz_stairs>,
		"pillar" : <appliedenergistics2:quartz_pillar>,
		"chiseled" : <appliedenergistics2:chiseled_quartz_block>
	},
	<appliedenergistics2:quartz_pillar> : {
		"slab" : <appliedenergistics2:quartz_pillar_slab>,
		"stairs" : <appliedenergistics2:quartz_pillar_stairs>
	},
	<appliedenergistics2:chiseled_quartz_block> : {
		"slab" : <appliedenergistics2:chiseled_quartz_slab>,
		"stairs" : <appliedenergistics2:chiseled_quartz_stairs>
	},
	<appliedenergistics2:fluix_block> : {
		"slab" : <appliedenergistics2:fluix_slab>,
		"stairs" : <appliedenergistics2:fluix_stairs>
	},
	<appliedenergistics2:sky_stone_block> : {
		"slab" : <appliedenergistics2:sky_stone_slab>,
		"stairs" : <appliedenergistics2:sky_stone_stairs>,
		"smooth" : <appliedenergistics2:smooth_sky_stone_block>
	},
	<appliedenergistics2:smooth_sky_stone_block> : {
		"slab" : <appliedenergistics2:smooth_sky_stone_slab>,
		"stairs" : <appliedenergistics2:smooth_sky_stone_stairs>
	},
	<appliedenergistics2:sky_stone_brick> : {
		"slab" : <appliedenergistics2:sky_stone_brick_slab>,
		"stairs" : <appliedenergistics2:sky_stone_brick_stairs>
	},
	<appliedenergistics2:sky_stone_small_brick> : {
		"slab" : <appliedenergistics2:sky_stone_small_brick_slab>,
		"stairs" : <appliedenergistics2:sky_stone_small_brick_stairs>
	},
	<immersiveengineering:stone_decoration> : {
		"slab" : <immersiveengineering:stone_decoration_slab>
	},
	<immersiveengineering:stone_decoration:1> : {
		"slab" : <immersiveengineering:stone_decoration_slab:1>
	},
	<immersiveengineering:stone_decoration:2> : {
		"slab" : <immersiveengineering:stone_decoration_slab:2>
	},
	<immersiveengineering:stone_decoration:4> : {
		"slab" : <immersiveengineering:stone_decoration_slab:4>,
		"stairs" : <immersiveengineering:stone_decoration_stairs_hempcrete>
	},
	<immersiveengineering:stone_decoration:5> : {
		"slab" : <immersiveengineering:stone_decoration_slab:5>,
		"stairs" : <immersiveengineering:stone_decoration_stairs_concrete>,
		"smooth" : <immersiveengineering:stone_decoration:6>
	},
	<immersiveengineering:stone_decoration:6> : {
		"slab" : <immersiveengineering:stone_decoration_slab:6>,
		"stairs" : <immersiveengineering:stone_decoration_stairs_concrete_tile>
	},
	<immersiveengineering:stone_decoration:7> : {
		"slab" : <immersiveengineering:stone_decoration_slab:7>,
		"stairs" : <immersiveengineering:stone_decoration_stairs_concrete_leaded>
	},
	<immersiveengineering:stone_decoration:10> : {
		"slab" : <immersiveengineering:stone_decoration_slab:10>
	},
	<projectred-exploration:stone> : {
		"wall" : <projectred-exploration:stone_wall>
	},
	<projectred-exploration:stone:1> : {
		"wall" : <projectred-exploration:stone_wall:1>
	},
	<projectred-exploration:stone:2> : {
		"wall" : <projectred-exploration:stone_wall:2>
	},
	<projectred-exploration:stone:3> : {
		"wall" : <projectred-exploration:stone_wall:3>
	},
	<projectred-exploration:stone:4> : {
		"wall" : <projectred-exploration:stone_wall:4>
	},
	<bloodmagic:demon_extras> : {
		"smooth" : <bloodmagic:demon_extras:5>,
		"pillar" : <bloodmagic:demon_pillar_1>,
	},
	<bloodmagic:demon_extras:5> : {
		"stairs" : <bloodmagic:demon_stairs_1>,
		"wall" : <bloodmagic:demon_wall_1:10>
	},
	<bloodmagic:demon_brick_1> : {
		"wall" : <bloodmagic:demon_wall_1>
	},
	<bloodmagic:demon_brick_2> : {
		"wall" : <bloodmagic:demon_wall_1:5>
	},
	<bloodmagic:demon_extras:1> : {
		"smooth" : <bloodmagic:demon_extras:6>,
		"pillar" : <bloodmagic:demon_pillar_1:1>,
	},
	<bloodmagic:demon_extras:6> : {
		"stairs" : <bloodmagic:demon_stairs_1:1>,
		"wall" : <bloodmagic:demon_wall_1:11>
	},
	<bloodmagic:demon_brick_1:1> : {
		"wall" : <bloodmagic:demon_wall_1:1>
	},
	<bloodmagic:demon_brick_2:1> : {
		"wall" : <bloodmagic:demon_wall_1:6>
	},
	<bloodmagic:demon_extras:2> : {
		"smooth" : <bloodmagic:demon_extras:7>,
		"pillar" : <bloodmagic:demon_pillar_1:2>,
	},
	<bloodmagic:demon_extras:7> : {
		"stairs" : <bloodmagic:demon_stairs_2>,
		"wall" : <bloodmagic:demon_wall_1:12>
	},
	<bloodmagic:demon_brick_1:2> : {
		"wall" : <bloodmagic:demon_wall_1:2>
	},
	<bloodmagic:demon_brick_2:2> : {
		"wall" : <bloodmagic:demon_wall_1:7>
	},
	<bloodmagic:demon_extras:3> : {
		"smooth" : <bloodmagic:demon_extras:8>,
		"pillar" : <bloodmagic:demon_pillar_1:3>,
	},
	<bloodmagic:demon_extras:8> : {
		"stairs" : <bloodmagic:demon_stairs_2:1>,
		"wall" : <bloodmagic:demon_wall_1:13>
	},
	<bloodmagic:demon_brick_1:3> : {
		"wall" : <bloodmagic:demon_wall_1:3>
	},
	<bloodmagic:demon_brick_2:3> : {
		"wall" : <bloodmagic:demon_wall_1:8>
	},
	<bloodmagic:demon_extras:4> : {
		"smooth" : <bloodmagic:demon_extras:9>,
		"pillar" : <bloodmagic:demon_pillar_1:4>,
	},
	<bloodmagic:demon_extras:9> : {
		"stairs" : <bloodmagic:demon_stairs_3>,
		"wall" : <bloodmagic:demon_wall_1:14>
	},
	<bloodmagic:demon_brick_1:4> : {
		"wall" : <bloodmagic:demon_wall_1:4>
	},
	<bloodmagic:demon_brick_2:4> : {
		"wall" : <bloodmagic:demon_wall_1:9>
	},
	<twilightforest:maze_stone> : {
		"smooth" : <twilightforest:maze_stone:2>,
		"chiseled" : <twilightforest:maze_stone:3>
	}
};

global stoneToBricks as IItemStack[IIngredient] = {
	<minecraft:stone> : <minecraft:stonebrick>,
	<minecraft:stone:2> : <quark:world_stone_bricks>,
	<minecraft:stone:4> : <quark:world_stone_bricks:1>,
	<minecraft:stone:6> : <quark:world_stone_bricks:2>,
	<minecraft:end_stone> : <minecraft:end_bricks>,
	<ore:stoneMarble> : <astralsorcery:blockmarble:1>,
	<thebetweenlands:betweenstone> : <thebetweenlands:betweenstone_bricks>,
	<thebetweenlands:cragrock> : <thebetweenlands:cragrock_bricks>,
	<thebetweenlands:pitstone> : <thebetweenlands:pitstone_bricks>,
	<thebetweenlands:limestone> : <thebetweenlands:limestone_bricks>,
	<thebetweenlands:polished_limestone> : <thebetweenlands:limestone_tiles>,
	<thebetweenlands:smooth_betweenstone> : <thebetweenlands:betweenstone_tiles>,
	<thebetweenlands:smooth_pitstone> : <thebetweenlands:pitstone_tiles>,
	<botania:livingrock> : <botania:livingrock:1>,
	<botania:biomestonea> : <botania:biomestoneb>,
	<botania:biomestonea:1> : <botania:biomestoneb:1>,
	<botania:biomestonea:2> : <botania:biomestoneb:2>,
	<botania:biomestonea:3> : <botania:biomestoneb:3>,
	<botania:biomestonea:4> : <botania:biomestoneb:4>,
	<botania:biomestonea:5> : <botania:biomestoneb:5>,
	<botania:biomestonea:6> : <botania:biomestoneb:6>,
	<botania:biomestonea:7> : <botania:biomestoneb:7>,
	<quark:sandstone_new> : <quark:sandstone_new:1>,
	<quark:sandstone_new:2> : <quark:sandstone_new:3>,
	<quark:sandstone_new:4> : <quark:sandstone_new:5>,
	<minecraft:hardened_clay> : <quark:hardened_clay_tiles>,
	<minecraft:stained_hardened_clay> : <quark:stained_clay_tiles>,
	<minecraft:stained_hardened_clay:1> : <quark:stained_clay_tiles:1>,
	<minecraft:stained_hardened_clay:2> : <quark:stained_clay_tiles:2>,
	<minecraft:stained_hardened_clay:3> : <quark:stained_clay_tiles:3>,
	<minecraft:stained_hardened_clay:4> : <quark:stained_clay_tiles:4>,
	<minecraft:stained_hardened_clay:5> : <quark:stained_clay_tiles:5>,
	<minecraft:stained_hardened_clay:6> : <quark:stained_clay_tiles:6>,
	<minecraft:stained_hardened_clay:7> : <quark:stained_clay_tiles:7>,
	<minecraft:stained_hardened_clay:8> : <quark:stained_clay_tiles:8>,
	<minecraft:stained_hardened_clay:9> : <quark:stained_clay_tiles:9>,
	<minecraft:stained_hardened_clay:10> : <quark:stained_clay_tiles:10>,
	<minecraft:stained_hardened_clay:11> : <quark:stained_clay_tiles:11>,
	<minecraft:stained_hardened_clay:12> : <quark:stained_clay_tiles:12>,
	<minecraft:stained_hardened_clay:13> : <quark:stained_clay_tiles:13>,
	<minecraft:stained_hardened_clay:14> : <quark:stained_clay_tiles:14>,
	<minecraft:stained_hardened_clay:15> : <quark:stained_clay_tiles:15>,
	<quark:polished_netherrack> : <quark:polished_netherrack:1>,
	<quark:basalt:1> : <quark:world_stone_bricks:3>,
	<tconstruct:seared:2> : <tconstruct:seared:3>,
	<tconstruct:brownstone:2> : <tconstruct:brownstone:3>,
	<thaumcraft:stone_arcane> : <thaumcraft:stone_arcane_brick>,
	<rustic:slate> : <rustic:slate_roof>,
	<rustic:slate_tile> : <rustic:slate_brick>,
	<appliedenergistics2:smooth_sky_stone_block> : <appliedenergistics2:sky_stone_brick>,
	<appliedenergistics2:sky_stone_brick> : <appliedenergistics2:sky_stone_small_brick>,
	<magneticraft:limestone> : <magneticraft:limestone:1>,
	<magneticraft:burnt_limestone> : <magneticraft:burnt_limestone:1>,
	<projectred-exploration:stone> : <projectred-exploration:stone:1>,
	<projectred-exploration:stone:3> : <projectred-exploration:stone:4>,
	<bloodmagic:demon_extras:5> : <bloodmagic:demon_brick_1>,
	<bloodmagic:demon_brick_1> : <bloodmagic:demon_brick_2>,
	<bloodmagic:demon_extras:6> : <bloodmagic:demon_brick_1:1>,
	<bloodmagic:demon_brick_1:1> : <bloodmagic:demon_brick_2:1>,
	<bloodmagic:demon_extras:7> : <bloodmagic:demon_brick_1:2>,
	<bloodmagic:demon_brick_1:2> : <bloodmagic:demon_brick_2:2>,
	<bloodmagic:demon_extras:8> : <bloodmagic:demon_brick_1:3>,
	<bloodmagic:demon_brick_1:3> : <bloodmagic:demon_brick_2:3>,
	<bloodmagic:decorative_brick> : <bloodmagic:decorative_brick:1>,
	<bloodmagic:decorative_brick:2> : <bloodmagic:decorative_brick:3>,
	<bloodmagic:path:3> : <bloodmagic:path:2>,
	<bloodmagic:path:5> : <bloodmagic:path:4>,
	<bloodmagic:path:7> : <bloodmagic:path:6>,
	<twilightforest:maze_stone> : <twilightforest:maze_stone:1>
};

global bricksToBlock as IItemStack[string][IItemStack] = {
	<primal:rock_stone> : {
		"block" : <minecraft:cobblestone>,
		"stairs" : <minecraft:stone_stairs>,
		"slab" : <minecraft:stone_slab:3>,
		"wall" : <minecraft:cobblestone_wall>
	},
	<minecraft:brick> : {
		"block" : <minecraft:brick_block>,
		"stairs" : <minecraft:brick_stairs>,
		"slab" : <minecraft:stone_slab:4>,
		"wall" : <quark:brick_wall>
	},
	<minecraft:netherbrick> : {
		"block" : <minecraft:nether_brick>,
		"stairs" : <minecraft:nether_brick_stairs>,
		"slab" : <minecraft:stone_slab:6>
	},
	<minecraft:chorus_fruit_popped> : {
		"block" : <minecraft:purpur_block>,
		"stairs" : <minecraft:purpur_stairs>,
		"slab" : <minecraft:purpur_slab>,
		"wall" : <quark:purpur_block_wall>
	},
	<tconstruct:materials> : {
		"block" : <tconstruct:seared:10>,
		"stairs" : <tconstruct:seared_stairs_brick_small>,
		"slab" : <tconstruct:seared_slab2:2>
	},
	<tconstruct:materials:1> : {
		"block" : <tconstruct:deco_ground>,
		"stairs" : <tconstruct:mudbrick_stairs>,
		"slab" : <tconstruct:deco_ground_slab>
	},
	<tconstruct:materials:2> : {
		"block" : <tconstruct:dried_clay:1>,
		"stairs" : <tconstruct:dried_brick_stairs>,
		"slab" : <tconstruct:dried_clay_slab:1>
	},
	<thebetweenlands:items_misc:10> : {
		"block" : <thebetweenlands:mud_bricks>,
		"stairs" : <thebetweenlands:mud_brick_stairs>,
		"slab" : <thebetweenlands:mud_brick_slab>,
		"wall" : <thebetweenlands:mud_brick_wall>
	},
	<notenoughroofs:slate_brick> : {
		"block" : <notenoughroofs:slate_tile>
	}
};