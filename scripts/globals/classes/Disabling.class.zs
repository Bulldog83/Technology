
#priority 1300

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

zenClass CDisabling {
	
	var removedItems as IItemStack[];
	var removedNames as string[];
	
	zenConstructor() {
		removedItems = [];
		removedNames = [];
	}
	
	function markForRemove(item as IItemStack) {
		val clear_item = item.hasTag ? item.definition.makeStack() : item;
		if(!isMarked(clear_item)) {
			removedItems += clear_item;
			recipes.remove(clear_item);
		}
	}
	function markForRemove(name as string) {
		if(!isMarked(name)) {
			removedNames += name;
			recipes.removeByRegex(name);
		}
	}
	function markForRemove(ore as IOreDictEntry) {
		for item in ore.items {
			markForRemove(item);
		}
	}
	function markForRemove(item as IItemStack, jei_hide as bool) {
		markForRemove(item);		
		if(jei_hide) JEI.hide(item);
	}
	
	function isMarked(name as string) as bool {
		return removedNames in name;
	}
	function isMarked(item as IItemStack) as bool {
		return removedItems in item;
	}
}