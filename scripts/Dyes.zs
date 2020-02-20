
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

import mods.thermalexpansion.Pulverizer;
import mods.horsepower.Grindstone;
import mods.betterwithmods.Mill;
import mods.immersiveengineering.Crusher;
import mods.mekanism.crusher as MCrusher;
import mods.techreborn.extractor;
import mods.nuclearcraft.manufactory;
import mods.appliedenergistics2.Grinder;

import scripts.globals.Utility.strToName;
import scripts.globals.Utility.strToOreName;

static IE_CRUSHER_ENERGY as int = 3200;
static TE_PULVERIZER_ENERGY as int = 2000;
static HP_GRINDSTONE_TIME as int = 12;
static AE_GRINDER_TURNS as int = 6;
static TR_EXTRACTOR_TICKS as int = 400;
static TR_EXTRACTOR_FE_TICK as int = 8;

function addDyeRecipes(input as IItemStack, output as IItemStack, secondary as IItemStack, dust as IItemStack) {
	Pulverizer.removeRecipe(input);
	Grinder.removeRecipe(input);
	
	builderBasic.builder()
		.setShapeless([input])
		.addOutput(output)
		.setExtraOutputOne(dust, 0.8)
		.addTool(art_tools.mortar, 2)
		.create();
	
	Mill.addRecipe([input], [output, secondary, dust]);
	extractor.addRecipe(output, input, TR_EXTRACTOR_TICKS, TR_EXTRACTOR_FE_TICK);
	manufactory.addRecipe(input, output);
	Pulverizer.addRecipe(output, input, TE_PULVERIZER_ENERGY, secondary, 10);
	Grindstone.add(input, output, HP_GRINDSTONE_TIME, false, secondary, 10);
	Crusher.addRecipe(output, input, IE_CRUSHER_ENERGY, secondary, 0.1);
	MCrusher.addRecipe(input, output);
	Grinder.addRecipe(output, input, AE_GRINDER_TURNS, secondary, 0.1, dust, 0.8);
}

for color, dyes in oreDyes {
	MCrusher.removeRecipe(dyes.dye);
	manufactory.removeRecipeWithOutput(dyes.dye);
	Disabling.markForRemove(dyes.dye);
	for item in dyes.dye.items {
		Crusher.removeRecipe(item);
		Mill.remove([item]);
		Grindstone.remove(item);
		extractor.removeRecipe(item);
	}
}

val itemDyes as IItemStack[string] = {
		 "black": <biomesoplenty:black_dye>,
		   "red": <ferdinandsflowers:flower_dye:1>,
		 "green": <ferdinandsflowers:flower_dye:10>,
		 "brown": <biomesoplenty:brown_dye>,
		  "blue": <ferdinandsflowers:flower_dyeb:3>,
	    "purple": <ferdinandsflowers:flower_dyeb:6>,
	      "cyan": <ferdinandsflowers:flower_dye:14>,
    "light_gray": <minecraft:dye:7>,
	 	  "gray": <minecraft:dye:8>,
		  "pink": <ferdinandsflowers:flower_dyeb:15>,
		  "lime": <ferdinandsflowers:flower_dye:9>,
	    "yellow": <ferdinandsflowers:flower_dye:6>,
    "light_blue": <ferdinandsflowers:flower_dyeb>,
	   "magenta": <ferdinandsflowers:flower_dyeb:10>,
	    "orange": <ferdinandsflowers:flower_dye:3>,
		 "white": <biomesoplenty:white_dye>,
	  "dark_red": <ferdinandsflowers:flower_dye>,
    "red_orange": <ferdinandsflowers:flower_dye:2>,
 "orange_yellow": <ferdinandsflowers:flower_dye:4>,
 "yellow_orange": <ferdinandsflowers:flower_dye:5>,
  "light_yellow": <ferdinandsflowers:flower_dye:7>,
  "yellow_green": <ferdinandsflowers:flower_dye:8>,
    "dark_green": <ferdinandsflowers:flower_dye:11>,
    "blue_green": <ferdinandsflowers:flower_dye:12>,
		  "aqua": <ferdinandsflowers:flower_dye:13>,
    "cloud_blue": <ferdinandsflowers:flower_dye:15>,
     "blue_bell": <ferdinandsflowers:flower_dyeb:1>,
   "medium_blue": <ferdinandsflowers:flower_dyeb:2>,
     "dark_blue": <ferdinandsflowers:flower_dyeb:4>,
   "blue_purple": <ferdinandsflowers:flower_dyeb:5>,
	  "lavender": <ferdinandsflowers:flower_dyeb:7>,
"light_lavender": <ferdinandsflowers:flower_dyeb:8>,
"purple_magenta": <ferdinandsflowers:flower_dyeb:9>,
  "magenta_pink": <ferdinandsflowers:flower_dyeb:11>,
  "dark_magenta": <ferdinandsflowers:flower_dyeb:12>,
     "dark_pink": <ferdinandsflowers:flower_dyeb:13>,
   "medium_pink": <ferdinandsflowers:flower_dyeb:14>
};

