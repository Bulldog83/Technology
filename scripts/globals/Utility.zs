
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformerNew;

import mods.jei.JEI;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function strToName(str as string) as string {
	return str.replaceAll("[ :.-]", "_").toLowerCase();
}

function strToOreName(str as string, prefix as string) as string {
	val words as string[] = strToName(str).split("_");
	
	var oreName as string = "";
	for word in words {
		oreName ~= capitalize(word);
	}
	
	return prefix ~ oreName;
}

function replaceShapedRecipe(item as IItemStack, recipe as IIngredient[][]) {
	Disabling.markForRemove(item);
	recipes.addShaped(strToName(item.definition.id), item, recipe);
}

function replaceShapelessRecipe(item as IItemStack, recipe as IIngredient[]) {
	Disabling.markForRemove(item);
	recipes.addShapeless(strToName(item.definition.id), item, recipe);
}

function recipeJEIAddShaped(item as IItemStack, recipe as IIngredient[][]) {
	JEI.addItem(item);	
	recipes.addShaped(strToName(item.definition.id), item, recipe);
}

function recipeJEIAddShapeless(item as IItemStack, recipe as IIngredient[]) {
	JEI.addItem(item);	
	recipes.addShapeless(strToName(item.definition.id), item, recipe);
}