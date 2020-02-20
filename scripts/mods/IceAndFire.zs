
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val blacksmithBuilder = builderBlacksmith.builder();
val carpenterBuilder = builderCarpenter.builder();

val dragonArmorRecipes as IItemStack[IIngredient] = {
	<ore:plateIron> : <iceandfire:dragonarmor_iron>,
	<ore:plateGold> : <iceandfire:dragonarmor_gold>,
	<ore:plateDiamond> : <iceandfire:dragonarmor_diamond>
};

val pad = <ore:leatherTroll>;

for material, item in dragonArmorRecipes {
	for i in 0 to 4 {
		Disabling.markForRemove(item.definition.makeStack(i));
	}
	
	blacksmithBuilder
		.setShaped([
			[null,null,null,material,material],
			[null,null,material,pad,ore_pin_iron],
			[null,material,pad,null,material],
			[material,ore_pin_iron,pad,pad,material],
			[null,material,material,material,null]
		])
		.setSecondaryIngredients([material * 20, ore_pin_iron * 6])
		.addOutput(item)
		.addTool(art_tools.hammer, 115)
		.addTool(art_tools.pliers, 75)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[material,material,material,material,material],
			[material,material,ore_pin_iron,pad,pad],
			[null,material,material,ore_pin_iron,pad],
			[null,null,material,material,ore_pin_iron]
		])
		.setSecondaryIngredients([material * 22, ore_pin_iron * 9])
		.addOutput(item.definition.makeStack(1))
		.addTool(art_tools.hammer, 95)
		.addTool(art_tools.pliers, 50)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[material,material,material,material,material],
			[material,pad,material,pad,material],
			[ore_pin_iron,material,pad,material,ore_pin_iron],
			[material,ore_pin_iron,pad,ore_pin_iron,material],
			[material,ore_pin_iron,pad,ore_pin_iron,material]
		])
		.setSecondaryIngredients([material * 28, ore_pin_iron * 18])
		.addOutput(item.definition.makeStack(2))
		.addTool(art_tools.hammer, 175)
		.addTool(art_tools.pliers, 140)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[material,null,null,null,null],
			[pad,ore_pin_iron,material,null,null],
			[material,pad,ore_pin_iron,material,null],
			[material,material,pad,ore_pin_iron,material]
		])
		.setSecondaryIngredients([material * 14, ore_pin_iron * 9])
		.addOutput(item.definition.makeStack(3))
		.addTool(art_tools.hammer, 110)
		.addTool(art_tools.pliers, 75)
		.setMinimumTier(2)
		.create();
}

Disabling.markForRemove(<iceandfire:dragon_stick>);
builderMage.builder()
	.setShaped([
		[null,null,<iceandfire:dragon_skull:*>],
		[null,<iceandfire:dragonbone>,null],
		[ore_stick,null,null]
	])
	.addOutput(<iceandfire:dragon_stick>)
	.addTool(art_tools.athame, 75)
	.create();
	
carpenterBuilder
	.setCopy(
		Copy.byOutput([<iceandfire:lectern>])
	)
	.addTool(art_tools.framing_hammer, 15)
	.create();
Disabling.markForRemove(<iceandfire:lectern>);
	
for i in 0 to 6 {
	var podium = <iceandfire:podium>.definition.makeStack(i);
	carpenterBuilder
		.setCopy(
			Copy.byOutput([podium])
		)
		.addTool(art_tools.framing_hammer, 12)
		.create();
	Disabling.markForRemove(podium);
}