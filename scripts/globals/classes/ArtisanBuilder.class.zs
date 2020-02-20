
#priority 1100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
	
	function convertRecipe(recipe as string, tool as IIngredient, damage as int) {
		builder
			.setCopy(Copy.byName(recipe))
			.addTool(tool, damage)
			.create();
		Disabling.markForRemove(recipe);
	}
	function convertRecipe(item as IItemStack, tool as IIngredient, damage as int) {
		builder
			.setCopy(Copy.byOutput([item]))
			.addTool(tool, damage)
			.create();
		Disabling.markForRemove(item);
	}
	function convertMultitoolRecipe(recipe as string, tools as int[IIngredient]) {
		builder.setCopy(Copy.byName(recipe));
		for tool, dmg in tools {
			builder.addTool(tool, dmg);
		}
		builder.create();
		Disabling.markForRemove(recipe);
	}
	function convertMultitoolRecipe(item as IItemStack, tools as int[IIngredient]) {
		builder.setCopy(Copy.byOutput([item]));
		for tool, dmg in tools {
			builder.addTool(tool, dmg);
		}
		builder.create();
		Disabling.markForRemove(item);
	}
}