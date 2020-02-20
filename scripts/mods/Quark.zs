
#priority 100

import mods.artisanworktables.builder.Copy;

builderBasic.convertRecipe(<quark:reed_block_slab>, art_tools.handsaw, 4);
builderBasic.convertRecipe(<quark:reed_block_stairs>, art_tools.handsaw, 6);

Disabling.markForRemove(<quark:reed_block_wall>);
builderBasic.builder()
	.setShaped([
		[<quark:reed_block>,<quark:reed_block_slab>,<quark:reed_block>],
		[<quark:reed_block>,<quark:reed_block_slab>,<quark:reed_block>]
	])
	.addOutput(<quark:reed_block_wall>)
	.addTool(art_tools.framing_hammer, 3)
	.create();

builderTanner.convertRecipe("quark:quilted_wool", art_tools.needle, 3);
for i in 1 to 16 {
	builderTanner.convertRecipe("quark:quilted_wool_" ~ i, art_tools.needle, 3);
}

builderCarpenter.convertRecipe("quark:paper_wall", art_tools.framing_hammer, 4);
builderCarpenter.convertRecipe("quark:chute", art_tools.framing_hammer, 3);
builderBasic.convertRecipe("quark:obsidian_pressure_plate", art_tools.handsaw, 16);
builderBlacksmith.convertRecipe("quark:iron_rod", art_tools.hammer, 1);
builderMage.convertRecipe("quark:blaze_lantern", art_tools.grimoire, 5);
builderEngineer.convertRecipe("quark:rain_detector", art_tools.driver, 4);

builderBlacksmith.builder()
	.setCopy(Copy.byName("quark:iron_ladder")
				 .replaceInput(<minecraft:iron_ingot>, <ore:stickIron>))
	.addTool(art_tools.hammer, 8)
	.create();
Disabling.markForRemove("quark:iron_ladder");