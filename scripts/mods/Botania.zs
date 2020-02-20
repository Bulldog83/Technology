
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val mageBuilder = builderMage.builder();
val blacksmithBuilder = builderBlacksmith.builder();

val sapling = <ore:treeSapling>;
val flower = <botania:flower:*> |
			 <minecraft:yellow_flower:*> |
			 <minecraft:red_flower:*> |
			 <biomesoplenty:flower_0:*> |
			 <biomesoplenty:flower_1:*> |
			 <ferdinandsflowers:block_cff_flowers:*> |
			 <ferdinandsflowers:block_cff_flowersb:*> |
			 <ferdinandsflowers:block_cff_flowersc:*> |
			 <ferdinandsflowers:block_cff_flowersd:*> |
			 <terraqueous:flowers_single:*>;
Disabling.markForRemove(<botania:lexicon>);
mageBuilder
	.setShaped([
		[null,sapling,null],
		[flower,item_book,flower],
		[null,sapling,null]
	])
	.addOutput(<botania:lexicon>.withTag({}))
	.addTool(art_tools.athame, 15)
	.create();
	
val terra_nuget = <botania:manaresource:18>;
val terra_ingot = <botania:manaresource:4>;
val ringUpgrade as IItemStack[IItemStack] = {
	<botania:magnetring> : <botania:magnetringgreater>,
	<botania:auraring> : <botania:auraringgreater>,
	<botania:manaring> : <botania:manaringgreater>
};

for ring, upgrade in ringUpgrade {
	Disabling.markForRemove(upgrade);
	mageBuilder
		.setShaped([
			[ring,terra_nuget,null],
			[terra_nuget,terra_ingot,terra_nuget],
			[null,terra_nuget,null]
		])
		.addOutput(upgrade)
		.addTool(art_tools.grimoire, 45)
		.addTool(art_tools.gemcutter, 24)
		.setMinimumTier(1)
		.create();
}

val clothArmor as int[string] = {
	"botania:manaweavehelm" : 36,
	"botania:manaweavechest" : 48,
	"botania:manaweavelegs" : 42,
	"botania:manaweaveboots" : 34
};

for recipe, dmg in clothArmor {
	builderTanner.convertRecipe(recipe, art_tools.needle, dmg);
}

mageBuilder
	.setCopy(Copy.byName("botania:travelbelt")
				 .replaceInput(<minecraft:leather>, <ore:leather>))
	.addTool(art_tools.grimoire, 35)
	.addTool(art_tools.needle, 20)
	.setMinimumTier(1)
	.create();
mageBuilder
	.setCopy(Copy.byName("botania:knockbackbelt")
				 .replaceInput(<minecraft:leather>, <ore:leather>))
	.addTool(art_tools.grimoire, 35)
	.addTool(art_tools.needle, 20)
	.setMinimumTier(1)
	.create();
mageBuilder
	.setCopy(Copy.byName("botania:forestdrum_0")
				 .replaceInput(<minecraft:leather>, <ore:leather>))
	.addTool(art_tools.grimoire, 32)
	.create();
mageBuilder
	.setCopy(Copy.byName("botania:forestdrum_1")
				 .replaceInput(<minecraft:leather>, <ore:leather>))
	.addTool(art_tools.grimoire, 50)
	.create();
mageBuilder
	.setCopy(Copy.byName("botania:forestdrum_2")
				 .replaceInput(<minecraft:leather>, <ore:leather>))
	.addTool(art_tools.grimoire, 36)
	.create();
	
mageBuilder
	.setCopy(Copy.byName("botania:rfgenerator")
				 .replaceInput(<ore:blockRedstone>, <thermalfoundation:material:515>))
	.addTool(art_tools.grimoire, 25)
	.addTool(art_tools.driver, 30)
	.setMinimumTier(1)
	.create();

val blacksmithRecipes as int[IItemStack] = {
	<botania:terrasteelhelm> : 50,
	<botania:terrasteelchest> : 82,
	<botania:terrasteellegs> : 75,
	<botania:terrasteelboots> : 48,
	<botania:thundersword> : 85,
	<botania:starsword> : 85,
	<botania:terrapick> : 65,
	<botania:terraaxe> : 30,
	<botania:enderdagger> : 20,
	<spartanshields:shield_botania_terrasteel> : 45,
	<spartanshields:shield_botania_manasteel> : 45
};

