
#priority 100

val basicBuilder = builderBasic.builder();

Disabling.markForRemove(<minecolonies:sceptergold>);
Disabling.markForRemove(<minecolonies:sceptersteel>);
recipes.addShaped("minecolonies_sceptergold", <minecolonies:sceptergold>, [
	[null,null,<ore:ingotGold>],
	[null,ore_stick,null],
	[ore_stick,null,null]
]);
recipes.addShaped("minecolonies_sceptersteel", <minecolonies:sceptersteel>, [
	[null,null,<ore:ingotSteel>],
	[null,ore_stick,null],
	[ore_stick,null,null]
]);

val cactus_plank = <minecolonies:blockcactusplank>;
val cactus_trapdoor = <minecolonies:blockcactustrapdoor>;
val cactus_stair = <minecolonies:blockcactusstair>;
val cactus_slab = <minecolonies:blockcactusslab_half>;
val cactus_door = <minecolonies:cactusdoor>;

Disabling.markForRemove(cactus_plank);
basicBuilder
	.setShapeless([<ore:blockCactus>])
	.addOutput(cactus_plank * 4)
	.addTool(art_tools.handsaw, 2)
	.create();
Disabling.markForRemove(cactus_slab);
basicBuilder
	.setShapeless([cactus_plank])
	.addOutput(cactus_slab * 2)
	.addTool(art_tools.handsaw, 1)
	.create();
Disabling.markForRemove(cactus_stair);
basicBuilder
	.setShaped([
		[cactus_plank,null,null],
		[cactus_plank,cactus_plank,null],
		[cactus_plank,cactus_plank,cactus_plank]
	])
	.addOutput(cactus_stair * 8)
	.addTool(art_tools.framing_hammer, 2)
	.setMirrored()
	.create();
Disabling.markForRemove(cactus_door);
basicBuilder
	.setShaped([
		[cactus_plank,cactus_plank],
		[cactus_plank,cactus_plank],
		[cactus_plank,cactus_plank]
	])
	.addOutput(cactus_door * 3)
	.addTool(art_tools.framing_hammer, 2)
	.create();
Disabling.markForRemove(cactus_trapdoor);
basicBuilder
	.setShaped([
		[cactus_plank,cactus_plank,cactus_plank],
		[cactus_plank,cactus_plank,cactus_plank]
	])
	.addOutput(cactus_trapdoor * 2)
	.addTool(art_tools.framing_hammer, 2)
	.create();
	
Disabling.removeRecipes();