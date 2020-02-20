
#priority 100

import crafttweaker.item.IIngredient;
	
builderBlacksmith.convertRecipe("simplyjetpacks:recipes12", art_tools.hammer, 8);
builderTanner.convertRecipe("simplyjetpacks:recipes0", art_tools.needle, 5);

builderChemist.convertRecipe("simplyjetpacks:recipes1", art_tools.beaker, 3);
builderChemist.convertRecipe("simplyjetpacks:recipes2", art_tools.beaker, 3);
builderChemist.convertRecipe("simplyjetpacks:recipes3", art_tools.beaker, 3);
builderChemist.convertRecipe("simplyjetpacks:recipes4", art_tools.beaker, 3);

builderEngineer.convertRecipe("simplyjetpacks:recipes5", art_tools.driver, 8);
builderEngineer.convertRecipe("simplyjetpacks:recipes6", art_tools.driver, 10);

builderEngineer.convertMultitoolRecipe("simplyjetpacks:recipes7", {
	art_tools["driver"] : 12,
	art_tools["spanner"] : 10
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:recipes8", {
	art_tools["driver"] : 14,
	art_tools["spanner"] : 12
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:recipes9", {
	art_tools["driver"] : 12,
	art_tools["spanner"] : 8
} as int[IIngredient]);

builderEngineer.convertMultitoolRecipe("simplyjetpacks:upgraderecipe1", {
	art_tools["driver"] : 10,
	art_tools["spanner"] : 6
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:upgraderecipe2", {
	art_tools["driver"] : 12,
	art_tools["spanner"] : 8
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:upgraderecipe3", {
	art_tools["driver"] : 13,
	art_tools["spanner"] : 10
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:upgraderecipe4", {
	art_tools["driver"] : 15,
	art_tools["spanner"] : 12
} as int[IIngredient]);
builderEngineer.convertMultitoolRecipe("simplyjetpacks:upgraderecipe5", {
	art_tools["driver"] : 24,
	art_tools["spanner"] : 18
} as int[IIngredient]);

builderEngineer.convertRecipe("simplyjetpacks:upgraderecipe6", art_tools.driver, 8);
builderEngineer.convertRecipe("simplyjetpacks:upgraderecipe7", art_tools.driver, 12);
builderEngineer.convertRecipe("simplyjetpacks:upgraderecipe8", art_tools.driver, 15);