val flowerDust as IItemStack[string] = {
		 "black": <botania:dye:15>,
		   "red": <botania:dye:14>,
		 "green": <botania:dye:13>,
		 "brown": <botania:dye:12>,
		  "blue": <botania:dye:11>,
	    "purple": <botania:dye:10>,
	      "cyan": <botania:dye:9>,
    "light_gray": <botania:dye:8>,
	 	  "gray": <botania:dye:7>,
		  "pink": <botania:dye:6>,
		  "lime": <botania:dye:5>,
	    "yellow": <botania:dye:4>,
    "light_blue": <botania:dye:3>,
	   "magenta": <botania:dye:2>,
	    "orange": <botania:dye:1>,
		 "white": <botania:dye>,
	  "dark_red": <botania:dye:14>,
    "red_orange": <botania:dye:14>,
 "orange_yellow": <botania:dye:1>,
 "yellow_orange": <botania:dye:4>,
  "light_yellow": <botania:dye:4>,
  "yellow_green": <botania:dye:5>,
    "dark_green": <botania:dye:13>,
    "blue_green": <botania:dye:13>,
		  "aqua": <botania:dye:9>,
    "cloud_blue": <botania:dye:3>,
     "blue_bell": <botania:dye:3>,
   "medium_blue": <botania:dye:11>,
     "dark_blue": <botania:dye:11>,
   "blue_purple": <botania:dye:10>,
	  "lavender": <botania:dye:10>,
"light_lavender": <botania:dye:10>,
"purple_magenta": <botania:dye:2>,
  "magenta_pink": <botania:dye:2>,
  "dark_magenta": <botania:dye:2>,
     "dark_pink": <botania:dye:6>,
   "medium_pink": <botania:dye:6>
};

