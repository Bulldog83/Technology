
#priority 100

import mods.artisanworktables.builder.Copy;

val basicBuilder = builderBasic.builder();
val tannerBuilder = builderTanner.builder();

val fabric_hemp = <ore:fabricHemp>;
val knife = <camping:knife>;

basicBuilder
	.setCopy(Copy.byOutput([knife])
				 .replaceInput(<minecraft:dye:1>, <ore:dyeRed>))
	.addTool(art_tools.driver, 1)
	.create();
Disabling.markForRemove(knife);

builderEngineer.convertRecipe(<camping:lantern>, art_tools.driver, 5);
builderEngineer.convertRecipe("camping:lantern_lantern_on", art_tools.driver, 5);
builderEngineer.convertRecipe("camping:trap", art_tools.driver, 15);
builderBlacksmith.convertRecipe(<camping:parts:3>, art_tools.hammer, 1);
builderBlacksmith.convertRecipe(<camping:kit>, art_tools.hammer, 1);

basicBuilder
	.setCopy(Copy.byName("camping:parts_peg")
				 .replaceInput(<camping:parts:1>, ore_stick_iron)
				 .replaceInput(knife, null))
	.addTool(knife, 1)
	.create();
basicBuilder
	.setCopy(Copy.byName("camping:sleeping_bag_1")
				 .replaceInput(knife, null))
	.addTool(knife, 5)
	.create();
Disabling.markForRemove(<camping:sleeping_bag>);
	
tannerBuilder
	.setCopy(Copy.byName("camping:bag_pouch")
				 .replaceInput(<minecraft:leather>, ore_leather))
	.addTool(art_tools.needle, 5)
	.create();	
tannerBuilder
	.setCopy(Copy.byName("camping:bag_backpack")
				 .replaceInput(<camping:parts_animal:1>, <camping:parts_animal> | <camping:parts_animal:1>))
	.addTool(art_tools.needle, 7)
	.create();	
tannerBuilder
	.setCopy(Copy.byName("camping:bag_rucksack")
				 .replaceInput(<camping:parts>, fabric_hemp))
	.addTool(art_tools.needle, 15)
	.create();	
tannerBuilder
	.setCopy(Copy.byName("camping:tent")
				 .replaceInput(<camping:parts>, fabric_hemp))
	.addTool(art_tools.needle, 25)
	.create();

for recipe in [
	"camping:parts_peg",
	"camping:bag_pouch",
	"camping:bag_backpack",
	"camping:bag_rucksack",
	"camping:tent"
] as string[] {
	Disabling.markForRemove(recipe);
}
	
val furArmor as int[string] = {
	"camping:armor_fur_helm" : 13,
	"camping:armor_fur_chest" : 15,
	"camping:armor_fur_leg" : 14,
	"camping:armor_fur_boots" : 13
};

for part, dmg in furArmor {
	builderTanner.convertRecipe(part, art_tools.needle, dmg);
}