
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val builder = builderMage.builder();

builder
	.setCopy(Copy.byName("waystones:waystone"))
	.addTool(art_tools.grimoire, 125)
	.addTool(art_tools.chisel, 70)
	.setMinimumTier(1)
	.create();
	
builderMage.convertRecipe("waystones:return_scroll", art_tools.grimoire, 15);

val pearl = <ore:manaPearl>;
val crystal = <thaumcraft:crystal_essence>.withTag({Aspects:[{amount:1,key:"ordo"}]});
builder
	.setCopy(Copy.byName("waystones:warp_stone")
				 .replaceInput(<minecraft:emerald>, <enderio:item_material:16>)
				 .replaceInput(<minecraft:ender_pearl>, pearl)
				 .replaceInput(<ore:dyePurple>, crystal))
	.addTool(art_tools.grimoire, 50)
	.create();	
builder
	.setCopy(Copy.byName("waystones:warp_scroll")
				 .replaceInput(<minecraft:ender_pearl>, pearl)
				 .replaceInput(<ore:dyePurple>, crystal))
	.addTool(art_tools.grimoire, 35)
	.create();

for recipe in [
	"waystones:waystone",
	"waystones:warp_stone",
	"waystones:warp_scroll"
] as string[] {
	Disabling.markForRemove(recipe);
}

val slab = <thaumcraft:slab_arcane_stone>;

val altarsBotania as IIngredient[IItemStack] = {
	<botania:altar> : <thaumcraft:stone_arcane>,
	<botania:altar:1> : <botania:biomestonea:8>,
	<botania:altar:2> : <botania:biomestonea:9>,
	<botania:altar:3> : <botania:biomestonea:10>,
	<botania:altar:4> : <botania:biomestonea:11>,
	<botania:altar:5> : <botania:biomestonea:12>,
	<botania:altar:6> : <botania:biomestonea:13>,
	<botania:altar:7> : <botania:biomestonea:14>,
	<botania:altar:8> : <botania:biomestonea:15>
};

for altar, stone in altarsBotania {
	Disabling.markForRemove(altar);
	builder
		.setShaped([
			[slab,petal,slab],
			[null,stone,null],
			[stone,stone,stone]
		])
		.addOutput(altar)
		.addTool(art_tools.chisel, 15)
		.create();
}
val magic_cloth = <thaumcraft:fabric>;
val mana_string = <botania:manaresource:16>;
Disabling.markForRemove(<botania:manaresource:22>);
builder
	.setShaped([
		[null,mana_string,null],
		[mana_string,magic_cloth,mana_string],
		[null,mana_string,null]
	])
	.addOutput(<botania:manaresource:22>)
	.addTool(art_tools.grimoire, 15)
	.create();
	
val cloaksBotania as IIngredient[IItemStack] = {
	<botania:holycloak> : <ore:quartzSunny>,
	<botania:unholycloak> : <ore:quartzDark>,
	<botania:balancecloak> : <ore:gemQuartz>
};

for cloak, quartz in cloaksBotania {
	builder
		.setCopy(Copy.byOutput([cloak])
					 .replaceShapedInput(1, 0, magic_cloth)
					 .replaceShapedInput(1, 1, magic_cloth)
					 .replaceShapedInput(0, 0, quartz)
					 .replaceShapedInput(2, 0, quartz))
		.addTool(art_tools.grimoire, 50)
		.addTool(art_tools.needle, 35)
		.setMinimumTier(1)
		.create();
	Disabling.markForRemove(cloak);
}
val gem_astral = <astralsorcery:itemcraftingcomponent:4>;
val manapearl = <botania:manaresource:1>;
val managlass = <botania:managlass>;
Disabling.markForRemove(<botania:invisibilitycloak>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<botania:invisibilitycloak>, 300, 300, [
	gem_astral,magic_cloth,gem_astral,
	managlass,magic_cloth,managlass,
	managlass,manapearl,managlass
]);

val lens = <astralsorcery:itemcraftingcomponent:3>;
builder
	.setCopy(Copy.byName("botania:lens_0_glass_pane")
				 .replaceInput(<ore:paneGlassColorless>, lens))
	.addTool(art_tools.grimoire, 18)
	.create();
Disabling.markForRemove(<botania:lens>);

val focus = <thaumcraft:focus_2>;
val fiery_tears = <twilightforest:fiery_tears>;
val blood_gem = <bloodmagic:activation_crystal>;
val ingot_octine = <ore:ingotOctine>;
val base = <minecraft:enchanting_table>;
Disabling.markForRemove(<chickenchunks:chunk_loader>);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(<chickenchunks:chunk_loader>, 700, 500, [
	ingot_octine,focus,ingot_octine,
	fiery_tears,base,fiery_tears,
	ingot_octine,blood_gem,ingot_octine,
	gem_astral,gem_astral,gem_astral,gem_astral
]);
builderMage.convertRecipe("chickenchunks:spot_loader", art_tools.athame, 50);

builderMage.convertRecipe("enderstorage:ender_chest", art_tools.grimoire, 35);
builderMage.convertRecipe("enderstorage:ender_tank", art_tools.grimoire, 35);
builderMage.convertRecipe("enderstorage:ender_pouch", art_tools.grimoire, 24);

val arcane_stone = <thaumcraft:stone_arcane>;
val blood_orb = <bloodmagic:blood_orb>.withTag({orb:"bloodmagic:weak"}).reuse() |
				<bloodmagic:blood_orb>.withTag({orb:"bloodmagic:apprentice"}).reuse() |
				<bloodmagic:blood_orb>.withTag({orb:"bloodmagic:magician"}).reuse() |
				<bloodmagic:blood_orb>.withTag({orb:"bloodmagic:master"}).reuse() |
				<bloodmagic:blood_orb>.withTag({orb:"bloodmagic:archmage"}).reuse() |
				<bloodmagic:blood_orb>.withTag({orb:"bloodmagic:transcendent"}).reuse();

val recipesWithStone as int[string] = {
	"bloodmagic:altar" : 13,
	"bloodmagic:blood_rune/blood_rune_blank" : 3,
	"bloodmagic:blood_rune/blood_rune_orb" : 3,
	"bloodmagic:incense_altar" : 13,
	"bloodmagic:alchemy_table" : 16,
	"bloodmagic:ritual_controller_imperfect" : 6
};

for recipe, dmg in recipesWithStone {
	builder
		.setCopy(Copy.byName(recipe)
					 .replaceInput(<ore:stone>, arcane_stone))
		.addTool(art_tools.athame, dmg)
		.create();
	Disabling.markForRemove(recipe);
}
builder
	.setCopy(Copy.byName("bloodmagic:soul_forge")
				 .replaceInput(<ore:stone>, arcane_stone)
				 .replaceShapedInput(1, 0, blood_orb))
	.addTool(art_tools.athame, 13)
	.create();
Disabling.markForRemove("bloodmagic:soul_forge");