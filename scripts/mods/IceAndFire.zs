
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
val pin = ore_pin_iron * 4;

for material, item in dragonArmorRecipes {
	for i in 0 to 4 {
		Disabling.markForRemove(item.definition.makeStack(i));
	}
	
	val plate = material * 3;
	blacksmithBuilder
		.setShaped([
			[null,null,null,plate,plate],
			[null,null,plate,pad,pin],
			[null,plate,pad,null,plate],
			[plate,pin,pad,pad,plate],
			[null,plate,plate,plate,null]
		])
		.addOutput(item)
		.addTool(art_tools.hammer, 115)
		.addTool(art_tools.pliers, 75)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[plate,plate,plate,plate,plate],
			[plate,plate,pin,pad,pad],
			[null,plate,plate,pin,pad],
			[null,null,plate,plate,pin]
		])
		.addOutput(item.definition.makeStack(1))
		.addTool(art_tools.hammer, 95)
		.addTool(art_tools.pliers, 50)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[plate,plate,plate,plate,plate],
			[plate,pad,plate,pad,plate],
			[pin,plate,pad,plate,pin],
			[plate,pin,pad,pin,plate],
			[plate,pin,pad,pin,plate]
		])
		.addOutput(item.definition.makeStack(2))
		.addTool(art_tools.hammer, 175)
		.addTool(art_tools.pliers, 140)
		.setMinimumTier(2)
		.create();
	blacksmithBuilder
		.setShaped([
			[plate,null,null,null,null],
			[pad,pin,plate,null,null],
			[plate,pad,pin,plate,null],
			[plate,plate,pad,pin,plate]
		])
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

Disabling.removeRecipes();