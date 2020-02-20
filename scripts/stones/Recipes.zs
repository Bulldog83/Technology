
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.globals.Utility.strToName;

val basicBuilder = builderBasic.builder();
val masonBuilder = builderMason.builder();

for rock, blocks in blockToRock {
	Disabling.markForRemove(rock);
	
	for qtt, input in blocks {
		masonBuilder
			.setShapeless([input])
			.addOutput(rock * qtt, 15)
			.addOutput(rock * (qtt - 1), 85)
			.setExtraOutputOne(item_gravel, 0.1)
			.addTool(art_tools.hammer, (qtt / 2) as int)
			.create();
	}
}

val rocksToBlock as IItemStack[IItemStack] = {
	<primal:rock_stone> : <minecraft:cobblestone>,
	<primal:rock_granite> : <betterwithmods:cobblestone>,
	<primal:rock_diorite> : <betterwithmods:cobblestone:1>,
	<primal:rock_andesite> : <betterwithmods:cobblestone:2>
};

for rock, block in rocksToBlock {
	recipes.addShapeless(strToName("simple_" ~ block.displayName), block, [rock,rock,rock,rock]);
	recipes.addShaped(strToName(block.displayName ~ "_with_mortar"), block * 2, [
		[rock,ore_mortar,rock],
		[ore_mortar,rock,ore_mortar],
		[rock,ore_mortar,rock]
	]);
}

for brick, blocks in bricksToBlock {
	Disabling.markForRemove(blocks.block);
	masonBuilder
		.setShaped([
			[brick,ore_mortar,brick],
			[ore_mortar,brick,ore_mortar],
			[brick,ore_mortar,brick]
		])
		.addOutput(blocks.block * 2)
		.addTool(art_tools.trowel, 1)
		.create();
	if(!isNull(blocks.stairs)) {
		Disabling.markForRemove(blocks.stairs);
		masonBuilder
			.setShaped([
				[brick,null,null],
				[ore_mortar,brick,null],
				[brick,ore_mortar,brick]
			])
			.addOutput(blocks.stairs * 2)
			.addTool(art_tools.trowel, 1)
			.create();
	}
	if(!isNull(blocks.slab)) {
		Disabling.markForRemove(blocks.slab);
		masonBuilder
			.setShaped([
				[blocks.slab],
				[ore_mortar],
				[blocks.slab]
			])
			.addOutput(blocks.block)
			.addTool(art_tools.trowel, 1)
			.create();
		masonBuilder
			.setShaped([
				[brick,ore_mortar,brick],
				[ore_mortar,brick,ore_mortar]
			])
			.addOutput(blocks.slab * 2)
			.addTool(art_tools.trowel, 1)
			.create();
		masonBuilder
			.setShaped([[blocks.block,blocks.block,blocks.block]])
			.addOutput(blocks.slab * 6)
			.addTool(art_tools.handsaw, 9)
			.create();
	}
	if(!isNull(blocks.wall)) {
		Disabling.markForRemove(blocks.wall);
		masonBuilder
			.setShaped([
				[brick,null,brick],
				[ore_mortar,brick,ore_mortar],
				[brick,ore_mortar,brick]
			])
			.addOutput(blocks.wall * 2)
			.addTool(art_tools.trowel, 1)
			.create();
	}
}

for stone, bricks in stoneToBricks {
	Disabling.markForRemove(bricks);
	masonBuilder
		.setShaped([
			[stone,ore_mortar,stone],
			[ore_mortar,stone,ore_mortar],
			[stone,ore_mortar,stone]
		])
		.addOutput(bricks * 6)
		.addTool(art_tools.trowel, 3)
		.create();
}

Disabling.markForRemove(<minecraft:red_nether_brick>);
masonBuilder
	.setShaped([
		[<minecraft:netherbrick>,<minecraft:nether_wart>,<minecraft:netherbrick>],
		[<minecraft:nether_wart>,ore_mortar,<minecraft:nether_wart>],
		[<minecraft:netherbrick>,<minecraft:nether_wart>,<minecraft:netherbrick>]
	])
	.addOutput(<minecraft:red_nether_brick> * 2)
	.addTool(art_tools.trowel, 1)
	.create();

