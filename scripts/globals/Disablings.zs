
#priority 50

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.ltt.LootTable;

function itemsRemove(array as IItemStack[]) {
	for item in array {
		Disabling.markForRemoveInJEI(item, true);
		LootTable.removeGlobalItem(item.definition.id);
	}
}

val removeItems as IItemStack[] = [
	<minecraft:wooden_sword>,<minecraft:wooden_shovel>,<minecraft:wooden_pickaxe>,<minecraft:wooden_axe>,<minecraft:wooden_hoe>,<minecraft:stone_sword>,<minecraft:stone_shovel>,<minecraft:stone_pickaxe>,<minecraft:stone_axe>,<minecraft:stone_hoe>,<techreborn:bronzehelmet>,<techreborn:bronzechestplate>,<techreborn:bronzeleggings>,<techreborn:bronzeboots>,<techreborn:rubyhelmet>,<techreborn:rubychestplate>,<techreborn:rubyleggings>,<techreborn:rubyboots>,<techreborn:sapphirehelmet>,<techreborn:sapphirechestplate>,<techreborn:sapphireleggings>,<techreborn:sapphireboots>,<ferdinandsflowers:block_stone_light:*>,<ferdinandsflowers:block_cobble_light:*>,<ferdinandsflowers:block_dirt_light:*>,<ferdinandsflowers:block_log_light:*>,<ferdinandsflowers:block_plank_light:*>,<ferdinandsflowers:block_sand_light:*>,<ferdinandsflowers:block_gravel_light>,<ferdinandsflowers:block_stonebrick_light:*>,<ferdinandsflowers:block_metal_light:*>,<nuclearcraft:dominos>,<camping:parts:5>,<camping:parts:6>,<ferdinandsflowers:block_cff_dark:1>,<ferdinandsflowers:block_birthday>,<primal:quartz_axe>,<primal:opal_axe>,<primal:obsidian_axe>,<primal:flint_axe>,<primal:emerald_axe>,<primal:diamond_axe>,<projectred-exploration:ruby_helmet>,<projectred-exploration:ruby_chestplate>,<projectred-exploration:ruby_leggings>,<projectred-exploration:ruby_boots>,<projectred-exploration:sapphire_helmet>,<projectred-exploration:sapphire_chestplate>,<projectred-exploration:sapphire_leggings>,<projectred-exploration:sapphire_boots>,<projectred-exploration:peridot_helmet>,<projectred-exploration:peridot_chestplate>,<projectred-exploration:peridot_leggings>,<projectred-exploration:peridot_boots>,<techreborn:peridothelmet>,<techreborn:peridotchestplate>,<techreborn:peridotleggings>,<techreborn:peridotboots>,<tconstruct:sign_head>,<tconstruct:pan_head>,<tconstruct:battlesign>,<tconstruct:frypan>,<botania:manabomb>,<nuclearcraft:spaxelhoe_boron>,<nuclearcraft:spaxelhoe_tough>,<nuclearcraft:spaxelhoe_hard_carbon>,<nuclearcraft:spaxelhoe_boron_nitride>,<thermalfoundation:tool.sword_silver:0>,<thermalfoundation:tool.shovel_silver:0>,<projectred-exploration:sapphire_sword:0>,<projectred-exploration:sapphire_shovel:0>,<projectred-exploration:ruby_sword:0>,<projectred-exploration:ruby_shovel:0>,<projectred-exploration:peridot_sword:0>,<projectred-exploration:peridot_shovel:0>,<thermalfoundation:tool.sword_bronze:0>,<thermalfoundation:tool.shovel_bronze:0>,<thermalfoundation:tool.hoe_silver:0>,<thermalfoundation:tool.axe_silver:0>,<projectred-exploration:sapphire_hoe:0>,<projectred-exploration:sapphire_axe:0>,<projectred-exploration:ruby_hoe:0>,<projectred-exploration:ruby_axe:0>,<projectred-exploration:peridot_hoe:0>,<projectred-exploration:peridot_axe:0>,<thermalfoundation:tool.axe_bronze:0>,<thermalfoundation:tool.hoe_bronze:0>,<mekanism:basicblock:12>,<mekanism:basicblock:1>,<thermalfoundation:tool.pickaxe_silver:0>,<magneticraft:storage_blocks:1>,<projectred-exploration:sapphire_pickaxe:0>,<projectred-exploration:ruby_pickaxe:0>,<projectred-exploration:peridot_pickaxe:0>,<projectred-exploration:iron_sickle:0>,<projectred-exploration:golden_sickle:0>,<projectred-exploration:diamond_sickle:0>,<thermalfoundation:tool.pickaxe_bronze:0>,<betterwithmods:candle:*>,<betterwithmods:material>
];

