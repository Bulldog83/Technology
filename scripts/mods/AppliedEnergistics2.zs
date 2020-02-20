
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.Copy;

val engineerBuilder = builderEngineer.builder();

val logic_proc = <appliedenergistics2:material:22>;
val calc_proc = <appliedenergistics2:material:23>;
val eng_proc = <appliedenergistics2:material:24>;
val plate_lapis = <ore:plateLazurite>;
val core_forming = <appliedenergistics2:material:43>;
val core_destruct = <appliedenergistics2:material:44>;
val dust_lapis = <ore:dustLapis>;
val dust_sulfur = <ore:dustSulfur>;
val light_panel = <ore:itemIlluminatedPanel>;
val apli_interface = <appliedenergistics2:interface> | <appliedenergistics2:part:440>;
val quartz_certus = <appliedenergistics2:material> | <appliedenergistics2:material:1> | <appliedenergistics2:material:10>;
val quartz_glass = <appliedenergistics2:quartz_glass>;

val piston as IIngredient[string] = {
	normal : <minecraft:piston>,
	sticky : <minecraft:sticky_piston>
};


engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/planes_annihilation_fluid_alt")
				 .replaceInput(<ore:dyeBlue>, plate_lapis))
	.addTool(art_tools.driver, 18)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/planes_formation_fluid_alt")
				 .replaceInput(<ore:dyeBlue>, plate_lapis))
	.addTool(art_tools.driver, 18)
	.create();
engineerBuilder
	.setCopy(Copy.byName("appliedenergistics2:network/parts/fluid_level_emitter")
				 .replaceInput(<ore:dyeBlue>, dust_lapis))
	.addTool(art_tools.driver, 6)
	.create();

engineerBuilder
	.setShaped([
		[null,dust_lapis,null],
		[piston.normal,apli_interface,piston.sticky],
		[null,dust_lapis,null]
	])
	.addOutput(<appliedenergistics2:part:221>)
	.addTool(art_tools.driver, 10)
	.create();
engineerBuilder
	.setShaped([
		[null,dust_sulfur,null],
		[piston.normal,apli_interface,piston.sticky],
		[null,dust_sulfur,null]
	])
	.addOutput(<extracells:part.base:16>)
	.addTool(art_tools.driver, 10)
	.create();
engineerBuilder
	.setShaped([
		[core_forming,light_panel,core_destruct],
		[plate_lapis,logic_proc,plate_lapis]
	])
	.addOutput(<appliedenergistics2:part:520>)
	.addTool(art_tools.driver, 16)
	.create();
engineerBuilder
	.setShaped([
		[core_forming,light_panel,core_destruct],
		[dust_sulfur,logic_proc,dust_sulfur]
	])
	.addOutput(<extracells:part.base:15>)
	.addTool(art_tools.driver, 16)
	.create();
engineerBuilder
	.setShaped([
		[null,<appliedenergistics2:part:280>,null],
		[dust_lapis,light_panel,dust_lapis]
	])
	.addOutput(<extracells:part.base:10>)
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setShaped([
		[core_forming,<extracells:part.base:10>,core_destruct]
	])
	.addOutput(<extracells:part.base:11>)
	.addTool(art_tools.driver, 6)
	.create();
engineerBuilder
	.setShaped([
		[null,<appliedenergistics2:part:280>,null],
		[dust_sulfur,light_panel,dust_sulfur]
	])
	.addOutput(<extracells:part.base:18>)
	.addTool(art_tools.driver, 8)
	.create();
engineerBuilder
	.setShaped([
		[core_forming,<extracells:part.base:18>,core_destruct]
	])
	.addOutput(<extracells:part.base:19>)
	.addTool(art_tools.driver, 6)
	.create();

val fluid_component_1k = <appliedenergistics2:material:54>;
val fluid_component_4k = <appliedenergistics2:material:55>;
val fluid_component_16k = <appliedenergistics2:material:56>;
val fluid_component_64k = <appliedenergistics2:material:57>;
val fluid_component_256k = <extracells:storage.component:8>;
val fluid_component_1024k = <extracells:storage.component:9>;
val fluid_component_4096k = <extracells:storage.component:10>;

val gas_component_1k = <extracells:storage.component:11>;
val gas_component_4k = <extracells:storage.component:12>;
val gas_component_16k = <extracells:storage.component:13>;
val gas_component_64k = <extracells:storage.component:14>;
val gas_component_256k = <extracells:storage.component:15>;
val gas_component_1024k = <extracells:storage.component:16>;
val gas_component_4096k = <extracells:storage.component:17>;
	
