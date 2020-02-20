
#priority 1300

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

zenClass CDisabling {
	
	var itemRecipes as IItemStack[];
	var nameRecipes as string[];
	
	zenConstructor() {
		itemRecipes = [];
		nameRecipes = [];
	}
	
	function markForRemove(item as IItemStack) {
		var clear_item = item.hasTag ? item.definition.makeStack() : item;
		if(!isMarked(clear_item)) {
			itemRecipes += clear_item;
		}
	}
	function markForRemove(name as string) {
		if(!isMarked(name)) {
			nameRecipes += name;
		}
	}
	function markForRemove(ore as IOreDictEntry) {
		for item in ore.items {
			markForRemove(item);
		}
	}
	function markForRemoveInJEI(item as IItemStack, removeInJEI as bool) {
		if(!isMarked(item)) {
			itemRecipes += item;
		}		
		if(removeInJEI) JEI.hide(item);
	}
	
	function isMarked(item as IItemStack) as bool {
		return itemRecipes in item;
	}
	function isMarked(name as string) as bool {
		return nameRecipes in name;
	}
	
	function removeRecipes() {
		for item in itemRecipes {
			recipes.remove(item);
		}
		for name in nameRecipes {
			recipes.removeByRegex(name);
		}
	}
}