itemsRemove(removeItems);

Disabling.markForRemove(item_bread);

for recipe in [
	"betterwithmods:items/stick",
	"enderio:tweak_stick_from_wood",
	"matteroverdrive:tritanium_plate",
	"mekanism:paper",
	"mekanism:rail",
	"minecraft:paper",
	"primal:paper",
	"primal:soul_sand.*",
	"primal:sand.*",
	"primal:brick.*",
	"primal:netherbrick.*",
	"primal:terracotta_brick.*",
	"primal:ciniscotta_brick.*",
	"primal:adobe.*",
	"primal:diamond.*",
	"primal:stone.*",
	"primal:cobblestone.*",
	"primal:stick.*",
	"primal:wooden_slab.*",
	"primal:framingsheet.*",
	"primal:framingboard.*",
	"primal:furniturepaneler.*",
	"primal:netherrack_1",
	"quark:chest.*",
	"quark:custom_chest_1",
	"quark:custom_chest_3",
	"quark:custom_chest_5",
	"quark:custom_chest_7",
	"quark:custom_chest_9",
	"quark:hopper",
	"quark:dispenser",
	"quark:repeater",
	"quark:purple_shulker_box",
	"thermalfoundation:diamond_horse_armor",
	"thermalfoundation:gold_horse_armor",
	"thermalfoundation:iron_horse_armor",
	"natura:tools/entities/imp_leather_helmet",
	"natura:tools/entities/imp_leather_chestplate",
	"natura:tools/entities/imp_leather_leggings",
	"natura:tools/entities/imp_leather_boots",
	"natura:common/glass_bottle",
	"appliedenergistics2:misc/grindstone_woodengear",
	"immersiveengineering:treated_wood/treated_wood_cycle.*",
	"immersiveengineering:stone_decoration/.*._slab_back",
	"immersiveengineering:stone_decoration/concrete_tile_uncraft",
	"thermalfoundation:diamond",
	"endercore:slabstone_to_stone",
	"botania:terrasteelhelmreveal",
	"techreborn:cable_4",
	"techreborn:cable_5",
	"techreborn:cable_7",
	"techreborn:cable_9",
	"techreborn:solar_panel_1",
	"techreborn:solar_panel_3",
	"techreborn:solar_panel_5",
	"techreborn:solar_panel_7",
	"techreborn:diamond",
	"techreborn:iron_furnace",
	"enderore:pearl",
	"tconstruct:gadgets/slime_boots_fallback",
	"thermalfoundation:dye",
	"thermalfoundation:diamond_1",
	"thermalfoundation:emerald_1",
	"thermalfoundation:coal_1",
	"unidict:gemperidot_x2.*",
	"unidict:gemruby_x2.*",
	"unidict:gemsapphire_x2.*",
	"unidict:stickiron.*",
	"unidict:blockcharcoal.*",
	"unidict:ingotiron.*",
	"chisel:charcoal_uncraft"
] as string[] {
	Disabling.markForRemove(recipe);
}

val furnaceRemoveItems as IItemStack[] = [
	<minecraft:leather>,/*<abyssalcraft:ingotnugget>,<abyssalcraft:ingotnugget:1>,<abyssalcraft:ingotnugget:2>,<abyssalcraft:ingotnugget:3>,*/<primal:diamond_plate>,<primal:obsidian_plate>,<natura:nether_glass>,<minecraft:brick>,<minecraft:coal:1>,<tconstruct:materials>
];

for item in furnaceRemoveItems {
	furnace.remove(item);
}
furnace.remove(<primal:soulglass>, <ore:glass>);

mods.ltt.LootTable.removeItem("astralsorcery:chest_shrine", "astralsorcery:chest_shrine", "minecraft:iron_ingot");
mods.ltt.LootTable.removeItem("iceandfire:fire_dragon_cave", "fire_dragon_cave", "minecraft:iron_ingot");
mods.ltt.LootTable.removeItem("iceandfire:ice_dragon_cave", "ice_dragon_cave", "minecraft:iron_ingot");
mods.ltt.LootTable.removeItem("minecraft:chests/village_blacksmith", "main", "minecraft:iron_ingot");

Disabling.removeRecipes();