for stone, blocks in stoneItems {
	val ii_slab = isNull(blocks.slab) ? <ore:slabStone> | <ore:slabCobblestone> : blocks.slab;
	val smooth_stone = isNull(blocks.smooth) ? stone : blocks.smooth;
	
	if(!isNull(blocks.slab)) {
		Disabling.markForRemove(blocks.slab);
		masonBuilder
			.setShaped([
				[blocks.slab],
				[ore_mortar],
				[blocks.slab]
			])
			.addOutput(stone)
			.addTool(art_tools.trowel, 1)
			.create();
	
		masonBuilder
			.setShaped([[stone,stone,stone]])
			.addOutput(blocks.slab * 6)
			.addTool(art_tools.handsaw, 9)
			.create();
	}
	if(!isNull(blocks.stairs)) {
		Disabling.markForRemove(blocks.stairs);
		masonBuilder
			.setShaped([
				[stone,null,null],
				[stone,stone,null],
				[stone,stone,stone]
			])
			.addOutput(blocks.stairs * 6)
			.addTool(art_tools.handsaw, 12)
			.setMirrored()
			.create();
	}
	if(!isNull(blocks.wall)) {
		Disabling.markForRemove(blocks.wall);
		masonBuilder
			.setShaped([
				[stone,ii_slab,stone],
				[stone,ii_slab,stone]
			])
			.addOutput(blocks.wall * 6)
			.addTool(art_tools.framing_hammer, 6)
			.create();
	}
	if(!isNull(blocks.pillar)) {
		Disabling.markForRemove(blocks.pillar);
		masonBuilder
			.setShaped([
				[smooth_stone],
				[smooth_stone]
			])
			.addOutput(blocks.pillar * 2)
			.addTool(art_tools.chisel, 4)
			.create();
	}
	if(!isNull(blocks.fence)) {
		Disabling.markForRemove(blocks.fence);
		masonBuilder
			.setShaped([
				[stone,ore_rod_stone,stone],
				[stone,ore_rod_stone,stone]
			])
			.addOutput(blocks.fence * 3)
			.addTool(art_tools.framing_hammer, 3)
			.create();
	}
	if(!isNull(blocks.fence_gate)) {
		Disabling.markForRemove(blocks.fence_gate);
		masonBuilder
			.setShaped([
				[ore_rod_stone,stone,ore_rod_stone],
				[ore_rod_stone,stone,ore_rod_stone]
			])
			.addOutput(blocks.fence_gate)
			.addTool(art_tools.framing_hammer, 3)
			.create();
	}
	if(!isNull(blocks.chiseled)) {
		Disabling.markForRemove(blocks.chiseled);
		masonBuilder
			.setShapeless([smooth_stone])
			.addOutput(blocks.chiseled)
			.addTool(art_tools.carver, 4)
			.create();
	}
	if(!isNull(blocks.smooth)) {
		Disabling.markForRemove(blocks.smooth);
		masonBuilder
			.setShapeless([stone])
			.addOutput(blocks.smooth)
			.addTool(art_tools.chisel, 4)
			.create();
	}
}

basicBuilder
	.setShapeless([<minecraft:stone>])
	.addOutput(<minecraft:stone_slab> * 2)
	.addTool(art_tools.handsaw, 4)
	.create();

val stone1 = <ore:stone>;
val stone2 = <ore:cobblestone> | <ore:stoneGranite> | <ore:stoneDiorite> | <ore:stoneAndesite>;
masonBuilder
	.setShaped([
		[null,stone1,null],
		[stone2,ore_mortar,stone2],
		[null,stone1,null]
	])
	.setMirrored()
	.addOutput(<primal:common_stone> * 5)
	.addTool(art_tools.trowel, 1)
	.create();
masonBuilder
	.setShaped([
		[null,<ore:rockNetherrack>,null],
		[<ore:rockStone>,ore_mortar,<ore:rockStone>],
		[null,<ore:rockNetherrack>,null]
	])
	.setMirrored()
	.addOutput(<primal:scoria_stone> * 2)
	.addTool(art_tools.trowel, 1)
	.create();
masonBuilder
	.setShaped([
		[null,<ore:soulsand>,null],
		[<ore:soulsand>,ore_mortar,<ore:soulsand>],
		[null,<ore:soulsand>,null]
	])
	.addOutput(<primal:soul_stone> * 2)
	.addTool(art_tools.trowel, 1)
	.create();
	
Disabling.removeRecipes();