var dyePlants as IItemStack[][IItemStack] = {
	itemDyes["white"] : [
		<ferdinandsflowers:block_cff_desert:11>,
		<ferdinandsflowers:block_cff_doublesb>,
		<ferdinandsflowers:block_cff_doublesb:1>,
		<ferdinandsflowers:block_cff_flowersb:8>,
		<ferdinandsflowers:block_cff_flowersd:6>,
		<biomesoplenty:flower_0:9>,		
		<biomesoplenty:flower_0:14>,
		<terraqueous:flowers_single:15>,
		<terraqueous:flowers_cluster:15>,
		<botania:flower>,
		<botania:doubleflower1>,
		<thebetweenlands:marsh_mallow>
	],
	itemDyes["orange"] : [
		<minecraft:red_flower:5>,
		<ferdinandsflowers:block_cff_flowersd:4>,
		<ferdinandsflowers:block_cff_flowersd:8>,
		<ferdinandsflowers:block_cff_doublesc:2>,
		<ferdinandsflowers:block_cff_desert:5>,
		<biomesoplenty:flower_0:5>,		
		<biomesoplenty:flower_0:15>,
		<biomesoplenty:coral:1>,
		<botania:flower:1>,
		<botania:doubleflower1:1>,
		<terraqueous:flowers_single:14>,
		<terraqueous:flowers_cluster:14>
	],
	itemDyes["magenta"] : [
		<ferdinandsflowers:block_cff_flowers:8>,
		<ferdinandsflowers:block_cff_flowersd:15>,
		<biomesoplenty:flower_0:7>,
		<botania:flower:2>,
		<botania:doubleflower1:2>,
		<terraqueous:flowers_single:13>,
		<terraqueous:flowers_cluster:13>
	],
	itemDyes["light_blue"] : [
		<minecraft:red_flower:1>,
		<ferdinandsflowers:block_cff_flowersd:12>,
		<ferdinandsflowers:block_cff_doublesc:5>,
		<ferdinandsflowers:block_cff_desert:8>,
		<biomesoplenty:double_plant>,		
		<biomesoplenty:flower_0:4>,		
		<biomesoplenty:flower_1:4>,
		<botania:flower:3>,
		<botania:doubleflower1:3>,
		<thebetweenlands:bulb_capped_mushroom>,
		<thebetweenlands:blue_eyed_grass>
	],
	itemDyes["yellow"] : [
		<minecraft:yellow_flower>,
		<minecraft:double_plant>,
		<ferdinandsflowers:block_cff_flowers:11>,
		<ferdinandsflowers:block_cff_flowers:12>,
		<ferdinandsflowers:block_cff_flowersb:6>,
		<ferdinandsflowers:block_cff_flowersb:11>,
		<biomesoplenty:flower_1:1>,
		<botania:flower:4>,
		<botania:doubleflower1:4>,
		<astralsorcery:blockcustomflower>,
		<thebetweenlands:golden_club_flower>,
		<thebetweenlands:marsh_marigold_flower>,
		<thebetweenlands:items_plant_drop:20>,
		<terraqueous:flowers_single:11>,
		<terraqueous:flowers_cluster:11>
	],
	itemDyes["lime"] : [
		<ferdinandsflowers:block_cff_flowersc:2>,
		<ferdinandsflowers:block_cff_flowersd:7>,
		<biomesoplenty:mushroom:3>,
		<terraqueous:flowers_single:10>,
		<terraqueous:flowers_cluster:10>,
		<botania:flower:5>,
		<botania:doubleflower1:5>
	],
	itemDyes["pink"] : [
		<minecraft:red_flower:7>,
		<minecraft:double_plant:5>,
		<ferdinandsflowers:block_cff_flowers:5>,
		<ferdinandsflowers:block_cff_flowersc>,
		<ferdinandsflowers:block_cff_flowersc:12>,
		<ferdinandsflowers:block_cff_doublesb:2>,
		<ferdinandsflowers:block_cff_doublesb:3>,
		<ferdinandsflowers:block_cff_doublesc:1>,
		<ferdinandsflowers:block_cff_desert:7>,
		<biomesoplenty:flower_0:6>,		
		<biomesoplenty:flower_0:13>,		
		<biomesoplenty:flower_1:3>,
		<biomesoplenty:coral>,
		<botania:flower:6>,
		<botania:doubleflower1:6>,
		<thebetweenlands:bladderwort_flower>,
		<thebetweenlands:items_plant_drop:18>,
		<thebetweenlands:items_plant_drop:40>,
		<terraqueous:flowers_single:9>,
		<terraqueous:flowers_cluster:9>,
		<thebetweenlands:marsh_hibiscus>
	],
	itemDyes["gray"] : [
		<biomesoplenty:flower_0:12>,
		<terraqueous:flowers_single:8>,
		<terraqueous:flowers_cluster:8>,
		<botania:flower:7>,
		<botania:doubleflower1:7>
	],
	itemDyes["light_gray"] : [
		<minecraft:red_flower:3>,
		<minecraft:red_flower:6>,
		<minecraft:red_flower:8>,
		<ferdinandsflowers:block_cff_doublesd:4>,
		<biomesoplenty:flower_0>,
		<biomesoplenty:mushroom:1>,
		<botania:flower:8>,
		<botania:doubleflower2>,
		<thebetweenlands:items_plant_drop:7>,
		<thebetweenlands:items_plant_drop:8>,
		<thebetweenlands:items_plant_drop:11>,
		<terraqueous:flowers_single:7>,
		<terraqueous:flowers_cluster:7>,
		<thebetweenlands:boneset>
	],
	itemDyes["cyan"] : [
		<ferdinandsflowers:block_cff_flowersd:10>,
		<biomesoplenty:flower_0:1>,		
		<biomesoplenty:flower_0:3>,
		<terraqueous:flowers_single:6>,
		<terraqueous:flowers_cluster:6>,
		<botania:flower:9>,
		<botania:doubleflower2:1>
	],
	itemDyes["purple"] : [
		<minecraft:red_flower:2>,
		<minecraft:double_plant:1>,
		<ferdinandsflowers:block_cff_flowersb>,
		<ferdinandsflowers:block_cff_flowersb:10>,
		<ferdinandsflowers:block_cff_doubles:2>,
		<ferdinandsflowers:block_cff_desert:15>,
		<biomesoplenty:flower_0:8>,		
		<biomesoplenty:flower_1>,
		<biomesoplenty:coral:3>,
		<biomesoplenty:mushroom:5>,
		<botania:flower:10>,
		<botania:doubleflower2:2>,
		<thebetweenlands:items_plant_drop:23>
	],
	itemDyes["blue"] : [
		<ferdinandsflowers:block_cff_flowersd:14>,
		<ferdinandsflowers:block_cff_desert:10>,
		<biomesoplenty:mushroom:2>,		
		<biomesoplenty:flower_1:2>,
		<biomesoplenty:coral:2>,
		<natura:bluebells_flower>,
		<terraqueous:flowers_single:4>,
		<terraqueous:flowers_cluster:4>,
		<botania:flower:11>,
		<botania:doubleflower2:3>,
		<thebetweenlands:items_plant_drop:3>,
		<thebetweenlands:weeping_blue>,
		<thebetweenlands:blue_iris>
	],
	itemDyes["brown"] : [
		<ferdinandsflowers:block_cff_desert:2>,
		<ferdinandsflowers:block_cff_doubles:3>,
		<betterwithmods:material:44>,
		<biomesoplenty:plant_1:4>,
		<biomesoplenty:double_plant:1>,
		<biomesoplenty:mushroom:4>,
		<terraqueous:flowers_single:3>,
		<terraqueous:flowers_cluster:3>,
		<minecraft:dye:3>,
		<botania:flower:12>,
		<botania:doubleflower2:4>,
		<thebetweenlands:flat_head_mushroom>,
		<thebetweenlands:phragmites>
	],
	itemDyes["green"] : [
		<ferdinandsflowers:block_cff_flowersd:5>,
		<ferdinandsflowers:block_cff_desert>,
		<ferdinandsflowers:block_cff_ouch>,
		<ferdinandsflowers:block_cff_doublesd:1>,
		<ferdinandsflowers:block_cff_dark>,
		<terraqueous:flowers_single:2>,
		<terraqueous:flowers_cluster:2>,
		<botania:flower:13>,
		<botania:doubleflower2:5>,
		<thebetweenlands:sundew>,
		<thebetweenlands:venus_fly_trap>,
		<thebetweenlands:arrow_arum>
	],
	itemDyes["red"] : [
		<ferdinandsflowers:block_cff_flowersc:8>,
		<ferdinandsflowers:block_cff_flowersc:13>,
		<ferdinandsflowers:block_cff_flowersd:2>,
		<ferdinandsflowers:block_cff_doubles:4>,
		<ferdinandsflowers:block_cff_desert:1>,
		<minecraft:red_flower>,
		<minecraft:red_flower:4>,
		<minecraft:double_plant:4>,
		<rustic:wildberries>,		
		<biomesoplenty:flower_0:11>,		
		<biomesoplenty:flower_1:5>,
		<botania:flower:14>,
		<botania:doubleflower2:6>,
		<thebetweenlands:items_plant_drop:12>,
		<terraqueous:flowers_single:1>,
		<terraqueous:flowers_cluster:1>
	],
	itemDyes["black"] : [
		<minecraft:dye>,		
		<biomesoplenty:flower_0:2>,		
		<biomesoplenty:flower_0:10>,
		<terraqueous:flowers_single>,
		<terraqueous:flowers_cluster>,
		<botania:flower:15>,
		<botania:doubleflower2:7>,
		<thebetweenlands:black_hat_mushroom>
	],
	itemDyes["dark_red"] : [
		<ferdinandsflowers:block_cff_doublesb:5>,
		<thebetweenlands:cardinal_flower>
	],
	itemDyes["red_orange"] : [
		<ferdinandsflowers:block_cff_flowers:14>,
		<ferdinandsflowers:block_cff_doublesd:2>,
		<ferdinandsflowers:block_cff_desert:12>,
		<ferdinandsflowers:block_cff_doublesd:5>,
		<thebetweenlands:copper_iris>
	],
	itemDyes["orange_yellow"] : [
		<ferdinandsflowers:block_cff_flowers:1>,
		<ferdinandsflowers:block_cff_flowers:6>,
		<ferdinandsflowers:block_cff_flowersb:2>,
		<ferdinandsflowers:block_cff_flowersb:5>,
		<ferdinandsflowers:block_cff_flowersb:9>,
		<ferdinandsflowers:block_cff_flowersb:13>,
		<ferdinandsflowers:block_cff_flowersc:1>
	],
	itemDyes["yellow_orange"] : [
		<ferdinandsflowers:block_cff_flowersb:1>,
		<ferdinandsflowers:block_cff_flowersb:4>,
		<ferdinandsflowers:block_cff_doublesc:3>,
		<ferdinandsflowers:block_cff_desert:4>,
		<thebetweenlands:items_plant_drop:16>
	],
	itemDyes["light_yellow"] : [
		<ferdinandsflowers:block_cff_flowersb:12>,
		<ferdinandsflowers:block_cff_flowersc:7>,
		<ferdinandsflowers:block_cff_desert:3>,
		<ferdinandsflowers:block_cff_doublesc:4>,
		<ferdinandsflowers:block_cff_doublesd>,
		<thebetweenlands:nettle_flowered>
	],
	itemDyes["yellow_green"] : [
		<ferdinandsflowers:block_cff_ouch:1>
	],
	itemDyes["dark_green"] : [
		<ferdinandsflowers:block_cff_flowersc:4>,
		<ferdinandsflowers:block_cff_desert:14>,
		<thebetweenlands:pitcher_plant>
	],
	itemDyes["blue_green"] : [
		<ferdinandsflowers:block_cff_flowers:3>
	],
	itemDyes["aqua"] : [
		<ferdinandsflowers:block_cff_flowers:13>
	],
	itemDyes["cloud_blue"] : [
		<ferdinandsflowers:block_cff_flowers:15>,
		<ferdinandsflowers:block_cff_flowersd:11>
	],
	itemDyes["blue_bell"] : [
		<ferdinandsflowers:block_cff_flowersc:5>,
		<terraqueous:flowers_single:12>,
		<terraqueous:flowers_cluster:12>
	],
	itemDyes["medium_blue"] : [
		<ferdinandsflowers:block_cff_flowersb:7>,
		<ferdinandsflowers:block_cff_flowersd:13>
	],
	itemDyes["dark_blue"] : [
		<ferdinandsflowers:block_cff_flowersc:6>
	],
	itemDyes["blue_purple"] : [
		<ferdinandsflowers:block_cff_flowers:4>,
		<ferdinandsflowers:block_cff_flowersd:9>,
		<ferdinandsflowers:block_cff_flowersb:15>,
		<ferdinandsflowers:block_cff_doubles:5>
	],
	itemDyes["lavender"] : [
		<terraqueous:flowers_single:5>,
		<terraqueous:flowers_cluster:5>,
		<ferdinandsflowers:block_cff_flowersc:14>,
		<ferdinandsflowers:block_cff_flowersd:1>,
		<ferdinandsflowers:block_cff_doubles:1>,
		<ferdinandsflowers:block_cff_desert:9>,
		<ferdinandsflowers:block_cff_desert:13>,
		<ferdinandsflowers:block_cff_doublesd:3>,
		<thebetweenlands:pickerel_weed>
	],
	itemDyes["light_lavender"] : [
		<ferdinandsflowers:block_cff_flowers:9>,
		<ferdinandsflowers:block_cff_flowers:10>,
		<ferdinandsflowers:block_cff_flowersb:14>,
		<ferdinandsflowers:block_cff_flowersc:15>,
		<ferdinandsflowers:block_cff_desert:6>,
		<thebetweenlands:bog_bean_flower>,
		<thebetweenlands:items_plant_drop:19>
	],
	itemDyes["purple_magenta"] : [
		<ferdinandsflowers:block_cff_flowers:7>
	],
	itemDyes["magenta_pink"] : [
		<ferdinandsflowers:block_cff_flowers>,
		<ferdinandsflowers:block_cff_flowersc:3>,
		<ferdinandsflowers:block_cff_ouch:2>,
		<thebetweenlands:milkweed>
	],
	itemDyes["dark_magenta"] : [
		<ferdinandsflowers:block_cff_flowers:2>,
		<ferdinandsflowers:block_cff_flowersd>
	],
	itemDyes["dark_pink"] : [
		<ferdinandsflowers:block_cff_flowersc:9>,
		<ferdinandsflowers:block_cff_doublesb:4>
	],
	itemDyes["medium_pink"] : [
		<ferdinandsflowers:block_cff_flowersb:3>,
		<ferdinandsflowers:block_cff_flowersc:10>,
		<ferdinandsflowers:block_cff_flowersc:11>,
		<ferdinandsflowers:block_cff_flowersd:3>,
		<ferdinandsflowers:block_cff_doubles>,
		<ferdinandsflowers:block_cff_doublesc>
	]
};

