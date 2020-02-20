
#priority 100

import mods.artisanworktables.builder.Copy;

val copyRecipes as string[] = [
	"tconstruct:smeltery/smeltery_controller",
	"tconstruct:smeltery/smeltery_drain",
	"tconstruct:smeltery/seared/tank",
	"tconstruct:smeltery/seared/gauge",
	"tconstruct:smeltery/seared/window",
	"tconstruct:smeltery/seared/glass",
	"tconstruct:smeltery/seared/furnace_controller",
	"tconstruct:smeltery/faucet",
	"tconstruct:smeltery/channel",
	"tconstruct:smeltery/casting_table",
	"tconstruct:smeltery/casting_basin",
	"tconstruct:smeltery/tinker_tank_controller",
	"tcomplement:feature/melter",
	"tcomplement:feature/heater"
];

val masonBuilder = builderMason.builder();

for recipe in copyRecipes {
	masonBuilder
		.setCopy(Copy.byName(recipe))
		.addTool(art_tools.trowel, 3)
		.setSecondaryIngredients([ore_mortar * 3])
		.create();
	Disabling.markForRemove(recipe);
}

Disabling.removeRecipes();