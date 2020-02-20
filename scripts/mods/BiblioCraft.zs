
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.Copy;

val carpenterBuilder = builderCarpenter.builder();

val toolSaw = art_tools.handsaw | ore_tool_saw | <bibliocraft:framingsaw>;

carpenterBuilder
	.setShapeless([<ore:plankWood>])
	.addOutput(<bibliocraft:framingsheet> * 2)
	.addTool(toolSaw, 1)
	.create();
carpenterBuilder
	.setShapeless([<bibliocraft:framingsheet>])
	.addOutput(<bibliocraft:framingboard> * 2)
	.addTool(toolSaw, 1)
	.create();

builderCarpenter.convertRecipe(<bibliocraft:discrack>, art_tools.framing_hammer, 10);

builderEngineer.convertRecipe(<bibliocraft:handdrill>, art_tools.driver, 15);
builderEngineer.convertRecipe(<bibliocraft:bibliodrill>, art_tools.driver, 35);
builderEngineer.convertRecipe(<bibliocraft:tapemeasure>, art_tools.driver, 1);
builderEngineer.convertRecipe(<bibliocraft:compass>, art_tools.driver, 3);
builderEngineer.convertRecipe(<bibliocraft:bell>, art_tools.driver, 1);

builderEngineer.convertMultitoolRecipe(<bibliocraft:paintingpress>, {
	art_tools["spanner"] : 35,
	art_tools["driver"] : 50
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe(<bibliocraft:printingpress>, {
	art_tools["spanner"] : 55,
	art_tools["driver"] : 85
} as int[IIngredient]);
builderCarpenter.convertMultitoolRecipe(<bibliocraft:typesettingtable>, {
	art_tools["framing_hammer"] : 60,
	art_tools["driver"] : 45
} as int[IIngredient]);

for item in [
	<bibliocraft:framingboard>,
	<bibliocraft:framingsheet>
] as IItemStack[] {
	Disabling.markForRemove(item);
}

val woods as string[] = [
	"oak",
	"spruce",
	"birch",
	"jungle",
	"acacia",
	"darkoak",
	"framed"
];

val mebelToolDamage as int[string] = {
	"bookcase" : 12,
	"shelf" : 12,
	"furniturepaneler" : 15,
	"framedchest" : 13,
	"fancysign" : 10,
	"fancyworkbench" : 15,
	"potionshelf" : 13,
	"toolrack" : 14,
	"label" : 5,
	"desk" : 13,
	"table" : 13,
	"seat" : 13,
	"clock" : 18,
	"case" : 14,
	"mapframe" : 8,
	"paintingframeflat" : 6,
	"paintingframesimple" : 6,
	"paintingframemiddle" : 6,
	"paintingframefancy" : 6,
	"paintingframeborderless" : 6,
	"armorstand" : 5,
	"seatback1" : 5,
	"seatback2" : 8,
	"seatback3" : 3,
	"seatback4" : 3,
	"seatback5" : 6
};

for wood in woods {
	for mebel, dmg in mebelToolDamage {
		var recipe = "bibliocraft:" ~ wood ~ "_" ~ mebel;
		builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, dmg);
	}
}

val deviceToolDamage as int[string] = {
	"typewriter" : 25,
	"lampgold" : 12,
	"lampiron" : 12
};

for color in colors {
	var clr = color.replace("_", "");
	for device, dmg in deviceToolDamage {
		var recipe = "bibliocraft:" ~ clr ~ "_" ~ device;
		builderEngineer.convertRecipe(recipe, art_tools.driver, dmg);
	}
}