val plantClasters as IItemStack[] = [
	<terraqueous:flowers_cluster:15>,
	<terraqueous:flowers_cluster:14>,
	<terraqueous:flowers_cluster:13>,
	<terraqueous:flowers_cluster:12>,
	<terraqueous:flowers_cluster:11>,
	<terraqueous:flowers_cluster:10>,
	<terraqueous:flowers_cluster:9>,
	<terraqueous:flowers_cluster:8>,
	<terraqueous:flowers_cluster:7>,
	<terraqueous:flowers_cluster:6>,
	<terraqueous:flowers_cluster:5>,
	<terraqueous:flowers_cluster:4>,
	<terraqueous:flowers_cluster:3>,
	<terraqueous:flowers_cluster:2>,
	<terraqueous:flowers_cluster:1>,
	<terraqueous:flowers_cluster>
];

val plantDouble as IItemStack[] = [
	<minecraft:double_plant>,
	<minecraft:double_plant:1>,
	<minecraft:double_plant:4>,
	<minecraft:double_plant:5>,
	<ferdinandsflowers:block_cff_doubles>,
	<ferdinandsflowers:block_cff_doubles:1>,
	<ferdinandsflowers:block_cff_doubles:2>,
	<ferdinandsflowers:block_cff_doubles:3>,
	<ferdinandsflowers:block_cff_doubles:4>,
	<ferdinandsflowers:block_cff_doubles:5>,
	<ferdinandsflowers:block_cff_doublesb>,
	<ferdinandsflowers:block_cff_doublesb:1>,
	<ferdinandsflowers:block_cff_doublesb:2>,
	<ferdinandsflowers:block_cff_doublesb:3>,
	<ferdinandsflowers:block_cff_doublesb:4>,
	<ferdinandsflowers:block_cff_doublesb:5>,
	<ferdinandsflowers:block_cff_doublesc>,
	<ferdinandsflowers:block_cff_doublesc:1>,
	<ferdinandsflowers:block_cff_doublesc:2>,
	<ferdinandsflowers:block_cff_doublesc:3>,
	<ferdinandsflowers:block_cff_doublesc:4>,
	<ferdinandsflowers:block_cff_doublesc:5>,
	<ferdinandsflowers:block_cff_doublesd>,
	<ferdinandsflowers:block_cff_doublesd:1>,
	<ferdinandsflowers:block_cff_doublesd:2>,
	<ferdinandsflowers:block_cff_doublesd:3>,
	<ferdinandsflowers:block_cff_doublesd:4>,
	<ferdinandsflowers:block_cff_doublesd:5>,
	<thebetweenlands:cardinal_flower>,
	<thebetweenlands:pitcher_plant>,
	<thebetweenlands:weeping_blue>,
	<thebetweenlands:sundew>,
	<thebetweenlands:phragmites>,
	<botania:doubleflower1>,
	<botania:doubleflower1:1>,
	<botania:doubleflower1:2>,
	<botania:doubleflower1:3>,
	<botania:doubleflower1:4>,
	<botania:doubleflower1:5>,
	<botania:doubleflower1:6>,
	<botania:doubleflower1:7>,
	<botania:doubleflower2>,
	<botania:doubleflower2:1>,
	<botania:doubleflower2:2>,
	<botania:doubleflower2:3>,
	<botania:doubleflower2:4>,
	<botania:doubleflower2:5>,
	<botania:doubleflower2:6>,
	<botania:doubleflower2:7>
];

