
#priority 100

import crafttweaker.item.IItemDefinition;

val drawers as IItemDefinition[string] = {
	"basic" : <storagedrawers:basicdrawers>.definition,
	"basic_trim" : <storagedrawers:trim>.definition,
	"extra" : <storagedrawersextra:extra_drawers>.definition
};

for i in 0 to 5 {
	builderCarpenter.convertRecipe(drawers.basic.makeStack(i), art_tools.framing_hammer, 25);
	builderCarpenter.convertRecipe(drawers.basic_trim.makeStack(i), art_tools.framing_hammer, 25);
	builderCarpenter.convertRecipe(drawers.extra.makeStack(i), art_tools.framing_hammer, 25);
}

builderCarpenter.convertRecipe(<storagedrawersextra:extra_trim_0>, art_tools.framing_hammer, 25);
builderCarpenter.convertRecipe(<storagedrawersextra:extra_trim_1>, art_tools.framing_hammer, 25);

val techDrawers as string[] = [
	"storagedrawers:compacting_drawer",
	"storagedrawers:controller",
	"storagedrawers:controller_slave"
];

for recipe in techDrawers {
	builderEngineer.convertRecipe(recipe, art_tools.driver, 25);
}

val otherRecipes as string[] = [
	"storagedrawers:framing_table",
	"storagedrawers:framed_drawer_full1",
	"storagedrawers:framed_drawer_full2",
	"storagedrawers:framed_drawer_full4",
	"storagedrawers:framed_drawer_half2",
	"storagedrawers:framed_drawer_half4",
	"storagedrawers:framed_trim"
];

for recipe in otherRecipes {
	builderCarpenter.convertRecipe(recipe, art_tools.framing_hammer, 25);
}