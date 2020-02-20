
#priority 1100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

zenClass ArtisanBuilder {
	val builder as RecipeBuilder;
	val type as string;
	
	zenConstructor(type as string) {
		builder = RecipeBuilder.get(type);
		this.type = type;
	}
	
	function builder() as RecipeBuilder {
		return builder;
	}
	
	function copyRecipe(copy as Copy) {
		builder
			.setCopy(copy)
			.create();
	}
	function copyRecipe(copy as Copy, tool as IIngredient, damage as int) {
		builder
			.setCopy(copy)
			.addTool(tool, damage)
			.create();
	}
	function copyRecipe(copy as Copy, tools as int[IIngredient]) {
		builder.setCopy(copy);
		for tool, dmg in tools {
			builder.addTool(tool, dmg);
		}
		builder.create();
	}
	function copyRecipe(item as IItemStack) {
		copyRecipe(Copy.byOutput([item]));
	}
	function copyRecipe(recipe as string) {
		copyRecipe(Copy.byName(recipe));
	}
	function copyRecipe(recipe as ICraftingRecipe) {
		copyRecipe(Copy.byRecipe(recipe));
	}
	
	function convertRecipe(recipe as string, tool as IIngredient, damage as int) {
		copyRecipe(Copy.byName(recipe), tool, damage);
		Disabling.markForRemove(recipe);
	}
	function convertRecipe(item as IItemStack, tool as IIngredient, damage as int) {
		copyRecipe(Copy.byOutput([item]), tool, damage);
		Disabling.markForRemove(item);
	}
	
	function convertMultitoolRecipe(recipe as string, tools as int[IIngredient]) {
		copyRecipe(Copy.byName(recipe), tools);
		Disabling.markForRemove(recipe);
	}
	function convertMultitoolRecipe(item as IItemStack, tools as int[IIngredient]) {
		copyRecipe(Copy.byOutput([item]), tools);
		Disabling.markForRemove(item);
	}
	
	function convertReplace(item as IItemStack, tool as IIngredient, damage as int, replace as IIngredient, replacement as IIngredient) {
		copyRecipe(Copy.byOutput([item])
					   .replaceInput(replace, replacement), tool, damage);
		Disabling.markForRemove(item);
	}
	function convertShapedReplace(item as IItemStack, tool as IIngredient, damage as int, cell as int[], replacement as IIngredient) {
		copyRecipe(Copy.byOutput([item])
					   .replaceShapedInput(cell[0], cell[1], replacement), tool, damage);
		Disabling.markForRemove(item);
	}
	function convertReplace(recipe as string, tool as IIngredient, damage as int, replace as IIngredient, replacement as IIngredient) {
		copyRecipe(Copy.byName(recipe)
					   .replaceInput(replace, replacement), tool, damage);
		Disabling.markForRemove(recipe);
	}
	function convertShapedReplace(recipe as string, tool as IIngredient, damage as int, cell as int[], replacement as IIngredient) {
		copyRecipe(Copy.byName(recipe)
					   .replaceShapedInput(cell[0], cell[1], replacement), tool, damage);
		Disabling.markForRemove(recipe);
	}
	function convertReplace(item as IItemStack, tool as IIngredient, damage as int, replace as IIngredient[IIngredient]) {
		copyRecipe(replaceInput(Copy.byOutput([item]), replace), tool, damage);
		Disabling.markForRemove(item);
	}
	function convertShapedReplace(item as IItemStack, tool as IIngredient, damage as int, replace as IIngredient[int[]]) {
		copyRecipe(replaceShapedInput(Copy.byOutput([item]), replace), tool, damage);
		Disabling.markForRemove(item);
	}
	function convertReplace(recipe as string, tool as IIngredient, damage as int, replace as IIngredient[IIngredient]) {
		copyRecipe(replaceInput(Copy.byName(recipe), replace), tool, damage);
		Disabling.markForRemove(recipe);
	}
	function convertShapedReplace(recipe as string, tool as IIngredient, damage as int, replace as IIngredient[int[]]) {
		copyRecipe(replaceShapedInput(Copy.byName(recipe), replace), tool, damage);
		Disabling.markForRemove(recipe);
	}
	
	function replaceInput(copy as Copy, replace as IIngredient[IIngredient]) as Copy {
		var replaced = copy;
		for ingredient, replacement in replace {
			replaced = replaced.replaceInput(ingredient, replacement);
		}		
		return replaced;
	}
	function replaceShapedInput(copy as Copy, replace as IIngredient[int[]]) as Copy {
		var replaced = copy;
		for cell, replacement in replace {
			if(cell.length == 2) {
				if(2 >= cell[0] & cell[0] >= 0 & 2 >= cell[1] & cell[1] >= 0) {
					replaced = replaced.replaceShapedInput(cell[0], cell[1], replacement);
				} else {
					logger.logError("ArtisanBuilder replace error! Crafting cell coords invalid! Ingredients not replaced!");
				}
			} else {
				logger.logError("ArtisanBuilder replace error! Wrong length of crafting cell coords! Ingredients not replaced!");
			}
		}		
		return replaced;
	}
}