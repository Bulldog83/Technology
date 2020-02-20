
#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

mods.betterwithmods.Saw.remove([<betterwithmods:material>]);

val gears as IItemStack[IOreDictEntry] = {
	<ore:gearWood> : <enderio:item_material:9>,
	<ore:gearStone> : <enderio:item_material:10>
};

for ore_gear, gear in gears {
	ore_gear.add(gear);
	for item in ore_gear.items {
		if(!item.matches(gear)) {
			Disabling.markForRemove(item, true);
		}
	}
}

recipes.addShaped("recipes_gear_wood", <enderio:item_material:9> * 2, [
	[ore_stick,ore_plank,ore_stick],
	[ore_plank,null,ore_plank],
	[ore_stick,ore_plank,ore_stick]
]);

var corner_wood = mods.betterwithmods.MiniBlocks.getMiniBlock("corner", ore_plank);
recipes.addShaped("recipes_gear_stone", <enderio:item_material:10> * 2, [
	[corner_wood,ore_cobblestone,corner_wood],
	[ore_cobblestone,null,ore_cobblestone],
	[corner_wood,ore_cobblestone,corner_wood]
]);

mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, metalMolten.gold, 288, true, 60);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, metalMolten.brass, 144, true, 20);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true, 40);

mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:10>);