for color, dye in itemDyes {
	Disabling.markForRemove(dye);
	
	var oreDye = oreDict[strToOreName(color, "dye")];
	var silage = <enderio:item_material:46>;
	
	oreDye.add(dye);
	for plant in dyePlants[dye] {
		oreDye.remove(plant);
		<ore:dye>.remove(plant);
		
		var multi_pri as int = plantClasters in plant ? 6 : plantDouble in plant ? 4 : 2;
		var multi_sec as int = multi_pri / 2;
		addDyeRecipes(plant, dye * multi_pri, silage * multi_sec, flowerDust[color] * multi_sec);
	}	
}

recipes.addShapeless(strToName(itemDyes["light_gray"].displayName) + "_x2", itemDyes["light_gray"] * 2, [oreDyes["gray"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["light_gray"].displayName) + "_x3", itemDyes["light_gray"] * 3, [oreDyes["black"].dye, oreDyes["white"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["gray"].displayName), itemDyes["gray"] * 2, [oreDyes["black"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["pink"].displayName), itemDyes["pink"] * 2, [oreDyes["red"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["lime"].displayName), itemDyes["lime"] * 2, [oreDyes["green"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["light_blue"].displayName), itemDyes["light_blue"] * 2, [oreDyes["blue"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["purple"].displayName), itemDyes["purple"] * 2, [oreDyes["red"].dye, oreDyes["blue"].dye]);
recipes.addShapeless(strToName(itemDyes["orange"].displayName), itemDyes["orange"] * 2, [oreDyes["red"].dye, oreDyes["yellow"].dye]);
recipes.addShapeless(strToName(itemDyes["cyan"].displayName), itemDyes["cyan"] * 3, [oreDyes["blue"].dye, oreDyes["green"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["dark_red"].displayName), itemDyes["dark_red"] * 3, [oreDyes["red"].dye, oreDyes["red"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["red_orange"].displayName), itemDyes["red_orange"] * 2, [oreDyes["red"].dye, oreDyes["orange"].dye]);
recipes.addShapeless(strToName(itemDyes["orange_yellow"].displayName), itemDyes["orange_yellow"] * 3, [oreDyes["orange"].dye, oreDyes["orange"].dye, oreDyes["yellow"].dye]);
recipes.addShapeless(strToName(itemDyes["yellow_orange"].displayName), itemDyes["yellow_orange"] * 3, [oreDyes["yellow"].dye, oreDyes["yellow"].dye, oreDyes["orange"].dye]);
recipes.addShapeless(strToName(itemDyes["light_yellow"].displayName), itemDyes["light_yellow"] * 2, [oreDyes["yellow"].dye, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["yellow_green"].displayName), itemDyes["yellow_green"] * 2, [oreDyes["yellow"].dye, oreDyes["green"].dye]);
recipes.addShapeless(strToName(itemDyes["dark_green"].displayName), itemDyes["dark_green"] * 2, [oreDyes["green"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["blue_green"].displayName), itemDyes["blue_green"] * 2, [oreDyes["blue"].dye, oreDyes["green"].dye]);
recipes.addShapeless(strToName(itemDyes["medium_blue"].displayName), itemDyes["medium_blue"] * 3, [oreDyes["blue"].dye, oreDyes["blue"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["dark_blue"].displayName), itemDyes["dark_blue"] * 2, [oreDyes["blue"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["blue_purple"].displayName), itemDyes["blue_purple"] * 2, [oreDyes["blue"].dye, oreDyes["purple"].dye]);
recipes.addShapeless(strToName(itemDyes["light_lavender"].displayName), itemDyes["light_lavender"] * 2, [<ore:dyeLavender>, oreDyes["white"].dye]);
recipes.addShapeless(strToName(itemDyes["purple_magenta"].displayName), itemDyes["purple_magenta"] * 2, [oreDyes["purple"].dye, oreDyes["magenta"].dye]);
recipes.addShapeless(strToName(itemDyes["magenta_pink"].displayName), itemDyes["magenta_pink"] * 2, [oreDyes["magenta"].dye, oreDyes["pink"].dye]);
recipes.addShapeless(strToName(itemDyes["dark_magenta"].displayName), itemDyes["dark_magenta"] * 2, [oreDyes["magenta"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["dark_pink"].displayName), itemDyes["dark_pink"] * 2, [oreDyes["pink"].dye, oreDyes["black"].dye]);
recipes.addShapeless(strToName(itemDyes["medium_pink"].displayName), itemDyes["medium_pink"] * 3, [oreDyes["pink"].dye, oreDyes["pink"].dye, oreDyes["black"].dye]);

Disabling.removeRecipes();