for item, dmg in blacksmithRecipes {
	blacksmithBuilder
		.setCopy(Copy.byOutput([item]))
		.addTool(art_tools.grimoire, dmg + 25)
		.addTool(art_tools.hammer, dmg)
		.create();
	Disabling.markForRemove(item);
}
	
val carpenterRecipes as int[IIngredient][string] = {
	"botania:pestleandmortar" : {
		art_tools["razor"] : 15
	},
	"botania:opencrate_0" : {
		art_tools["framing_hammer"] : 15
	},
	"botania:opencrate_1" : {
		art_tools["framing_hammer"] : 24
	},
	"botania:livingwood_3" : {
		<ore:artisansCarver> : 16
	},
	"botania:livingwood_4" : {
		<ore:artisansCarver> : 16
	},
	"botania:dreamwood_3" : {
		<ore:artisansCarver> : 18
	},
	"botania:dreamwood_4" : {
		<ore:artisansCarver> : 18
	},
	"botania:incenseplate" : {
		art_tools["framing_hammer"] : 8
	},
	"botania:clip" : {
		art_tools["framing_hammer"] : 8
	}
};

for recipe, toolDmg in carpenterRecipes {
	for tool, dmg in toolDmg {
		builderCarpenter.convertRecipe(recipe, tool, dmg);
	}
}
	
builderEngineer.convertRecipe("botania:turntable", art_tools.spanner, 15);
builderMason.convertRecipe("botania:custombrick_0", art_tools.carver, 5);
builderMage.convertRecipe("botania:spreader_0", art_tools.framing_hammer, 15);
builderMage.convertRecipe("botania:platform_0", art_tools.framing_hammer, 22);
builderMage.convertRecipe("botania:pool_0", art_tools.chisel, 30);
builderMage.convertRecipe("botania:pool_2", art_tools.chisel, 15);
builderMage.convertRecipe("botania:distributor", art_tools.spanner, 25);
builderMage.convertRecipe("botania:manadetector", art_tools.driver, 35);
builderMage.convertRecipe("botania:managun", art_tools.driver, 55);
builderMage.convertRecipe("botania:felpumpkin", art_tools.athame, 10);
builderMage.convertRecipe("botania:virus_0", art_tools.athame, 32);
builderMage.convertRecipe("botania:virus_1", art_tools.athame, 32);
builderMage.convertRecipe(<botania:twigwand>, art_tools.grimoire, 25);

val multitoolRecipes as int[IIngredient][string] = {
	"botania:spreader_2" : {
		art_tools["grimoire"] : 55,
		art_tools["framing_hammer"] : 15
	},
	"botania:pool_3" : {
		art_tools["grimoire"] : 75,
		art_tools["chisel"] : 30
	},
	"botania:alchemycatalyst" : {
		art_tools["grimoire"] : 64,
		art_tools["spanner"] : 20,
	},
	"botania:runealtar" : {
		art_tools["grimoire"] : 15,
		art_tools["chisel"] : 20
	},
	"botania:platform_1" : {
		art_tools["grimoire"] : 38,
		art_tools["framing_hammer"] : 24
	},
	"botania:spawnerclaw" : {
		art_tools["grimoire"] : 85,
		art_tools["athame"] : 90,
	},
	"botania:brewery" : {
		art_tools["grimoire"] : 60,
		art_tools["driver"] : 48,
	},
	"botania:pump" : {
		art_tools["grimoire"] : 25,
		art_tools["driver"] : 16,
	}
};

for recipe, tools in multitoolRecipes {
	builderMage.convertMultitoolRecipe(recipe, tools);
}

mageBuilder
	.setCopy(Copy.byName("botania:conjurationcatalyst"))
	.addTool(art_tools.grimoire, 195)
	.addTool(art_tools.athame, 90)
	.setLevelRequired(30)
	.setMinimumTier(1)
	.create();

