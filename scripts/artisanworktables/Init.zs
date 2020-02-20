
#priority 1000

import crafttweaker.item.IIngredient;

import scripts.globals.classes.ArtisanBuilder.class.ArtisanBuilder;

global builderBasic as ArtisanBuilder = ArtisanBuilder("basic");
global builderCarpenter as ArtisanBuilder = ArtisanBuilder("carpenter");
global builderBlacksmith as ArtisanBuilder = ArtisanBuilder("blacksmith");
global builderChef as ArtisanBuilder = ArtisanBuilder("chef");
global builderChemist as ArtisanBuilder = ArtisanBuilder("chemist");
global builderEngineer as ArtisanBuilder = ArtisanBuilder("engineer");
global builderMage as ArtisanBuilder = ArtisanBuilder("mage");
global builderTanner as ArtisanBuilder = ArtisanBuilder("tanner");
global builderDesigner as ArtisanBuilder = ArtisanBuilder("designer");
global builderMason as ArtisanBuilder = ArtisanBuilder("mason");

global art_tools as IIngredient[string] = {
	"cutters" : <ore:artisansCutters> | <ore:toolClippers> | <immersiveengineering:tool:1>,
	"hammer" : <ore:artisansHammer> | <ore:toolHammer>,
	"framing_hammer" : <ore:artisansFramingHammer>,
	"handsaw" : <ore:artisansHandsaw> | <ore:toolSaw>,
	"driver" : <ore:artisansDriver>,
	"spanner" : <ore:artisansSpanner>,
	"gemcutter" : <ore:artisansGemCutter>,
	"pliers" : <ore:artisansPliers>,
	"athame" : <ore:artisansAthame>,
	"grimoire" : <ore:artisansGrimoire>,
	"chisel" : <ore:artisansChisel>,
	"trowel" : <ore:artisansTrowel>,
	"needle" : <ore:artisansNeedle>,
	"shears" : <ore:artisansShears> | <ore:shears>,
	"beaker" : <ore:artisansBeaker>,
	"burner" : <ore:artisansBurner>,
	"quill" : <ore:artisansQuill>,
	"compass" : <ore:artisansCompass>,
	"cutting_board" : <ore:artisansCuttingBoard>,
	"pan" : <ore:artisansPan>,
	"lens" : <ore:artisansLens>,
	"sifter" : <ore:artisansSifter>,
	"knife" : <ore:artisansKnife>,
	"punch" : <ore:artisansPunch>,
	"mortar" : <ore:artisansMortar> | <botania:pestleandmortar>,
	"razor" : <ore:artisansRazor>,
	"carver" : <ore:artisansCarver>,
	"workblade" : <ore:toolWorkBlade>
};