recipes.addShaped("fluid_storage_component_1k", fluid_component_1k, [
	[dust_lapis,quartz_certus,dust_lapis],
	[quartz_certus,logic_proc,quartz_certus],
	[dust_lapis,quartz_certus,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_4k", fluid_component_4k, [
	[dust_lapis,calc_proc,dust_lapis],
	[fluid_component_1k,quartz_glass,fluid_component_1k],
	[dust_lapis,fluid_component_1k,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_16k", fluid_component_16k, [
	[dust_lapis,eng_proc,dust_lapis],
	[fluid_component_4k,quartz_glass,fluid_component_4k],
	[dust_lapis,fluid_component_4k,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_64k", fluid_component_64k, [
	[dust_lapis,eng_proc,dust_lapis],
	[fluid_component_16k,quartz_glass,fluid_component_16k],
	[dust_lapis,fluid_component_16k,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_256k", fluid_component_256k, [
	[dust_lapis,eng_proc,dust_lapis],
	[fluid_component_64k,logic_proc,fluid_component_64k],
	[dust_lapis,fluid_component_64k,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_1024k", fluid_component_1024k, [
	[dust_lapis,eng_proc,dust_lapis],
	[fluid_component_256k,logic_proc,fluid_component_256k],
	[dust_lapis,fluid_component_256k,dust_lapis]
]);
recipes.addShaped("fluid_storage_component_4096k", fluid_component_4096k, [
	[dust_lapis,eng_proc,dust_lapis],
	[fluid_component_1024k,logic_proc,fluid_component_1024k],
	[dust_lapis,fluid_component_1024k,dust_lapis]
]);

recipes.addShaped("gas_storage_component_1k", gas_component_1k, [
	[dust_sulfur,quartz_certus,dust_sulfur],
	[quartz_certus,logic_proc,quartz_certus],
	[dust_sulfur,quartz_certus,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_4k", gas_component_4k, [
	[dust_sulfur,calc_proc,dust_sulfur],
	[gas_component_1k,quartz_glass,gas_component_1k],
	[dust_sulfur,gas_component_1k,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_16k", gas_component_16k, [
	[dust_sulfur,eng_proc,dust_sulfur],
	[gas_component_4k,quartz_glass,gas_component_4k],
	[dust_sulfur,gas_component_4k,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_64k", gas_component_64k, [
	[dust_sulfur,eng_proc,dust_sulfur],
	[gas_component_16k,quartz_glass,gas_component_16k],
	[dust_sulfur,gas_component_16k,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_256k", gas_component_256k, [
	[dust_sulfur,eng_proc,dust_sulfur],
	[gas_component_64k,logic_proc,gas_component_64k],
	[dust_sulfur,gas_component_64k,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_1024k", gas_component_1024k, [
	[dust_sulfur,eng_proc,dust_sulfur],
	[gas_component_256k,logic_proc,gas_component_256k],
	[dust_sulfur,gas_component_256k,dust_sulfur]
]);
recipes.addShaped("gas_storage_component_4096k", gas_component_4096k, [
	[dust_sulfur,eng_proc,dust_sulfur],
	[gas_component_1024k,logic_proc,gas_component_1024k],
	[dust_sulfur,gas_component_1024k,dust_sulfur]
]);
	
val replaceInput as string[][IIngredient][IIngredient] = {
	<ore:dyeBlue> : { 
		<ore:dustLapis> : [
			"extracells:parts/normal/fluidannihilationplane",
			"extracells:parts/normal/fluidformationplane"
		]
	},
	<ore:dyeYellow> : {
		<ore:dustSulfur> : [
			"extracells:parts/normal/gaslevelemitter"	
		]
	}
};

for dye, replacement in replaceInput {
	for dust, names in replacement {
		for recipe in names {
			engineerBuilder
				.setCopy(Copy.byName(recipe)
							 .replaceInput(dye, dust))
				.addTool(art_tools.driver, 6)
				.create();
			Disabling.markForRemove(recipe);
		}
	}
}

for item in [
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:chest>,
	<extracells:part.base:10>,
	<extracells:part.base:11>,
	<extracells:part.base:13>,
	<extracells:part.base:14>,
	<extracells:part.base:15>,
	<extracells:part.base:16>,
	<extracells:part.base:18>,
	<extracells:part.base:19>,
	<extracells:storage.component:8>,
	<extracells:storage.component:9>,
	<extracells:storage.component:10>,
	<extracells:storage.component:11>,
	<extracells:storage.component:12>,
	<extracells:storage.component:13>,
	<extracells:storage.component:14>,
	<extracells:storage.component:15>,
	<extracells:storage.component:16>,
	<extracells:storage.component:17>
] as IItemStack[] {
	Disabling.markForRemove(item);
}

for recipe in [
	"appliedenergistics2:network/blocks/interfaces_interface",
	"appliedenergistics2:network/blocks/fluid_interfaces_interface",
	"appliedenergistics2:network/parts/export_bus",
	"appliedenergistics2:network/parts/export_bus_fluid",
	"appliedenergistics2:network/parts/storage_bus_fluid",
	"appliedenergistics2:network/parts/terminals_fluid",
	"appliedenergistics2:network/parts/import_bus",
	"appliedenergistics2:network/parts/import_bus_fluid",
	"appliedenergistics2:network/parts/planes_annihilation_fluid",
	"appliedenergistics2:network/parts/planes_annihilation_fluid_alt",
	"appliedenergistics2:network/parts/planes_formation_fluid",
	"appliedenergistics2:network/parts/planes_formation_fluid_alt",
	"appliedenergistics2:network/parts/fluid_level_emitter",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_1k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_4k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_16k_part",
	"appliedenergistics2:network/cells/fluid_storage_components_cell_64k_part",
	"extracells:parts/fluidterminal",
	"extracells:misc/interface",
	"wct:magnet_card"
] as string[] {
	Disabling.markForRemove(recipe);
}

Disabling.removeRecipes();