val mageNameRecipes as int[string] = {
	"botania:manaresource_3" : 5,
	"botania:manaresource_6" : 5,
	"botania:manaresource_12" : 15,
	"botania:manaresource_13" : 5,
	"botania:manaresource_14" : 16,
	"botania:manatablet" : 15,
	"botania:dirtrod" : 35,
	"botania:terraformrod" : 75,
	"botania:grasshorn_0" : 18,
	"botania:grasshorn_1" : 10,
	"botania:grasshorn_2" : 10,
	"botania:manamirror" : 35,
	"botania:tinyplanet" : 45,
	"botania:tinyplanetblock" : 52,
	"botania:manaring" : 35,
	"botania:auraring" : 35,
	"botania:icependant" : 50,
	"botania:lavapendant" : 50,
	"botania:magnetring" : 45,
	"botania:waterring" : 45,
	"botania:miningring" : 45,
	"botania:divacharm" : 65,
	"botania:flighttiara_0" : 75,
	"botania:waterrod" : 35,
	"botania:spawnermover" : 110,
	"botania:pixiering" : 85,
	"botania:supertravelbelt" : 75,
	"botania:rainbowrod" : 85,
	"botania:tornadorod" : 40,
	"botania:firerod" : 40,
	"botania:slingshot" : 30,
	"botania:laputashard_0" : 95,
	"botania:reachring" : 80,
	"botania:skydirtrod" : 65,
	"botania:itemfinder" : 45,
	"botania:superlavapendant" : 95,
	"botania:enderhand" : 70,
	"botania:sparkupgrade_0" : 40,
	"botania:sparkupgrade_1" : 40,
	"botania:sparkupgrade_2" : 40,
	"botania:sparkupgrade_3" : 40,
	"botania:diviningrod" : 45,
	"botania:gravityrod" : 65,
	"botania:bloodpendant" : 75,
	"botania:missilerod" : 95,
	"botania:craftinghalo" : 48,
	"botania:autocraftinghalo" : 60,
	"botania:cobblerod" : 45,
	"botania:smeltrod" : 45,
	"botania:worldseed" : 40,
	"botania:spellcloth" : 25,
	"botania:thornchakram_1" : 65,
	"botania:swapring" : 30,
	"botania:keepivy" : 35,
	"botania:blackholetalisman_0" : 65,
	"botania:temperancestone" : 20,
	"botania:incensestick" : 40,
	"botania:obediencestick" : 30,
	"botania:exchangerod" : 75,
	"botania:speedupbelt" : 80,
	"botania:dodgering" : 40,
	"botania:cloudpendant" : 80,
	"botania:supercloudpendant" : 135,
	"botania:thirdeye" : 50,
	"botania:goddesscharm" : 65,
	"botania:spreader_3" : 50,
	"botania:pylon_0" : 16,
	"botania:pylon_1" : 34,
	"botania:pylon_2" : 70,
	"botania:manavoid" : 30,
	"botania:foresteye" : 36,
	"botania:endereyeblock" : 45,
	"botania:starfield" : 160,
	"botania:terraplate" : 75,
	"botania:redstringcontainer" : 25,
	"botania:redstringdispenser" : 25,
	"botania:redstringfertilizer" : 25,
	"botania:redstringcomparator" : 25,
	"botania:redstringrelay" : 25,
	"botania:prism" : 35,
	"botania:corporeaindex" : 80,
	"botania:corporeafunnel" : 25,
	"botania:corporeainterceptor" : 25,
	"botania:corporeacrystalcube" : 45,
	"botania:corporearetainer" : 25,
	"botania:hourglass" : 15,
	"botania:sparkchanger" : 32,
	"botania:cocoon" : 110,
	"botania:lightrelay_0" : 132,
	"botania:lightlauncher" : 65,
	"botania:bellows" : 22,
	"botania:bifrostperm" : 36,
	"botania:shimmerrock" : 15,
	"botania:shimmerwoodplanks" : 15,
	"botania:avatar" : 95,
	"botania:alfheimportal" : 24,
	"botania:spark" : 25,
	"botania:corporeaspark_0" : 42,
	"botania:corporeaspark_1" : 45
};

for recipe, dmg in mageNameRecipes {
	builderMage.convertRecipe(recipe, art_tools.grimoire, dmg);
}

for i in 0 to 16 {
	builderMage.convertRecipe("botania:miniisland_" ~ i, art_tools.grimoire, 18);
}
for i in 1 to 24 {
	builderMage.convertRecipe(<botania:lens>.definition.makeStack(i), art_tools.grimoire, 32);
}

for item in [
	<botania:manaresource:12>,
	<botania:livingrock>,
	<botania:spreader:2>,
	<botania:pool:3>,
	<botania:alchemycatalyst>,
	<botania:conjurationcatalyst>,
	<botania:runealtar>,
	<botania:platform:1>,
	<botania:spawnerclaw>,
	<botania:brewery>,
	<botania:pump>,
	<botania:shimmerrock>,
	<botania:travelbelt>,
	<botania:knockbackbelt>,
	<botania:forestdrum:0>,
	<botania:forestdrum:1>,
	<botania:forestdrum:2>,
	<botania:rfgenerator>
] as IItemStack[] {
	Disabling.markForRemove(item);
}