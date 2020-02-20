
#priority 1200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.globals.classes.Disabling.class.CDisabling;

global Disabling as CDisabling = CDisabling();

global item_bone as IItemStack = <minecraft:bone>;
global item_cane as IItemStack = <minecraft:reeds>;
global item_charcoal as IItemStack = <minecraft:coal:1>;
global item_clayball as IItemStack = <minecraft:clay_ball>;
global item_coal as IItemStack = <minecraft:coal>;
global item_cobblestone as IItemStack = <minecraft:cobblestone>;
global item_diamond as IItemStack = <minecraft:diamond>;
global item_emerald as IItemStack = <minecraft:emerald>;
global item_flint as IItemStack = <minecraft:flint>;
global item_leather as IItemStack = <minecraft:leather>;
global item_redstone as IItemStack = <minecraft:redstone>;
global item_stone as IItemStack = <minecraft:stone>;
global item_string as IItemStack = <minecraft:string>;
global item_wool as IItemStack = <minecraft:wool>;
global item_paper as IItemStack = <minecraft:paper>;
global item_stick as IItemStack = <minecraft:stick>;
global item_bread as IItemStack = <minecraft:bread>;
global item_book as IItemStack = <minecraft:book>;
global item_dust_wood as IItemStack = <mekanism:sawdust>;
global item_gravel as IItemStack = <minecraft:gravel>;

global ore_cordage as IOreDictEntry = <ore:cordageGeneral>;
global ore_log as IOreDictEntry = <ore:logWood>;
global ore_plank as IOreDictEntry = <ore:plankWood>;
global ore_shears as IOreDictEntry = <ore:shears>;
global ore_slag as IOreDictEntry = <ore:itemSlag>;
global ore_stick as IOreDictEntry = <ore:stickWood>;
global ore_stick_iron as IOreDictEntry = <ore:stickIron>;
global ore_string as IOreDictEntry = <ore:string>;
global ore_wool as IOreDictEntry = <ore:wool>;
global ore_ingot_iron as IOreDictEntry = <ore:ingotIron>;
global ore_ingot_gold as IOreDictEntry = <ore:ingotGold>;
global ore_ring_iron as IOreDictEntry = <ore:ringIron>;
global ore_strand_iron as IOreDictEntry = <ore:strandIron>;
global ore_pin_iron as IOreDictEntry = <ore:pinIron>;
global ore_slat_iron as IOreDictEntry = <ore:slatIron>;
global ore_plate_iron as IOreDictEntry = <ore:plateIron>;
global ore_leather as IOreDictEntry = <ore:leather>;
global ore_rock as IOreDictEntry = <ore:rock>;
global ore_dust_wood as IOreDictEntry = <ore:dustWood>;
global ore_flour as IOreDictEntry = <ore:foodFlour>;
global ore_salt as IOreDictEntry = <ore:foodSalt>;
global ore_tool_hammer as IOreDictEntry = <ore:toolHammer>;
global ore_tool_saw as IOreDictEntry = <ore:toolSaw>;
global ore_clay as IOreDictEntry = <ore:clayball>;
global ore_cobblestone as IOreDictEntry = <ore:cobblestone>;
global ore_diamond as IOreDictEntry = <ore:gemDiamond>;
global ore_mortar as IOreDictEntry = <ore:mortar>;
global ore_rod_stone as IOreDictEntry = <ore:rodStone>;
global stone_basin as IOreDictEntry = <ore:toolBasinStone>;
global ore_redstone as IOreDictEntry = <ore:dustRedstone>;
global ore_paper as IOreDictEntry = <ore:paper>;

global colors as string[] = [
	"white",
	"orange",
	"magenta",
	"light_blue",
	"yellow",
	"lime",
	"pink",
	"gray",
	"light_gray",
	"cyan",
	"purple",
	"blue",
	"brown",
	"green",
	"red",
	"black"
];



global oreDyes as IOreDictEntry[string][string] = {
	"white": {
		  dye: <ore:dyeWhite>,
		plant: <ore:plantWhite>
	},
	"orange": {
		  dye: <ore:dyeOrange>,
		plant: <ore:plantOrange>
	},
	"magenta": {
		  dye: <ore:dyeMagenta>,
		plant: <ore:plantMagenta>
	},
	"light_blue": {
		  dye: <ore:dyeLightBlue>,
		plant: <ore:plantLightBlue>
	},
	"yellow": {
		  dye: <ore:dyeYellow>,
		plant: <ore:plantYellow>
	},
	"lime": {
		  dye: <ore:dyeLime>,
		plant: <ore:plantLime>
	},
	"pink": {
		  dye: <ore:dyePink>,
		plant: <ore:plantPink>
	},
	"gray": {
		  dye: <ore:dyeGray>,
		plant: <ore:plantGray>
	},
	"light_gray": {
		  dye: <ore:dyeLightGray>,
		plant: <ore:plantLightGray>
	},
	"cyan": {
		  dye: <ore:dyeCyan>,
		plant: <ore:plantCyan>
	},
	"purple": {
		  dye: <ore:dyePurple>,
		plant: <ore:plantPurple>
	},
	"blue": {
		  dye: <ore:dyeBlue>,
		plant: <ore:plantBlue>
	},
	"brown": {
		  dye: <ore:dyeBrown>,
		plant: <ore:plantBrown>
	},
	"green": {
		  dye: <ore:dyeGreen>,
		plant: <ore:plantGreen>
	},
	"red": {
		  dye: <ore:dyeRed>,
		plant: <ore:plantRed>
	},
	"black": {
		  dye: <ore:dyeBlack>,
		plant: <ore:plantBlack>
	}
};

global petal as IIngredient = <ore:petalWhite> |
							  <ore:petalOrange> |
							  <ore:petalMagenta> |
							  <ore:petalLightBlue> |
							  <ore:petalYellow> |
							  <ore:petalLime> |
							  <ore:petalPink> |
							  <ore:petalGray> |
							  <ore:petalLightGray> |
							  <ore:petalCyan> |
							  <ore:petalPurple> |
							  <ore:petalBlue> |
							  <ore:petalBrown> |
							  <ore:petalGreen> |
							  <ore:petalRed> |
							  <ore:petalBlack>;