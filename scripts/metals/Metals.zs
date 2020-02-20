
#priority 1200

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

global metalItems as IItemStack[string][string] = {
	"iron" : {
		"ore" : <minecraft:iron_ore>,
		"dust" : <techreborn:dust:27>,
		"nugget" : <minecraft:iron_nugget>,
		"ingot" : <minecraft:iron_ingot>,
		"block" : <minecraft:iron_block>,
		"plate" : <thermalfoundation:material:32>,
		"gear" : <thermalfoundation:material:24>,
		"stick" : <camping:parts:1>,
		"coin" : <thermalfoundation:coin>
	},
	"gold" : {
		"ore" : <minecraft:gold_ore>,
		"dust" : <thermalfoundation:material:1>,
		"nugget" : <minecraft:gold_nugget>,
		"ingot" : <minecraft:gold_ingot>,
		"block" : <minecraft:gold_block>,
		"plate" : <thermalfoundation:material:33>,
		"gear" : <thermalfoundation:material:25>,
		"coin" : <thermalfoundation:coin:1>
	},
	"manasteel" : {
		"nugget" : <botania:manaresource:17>,
		"ingot" : <botania:manaresource>,
		"block" : <botania:storage>
	},
	"terrasteel" : {
		"nugget" : <botania:manaresource:18>,
		"ingot" : <botania:manaresource:4>,
		"block" : <botania:storage:1>
	},
	"elementium" : {
		"nugget" : <botania:manaresource:19>,
		"ingot" : <botania:manaresource:7>,
		"block" : <botania:storage:2>
	},
	"electrical_steel" : {
		"nugget" : <enderio:item_alloy_nugget>,
		"ingot" : <enderio:item_alloy_ingot>,
		"block" : <enderio:block_alloy>,
		"gem" : <enderio:item_alloy_ball>
	},
	"energetic_alloy" : {
		"nugget" : <enderio:item_alloy_nugget:1>,
		"ingot" : <enderio:item_alloy_ingot:1>,
		"block" : <enderio:block_alloy:1>,
		"gem" : <enderio:item_alloy_ball:1>
	},
	"vibrant_alloy" : {
		"nugget" : <enderio:item_alloy_nugget:2>,
		"ingot" : <enderio:item_alloy_ingot:2>,
		"block" : <enderio:block_alloy:2>,
		"gem" : <enderio:item_alloy_ball:2>
	},
	"redstone_alloy" : {
		"nugget" : <enderio:item_alloy_nugget:3>,
		"ingot" : <enderio:item_alloy_ingot:3>,
		"block" : <enderio:block_alloy:3>,
		"gem" : <enderio:item_alloy_ball:3>
	},
	"conductive_iron" : {
		"nugget" : <enderio:item_alloy_nugget:4>,
		"ingot" : <enderio:item_alloy_ingot:4>,
		"block" : <enderio:block_alloy:4>,
		"gem" : <enderio:item_alloy_ball:4>
	},
	"pulsating_iron" : {
		"nugget" : <enderio:item_alloy_nugget:5>,
		"ingot" : <enderio:item_alloy_ingot:5>,
		"block" : <enderio:block_alloy:5>,
		"gem" : <enderio:item_alloy_ball:5>
	},
	"dark_steel" : {
		"nugget" : <enderio:item_alloy_nugget:6>,
		"ingot" : <enderio:item_alloy_ingot:6>,
		"block" : <enderio:block_alloy:6>,
		"gem" : <enderio:item_alloy_ball:6>
	},
	"soularium" : {
		"dust" : <enderio:item_material:74>,
		"nugget" : <enderio:item_alloy_nugget:7>,
		"ingot" : <enderio:item_alloy_ingot:7>,
		"block" : <enderio:block_alloy:7>,
		"gem" : <enderio:item_alloy_ball:7>
	},
	"end_steel" : {
		"nugget" : <enderio:item_alloy_nugget:8>,
		"ingot" : <enderio:item_alloy_ingot:8>,
		"block" : <enderio:block_alloy:8>,
		"gem" : <enderio:item_alloy_ball:8>
	},
	"tritanium" : {
		"ore" : <matteroverdrive:tritanium_ore>,
		"dust" : <matteroverdrive:tritanium_dust>,
		"nugget" : <matteroverdrive:tritanium_nugget>,
		"ingot" : <matteroverdrive:tritanium_ingot>,
		"block" : <matteroverdrive:tritanium_block>,
		"plate" : <matteroverdrive:tritanium_plate>
	},
	"thorium" : {
		"ore" : <nuclearcraft:ore:3>,
		"dust" : <nuclearcraft:dust:3>,
		"ingot" : <nuclearcraft:ingot:3>,
		"block" : <nuclearcraft:ingot_block:3>
	},
	"boron" : {
		"ore" : <nuclearcraft:ore:5>,
		"dust" : <nuclearcraft:dust:5>,
		"ingot" : <nuclearcraft:ingot:5>,
		"block" : <nuclearcraft:ingot_block:5>
	},
	"lithium" : {
		"ore" : <nuclearcraft:ore:6>,
		"dust" : <nuclearcraft:dust:6>,
		"ingot" : <nuclearcraft:ingot:6>,
		"block" : <nuclearcraft:ingot_block:6>
	},
	"magnesium" : {
		"ore" : <nuclearcraft:ore:7>,
		"dust" : <techreborn:dust:30>,
		"ingot" : <nuclearcraft:ingot:7>,
		"block" : <nuclearcraft:ingot_block:7>
	},
	"graphite" : {
		"dust" : <nuclearcraft:dust:8>,
		"ingot" : <nuclearcraft:ingot:8>,
		"block" : <nuclearcraft:ingot_block:8>
	},
	"beryllium" : {
		"dust" : <nuclearcraft:dust:9>,
		"ingot" : <nuclearcraft:ingot:9>,
		"block" : <nuclearcraft:ingot_block:9>
	},
	"zirconium" : {
		"dust" : <nuclearcraft:dust:10>,
		"ingot" : <nuclearcraft:ingot:10>,
		"block" : <nuclearcraft:ingot_block:10>
	},
	"tough" : {
		"ingot" : <nuclearcraft:alloy:1>
	},
	"hard_carbon" : {
		"ingot" : <nuclearcraft:alloy:2>
	},
	"ferroboron" : {
		"ingot" : <nuclearcraft:alloy:6>
	},
	"aluminum" : {
		"ore" : <thermalfoundation:ore:4>,
		"dust" : <thermalfoundation:material:68>,
		"nugget" : <techreborn:nuggets>,
		"ingot" : <thermalfoundation:material:132>,
		"block" : <techreborn:storage:1>,
		"plate" : <thermalfoundation:material:324>,
		"gear" : <thermalfoundation:material:260>,
		"stick" : <immersiveengineering:material:3>,
		"coin" : <thermalfoundation:coin:68>
	},
	"brass" : {
		"dust" : <techreborn:dust:6>,
		"nugget" : <techreborn:nuggets:1>,
		"ingot" : <techreborn:ingot:1>,
		"block" : <tconstruct:metal:5>,
		"plate" : <techreborn:plates:17>
	},
	"bronze" : {
		"dust" : <thermalfoundation:material:99>,
		"nugget" : <thermalfoundation:material:227>,
		"ingot" : <thermalfoundation:material:163>,
		"block" : <thermalfoundation:storage_alloy:3>,
		"plate" : <thermalfoundation:material:355>,
		"gear" : <thermalfoundation:material:291>,
		"coin" : <thermalfoundation:coin:99>
	},
	"chrome" : {
		"dust" : <techreborn:dust:10>,
		"nugget" : <techreborn:nuggets:3>,
		"ingot" : <techreborn:ingot:3>,
		"block" : <techreborn:storage:3>,
		"plate" : <techreborn:plates:19>
	},
	"copper" : {
		"ore" : <techreborn:ore2>,
		"dust" : <thermalfoundation:material:64>,
		"nugget" : <thermalfoundation:material:192>,
		"ingot" : <thermalfoundation:material:128>,
		"block" : <thermalfoundation:storage>,
		"plate" : <thermalfoundation:material:320>,
		"gear" : <thermalfoundation:material:256>,
		"coin" : <thermalfoundation:coin:64>
	},
	"electrum" : {
		"dust" : <thermalfoundation:material:97>,
		"nugget" : <thermalfoundation:material:225>,
		"ingot" : <thermalfoundation:material:161>,
		"block" : <thermalfoundation:storage:1>,
		"plate" : <thermalfoundation:material:353>,
		"gear" : <thermalfoundation:material:289>,
		"coin" : <thermalfoundation:coin:97>
	},
	"invar" : {
		"dust" : <techreborn:dust:26>,
		"nugget" : <techreborn:nuggets:6>,
		"ingot" : <thermalfoundation:material:162>,
		"block" : <thermalfoundation:storage_alloy:2>,
		"plate" : <thermalfoundation:material:354>,
		"gear" : <thermalfoundation:material:290>,
		"coin" : <thermalfoundation:coin:98>
	},
	"iridium" : {
		"ore" : <thermalfoundation:ore:7>,
		"dust" : <thermalfoundation:material:71>,
		"nugget" : <thermalfoundation:material:199>,
		"ingot" : <thermalfoundation:material:135>,
		"block" : <techreborn:storage:13>,
		"plate" : <thermalfoundation:material:327>,
		"gear" : <thermalfoundation:material:263>,
		"coin" : <thermalfoundation:coin:71>
	},
	"lead" : {
		"ore" : <techreborn:ore:12>,
		"dust" : <techreborn:dust:29>,
		"nugget" : <techreborn:nuggets:8>,
		"ingot" : <techreborn:ingot:8>,
		"block" : <techreborn:storage:6>,
		"plate" : <techreborn:plates:24>,
		"gear" : <thermalfoundation:material:259>,
		"coin" : <thermalfoundation:coin:67>
	},
	"nickel" : {
		"ore" : <thermalfoundation:ore:5>,
		"dust" : <thermalfoundation:material:69>,
		"nugget" : <thermalfoundation:material:197>,
		"ingot" : <thermalfoundation:material:133>,
		"block" : <thermalfoundation:storage:5>,
		"plate" : <thermalfoundation:material:325>,
		"gear" : <thermalfoundation:material:261>,
		"coin" : <thermalfoundation:coin:69>
	},
	"platinum" : {
		"ore" : <thermalfoundation:ore:6>,
		"dust" : <thermalfoundation:material:70>,
		"nugget" : <thermalfoundation:material:198>,
		"ingot" : <thermalfoundation:material:134>,
		"block" : <thermalfoundation:storage:6>,
		"plate" : <thermalfoundation:material:326>,
		"gear" : <thermalfoundation:material:262>,
		"coin" : <thermalfoundation:coin:70>
	},
	"silver" : {
		"ore" : <techreborn:ore:13>,
		"dust" : <thermalfoundation:material:66>,
		"nugget" : <thermalfoundation:material:194>,
		"ingot" : <immersiveengineering:metal:3>,
		"block" : <thermalfoundation:storage:2>,
		"plate" : <thermalfoundation:material:322>,
		"gear" : <thermalfoundation:material:258>,
		"coin" : <thermalfoundation:coin:66>
	},
	"steel" : {
		"dust" : <techreborn:dust:51>,
		"nugget" : <thermalfoundation:material:224>,
		"ingot" : <techreborn:ingot:12>,
		"block" : <thermalfoundation:storage_alloy>,
		"plate" : <thermalfoundation:material:352>,
		"gear" : <thermalfoundation:material:288>,
		"stick" : <immersiveengineering:material:2>,
		"coin" : <thermalfoundation:coin:96>
	},
	"tin" : {
		"ore" : <mekanism:oreblock:2>,
		"dust" : <mekanism:dust:4>,
		"nugget" : <techreborn:nuggets:13>,
		"ingot" : <mekanism:ingot:6>,
		"block" : <mekanism:basicblock:13>,
		"plate" : <techreborn:plates:29>,
		"gear" : <thermalfoundation:material:257>,
		"coin" : <thermalfoundation:coin:65>
	},
	"titanium" : {
		"dust" : <techreborn:dust:54>,
		"nugget" : <techreborn:nuggets:14>,
		"ingot" : <techreborn:ingot:14>,
		"block" : <techreborn:storage:2>,
		"plate" : <techreborn:plates:30>
	},
	"tungsten" : {
		"ore" : <magneticraft:ores:3>,
		"dust" : <techreborn:dust:55>,
		"nugget" : <techreborn:nuggets:15>,
		"ingot" : <techreborn:ingot:15>,
		"block" : <techreborn:storage:10>,
		"plate" : <techreborn:plates:31>
	},
	"tungstensteel" : {
		"nugget" : <techreborn:nuggets:17>,
		"ingot" : <techreborn:ingot:17>,
		"block" : <techreborn:storage2>,
		"plate" : <techreborn:plates:32>
	},
	"zinc" : {
		"dust" : <magneticraft:dusts:14>,
		"nugget" : <techreborn:nuggets:18>,
		"ingot" : <techreborn:ingot:18>,
		"block" : <techreborn:storage:8>,
		"plate" : <techreborn:plates:33>
	},
	"thaumium" : {
		"nugget" : <thaumcraft:nugget:6>,
		"ingot" : <thaumcraft:ingot>,
		"block" : <thaumcraft:metal_thaumium>,
		"plate" : <thaumcraft:plate:2>
	},
	"void" : {
		"nugget" : <thaumcraft:nugget:7>,
		"ingot" : <thaumcraft:ingot:1>,
		"block" : <thaumcraft:metal_void>,
		"plate" : <thaumcraft:plate:3>
	},
	"mithril" : {
		"ore" : <thermalfoundation:ore:8>,
		"dust" : <thermalfoundation:material:72>,
		"nugget" : <thermalfoundation:material:200>,
		"ingot" : <thermalfoundation:material:136>,
		"block" : <thermalfoundation:storage:8>,
		"plate" : <thermalfoundation:material:328>,
		"gear" : <thermalfoundation:material:264>,
		"coin" : <thermalfoundation:coin:72>
	},
	"signalum" : {
		"dust" : <thermalfoundation:material:101>,
		"nugget" : <thermalfoundation:material:229>,
		"ingot" : <thermalfoundation:material:165>,
		"block" : <thermalfoundation:storage_alloy:5>,
		"plate" : <thermalfoundation:material:357>,
		"gear" : <thermalfoundation:material:293>,
		"gem" : <enderio:item_material:57>,
		"coin" : <thermalfoundation:coin:101>
	},
	"lumium" : {
		"dust" : <thermalfoundation:material:102>,
		"nugget" : <thermalfoundation:material:230>,
		"ingot" : <thermalfoundation:material:166>,
		"block" : <thermalfoundation:storage_alloy:6>,
		"plate" : <thermalfoundation:material:358>,
		"gear" : <thermalfoundation:material:294>,
		"gem" : <enderio:item_material:59>,
		"coin" : <thermalfoundation:coin:102>
	},
	"enderium" : {
		"dust" : <thermalfoundation:material:103>,
		"nugget" : <thermalfoundation:material:231>,
		"ingot" : <thermalfoundation:material:167>,
		"block" : <thermalfoundation:storage_alloy:7>,
		"plate" : <thermalfoundation:material:359>,
		"gear" : <thermalfoundation:material:295>,
		"gem" : <enderio:item_material:58>,
		"coin" : <thermalfoundation:coin:103>
	},
	"manyullyn" : {
		"nugget" : <tconstruct:nuggets:2>,
		"ingot" : <tconstruct:ingots:2>,
		"block" : <tconstruct:metal:2>
	},
	"knightslime" : {
		"nugget" : <tconstruct:nuggets:3>,
		"ingot" : <tconstruct:ingots:3>,
		"block" : <tconstruct:metal:3>
	},
	"constantan" : {
		"dust" : <thermalfoundation:material:100>,
		"nugget" : <thermalfoundation:material:228>,
		"ingot" : <thermalfoundation:material:164>,
		"block" : <thermalfoundation:storage_alloy:4>,
		"plate" : <thermalfoundation:material:356>,
		"gear" : <thermalfoundation:material:292>,
		"coin" : <thermalfoundation:coin:100>
	},
	"uranium" : {
		"ore" : <immersiveengineering:ore:5>,
		"dust" : <immersiveengineering:metal:14>,
		"nugget" : <immersiveengineering:metal:25>,
		"ingot" : <immersiveengineering:metal:5>,
		"block" : <immersiveengineering:storage:5>,
		"plate" : <immersiveengineering:metal:35>
	},
	"cobalt" : {
		"ore" : <tconstruct:ore>,
		"dust" : <magneticraft:dusts:4>,
		"nugget" : <tconstruct:nuggets>,
		"ingot" : <magneticraft:ingots:4>,
		"block" : <magneticraft:storage_blocks:2>
	},
	"ardite" : {
		"ore" : <tconstruct:ore:1>,
		"dust" : <enderio:item_material:30>,
		"nugget" : <tconstruct:nuggets:1>,
		"ingot" : <tconstruct:ingots:1>,
		"block" : <tconstruct:metal:1>
	},
	"osmium" : {
		"ore" : <mekanism:oreblock>,
		"dust" : <mekanism:dust:2>,
		"nugget" : <mekanism:nugget:1>,
		"ingot" : <mekanism:ingot:1>,
		"block" : <mekanism:basicblock>
	},
	"octine" : {
		"ore" : <thebetweenlands:octine_ore>,
		"ingot" : <thebetweenlands:octine_ingot>,
		"block" : <thebetweenlands:octine_block>
	},
	"syrmorite" : {
		"ore" : <thebetweenlands:syrmorite_ore>,
		"ingot" : <thebetweenlands:items_misc:11>,
		"block" : <thebetweenlands:syrmorite_block>
	},
	"pigiron" : {
		"nugget" : <tconstruct:nuggets:4>,
		"ingot" : <tconstruct:ingots:4>,
		"block" : <tconstruct:metal:4>
	},
	"hellfire" : {
		"dust" : <betterwithmods:material:16>,
		"ingot" : <betterwithmods:material:17>,
		"block" : <betterwithmods:aesthetic:3>
	},
	"starmetal" : {
		"ore" : <astralsorcery:blockcustomore:1>,
		"dust" : <astralsorcery:itemcraftingcomponent:2>,
		"ingot" : <astralsorcery:itemcraftingcomponent:1>
	},
	"ironwood" : {
		"ore" : <twilightforest:ironwood_raw>,
		"ingot" : <twilightforest:ironwood_ingot>,
		"block" : <twilightforest:block_storage>
	},
	"fierymetal" : {
		"ingot" : <twilightforest:fiery_ingot>,
		"block" : <twilightforest:block_storage:1>
	},
	"knightmetal" : {
		"ore" : <twilightforest:armor_shard_cluster>,
		"ingot" : <twilightforest:knightmetal_ingot>,
		"block" : <twilightforest:knightmetal_block>
	},
	"crude_iron" : {
		"dust" : <primal:crude_iron_dust>,
		"nugget" : <primal:crude_iron_nugget>,
		"ingot" : <primal:crude_iron_ingot>,
		"block" : <primal:metalblock>,
		"plate" : <primal:crude_iron_plate>
	},
	"alubrass" : {
		"nugget" : <tconstruct:nuggets:5>,
		"ingot" : <tconstruct:ingots:5>,
		"block" : <tconstruct:metal:5>
	},
	"refined_iron" : {
		"nugget" : <techreborn:nuggets:19>,
		"ingot" : <techreborn:ingot:19>,
		"block" : <techreborn:storage2:10>,
		"plate" : <techreborn:plates:34>
	}
};

global metalOres as IOreDictEntry[string][string] = {
	"iron" : {
		"ore" : <ore:oreIron>,
		"dust" : <ore:dustIron>,
		"nugget" : <ore:nuggetIron>,
		"ingot" : <ore:ingotIron>,
		"block" : <ore:blockIron>,
		"plate" : <ore:plateIron>,
		"gear" : <ore:gearIron>,
		"stick" : <ore:stickIron>,
		"coin" : <ore:coinIron>
	},
	"gold" : {
		"ore" : <ore:oreGold>,
		"dust" : <ore:dustGold>,
		"nugget" : <ore:nuggetGold>,
		"ingot" : <ore:ingotGold>,
		"block" : <ore:blockGold>,
		"plate" : <ore:plateGold>,
		"gear" : <ore:gearGold>,
		"coin" : <ore:coinGold>
	},
	"manasteel" : {
		"nugget" : <ore:nuggetManasteel>,
		"ingot" : <ore:ingotManasteel>,
		"block" : <ore:blockManasteel>
	},
	"terrasteel" : {
		"nugget" : <ore:nuggetTerrasteel>,
		"ingot" : <ore:ingotTerrasteel>,
		"block" : <ore:blockTerrasteel>
	},
	"elementium" : {
		"nugget" : <ore:nuggetElvenElementium>,
		"ingot" : <ore:ingotElvenElementium>,
		"block" : <ore:blockElvenElementium>
	},
	"electrical_steel" : {
		"nugget" : <ore:nuggetElectricalSteel>,
		"ingot" : <ore:ingotElectricalSteel>,
		"block" : <ore:blockElectricalSteel>,
		"gem" : <ore:ballElectricalSteel>
	},
	"energetic_alloy" : {
		"nugget" : <ore:nuggetEnergeticAlloy>,
		"ingot" : <ore:ingotEnergeticAlloy>,
		"block" : <ore:blockEnergeticAlloy>,
		"gem" : <ore:ballEnergeticAlloy>
	},
	"vibrant_alloy" : {
		"nugget" : <ore:nuggetVibrantAlloy>,
		"ingot" : <ore:ingotVibrantAlloy>,
		"block" : <ore:blockVibrantAlloy>,
		"gem" : <ore:ballVibrantAlloy>
	},
	"redstone_alloy" : {
		"nugget" : <ore:nuggetRedstoneAlloy>,
		"ingot" : <ore:ingotRedstoneAlloy>,
		"block" : <ore:blockRedstoneAlloy>,
		"gem" : <ore:ballRedstoneAlloy>
	},
	"conductive_iron" : {
		"nugget" : <ore:nuggetConductiveIron>,
		"ingot" : <ore:ingotConductiveIron>,
		"block" : <ore:blockConductiveIron>,
		"gem" : <ore:ballConductiveIron>
	},
	"pulsating_iron" : {
		"nugget" : <ore:nuggetPulsatingIron>,
		"ingot" : <ore:ingotPulsatingIron>,
		"block" : <ore:blockPulsatingIron>,
		"gem" : <ore:ballPulsatingIron>
	},
	"dark_steel" : {
		"nugget" : <ore:nuggetDarkSteel>,
		"ingot" : <ore:ingotDarkSteel>,
		"block" : <ore:blockDarkSteel>,
		"gem" : <ore:ballDarkSteel>
	},
	"soularium" : {
		"dust" : <ore:dustSoularium>,
		"nugget" : <ore:nuggetSoularium>,
		"ingot" : <ore:ingotSoularium>,
		"block" : <ore:blockSoularium>,
		"gem" : <ore:ballSoularium>
	},
	"end_steel" : {
		"nugget" : <ore:nuggetEndSteel>,
		"ingot" : <ore:ingotEndSteel>,
		"block" : <ore:blockEndSteel>,
		"gem" : <ore:ballEndSteel>
	},
	"tritanium" : {
		"ore" : <ore:oreTritanium>,
		"dust" : <ore:dustTritanium>,
		"nugget" : <ore:nuggetTritanium>,
		"ingot" : <ore:ingotTritanium>,
		"block" : <ore:blockTritanium>,
		"plate" : <ore:plateTritanium>
	},
	"thorium" : {
		"ore" : <ore:oreThorium>,
		"dust" : <ore:dustThorium>,
		"ingot" : <ore:ingotThorium>,
		"block" : <ore:blockThorium>
	},
	"boron" : {
		"ore" : <ore:oreBoron>,
		"dust" : <ore:dustBoron>,
		"ingot" : <ore:ingotBoron>,
		"block" : <ore:blockBoron>
	},
	"lithium" : {
		"ore" : <ore:oreLithium>,
		"dust" : <ore:dustLithium>,
		"ingot" : <ore:ingotLithium>,
		"block" : <ore:blockLithium>
	},
	"magnesium" : {
		"ore" : <ore:oreMagnesium>,
		"dust" : <ore:dustMagnesium>,
		"ingot" : <ore:ingotMagnesium>,
		"block" : <ore:blockMagnesium>
	},
	"graphite" : {
		"dust" : <ore:dustGraphite>,
		"ingot" : <ore:ingotGraphite>,
		"block" : <ore:blockGraphite>
	},
	"beryllium" : {
		"dust" : <ore:dustBeryllium>,
		"ingot" : <ore:ingotBeryllium>,
		"block" : <ore:blockBeryllium>
	},
	"zirconium" : {
		"dust" : <ore:dustZirconium>,
		"ingot" : <ore:ingotZirconium>,
		"block" : <ore:blockZirconium>
	},
	"tough" : {
		"ingot" : <ore:ingotTough>
	},
	"hard_carbon" : {
		"ingot" : <ore:ingotHardCarbon>
	},
	"ferroboron" : {
		"ingot" : <ore:ingotFerroboron>
	},
	"aluminum" : {
		"ore" : <ore:oreAluminum>,
		"dust" : <ore:dustAluminum>,
		"nugget" : <ore:nuggetAluminum>,
		"ingot" : <ore:ingotAluminum>,
		"block" : <ore:blockAluminum>,
		"plate" : <ore:plateAluminum>,
		"gear" : <ore:gearAluminum>,
		"stick" : <ore:stickAluminum>,
		"coin" : <ore:coinAluminum>
	},
	"brass" : {
		"dust" : <ore:dustBrass>,
		"nugget" : <ore:nuggetBrass>,
		"ingot" : <ore:ingotBrass>,
		"block" : <ore:blockBrass>,
		"plate" : <ore:plateBrass>
	},
	"bronze" : {
		"dust" : <ore:dustBronze>,
		"nugget" : <ore:nuggetBronze>,
		"ingot" : <ore:ingotBronze>,
		"block" : <ore:blockBronze>,
		"plate" : <ore:plateBronze>,
		"gear" : <ore:gearBronze>,
		"coin" : <ore:coinBronze>
	},
	"chrome" : {
		"dust" : <ore:dustChrome>,
		"nugget" : <ore:nuggetChrome>,
		"ingot" : <ore:ingotChrome>,
		"block" : <ore:blockChrome>,
		"plate" : <ore:plateChrome>
	},
	"copper" : {
		"ore" : <ore:oreCopper>,
		"dust" : <ore:dustCopper>,
		"nugget" : <ore:nuggetCopper>,
		"ingot" : <ore:ingotCopper>,
		"block" : <ore:blockCopper>,
		"plate" : <ore:plateCopper>,
		"gear" : <ore:gearCopper>,
		"coin" : <ore:coinCopper>
	},
	"electrum" : {
		"dust" : <ore:dustElectrum>,
		"nugget" : <ore:nuggetElectrum>,
		"ingot" : <ore:ingotElectrum>,
		"block" : <ore:blockElectrum>,
		"plate" : <ore:plateElectrum>,
		"gear" : <ore:gearElectrum>,
		"coin" : <ore:coinElectrum>
	},
	"invar" : {
		"dust" : <ore:dustInvar>,
		"nugget" : <ore:nuggetInvar>,
		"ingot" : <ore:ingotInvar>,
		"block" : <ore:blockInvar>,
		"plate" : <ore:plateInvar>,
		"gear" : <ore:gearInvar>,
		"coin" : <ore:coinInvar>
	},
	"iridium" : {
		"ore" : <ore:oreIridium>,
		"dust" : <ore:dustIridium>,
		"nugget" : <ore:nuggetIridium>,
		"ingot" : <ore:ingotIridium>,
		"block" : <ore:blockIridium>,
		"plate" : <ore:plateIridium>,
		"gear" : <ore:gearIridium>,
		"coin" : <ore:coinIridium>
	},
	"lead" : {
		"ore" : <ore:oreLead>,
		"dust" : <ore:dustLead>,
		"nugget" : <ore:nuggetLead>,
		"ingot" : <ore:ingotLead>,
		"block" : <ore:blockLead>,
		"plate" : <ore:plateLead>,
		"gear" : <ore:gearLead>,
		"coin" : <ore:coinLead>
	},
	"nickel" : {
		"ore" : <ore:oreNickel>,
		"dust" : <ore:dustNickel>,
		"nugget" : <ore:nuggetNickel>,
		"ingot" : <ore:ingotNickel>,
		"block" : <ore:blockNickel>,
		"plate" : <ore:plateNickel>,
		"gear" : <ore:gearNickel>,
		"coin" : <ore:coinNickel>
	},
	"platinum" : {
		"ore" : <ore:orePlatinum>,
		"dust" : <ore:dustPlatinum>,
		"nugget" : <ore:nuggetPlatinum>,
		"ingot" : <ore:ingotPlatinum>,
		"block" : <ore:blockPlatinum>,
		"plate" : <ore:platePlatinum>,
		"gear" : <ore:gearPlatinum>,
		"coin" : <ore:coinPlatinum>
	},
	"silver" : {
		"ore" : <ore:oreSilver>,
		"dust" : <ore:dustSilver>,
		"nugget" : <ore:nuggetSilver>,
		"ingot" : <ore:ingotSilver>,
		"block" : <ore:blockSilver>,
		"plate" : <ore:plateSilver>,
		"gear" : <ore:gearSilver>,
		"coin" : <ore:coinSilver>
	},
	"steel" : {
		"dust" : <ore:dustSteel>,
		"nugget" : <ore:nuggetSteel>,
		"ingot" : <ore:ingotSteel>,
		"block" : <ore:blockSteel>,
		"plate" : <ore:plateSteel>,
		"gear" : <ore:gearSteel>,
		"stick" : <ore:stickSteel>,
		"coin" : <ore:coinSteel>
	},
	"tin" : {
		"ore" : <ore:oreTin>,
		"dust" : <ore:dustTin>,
		"nugget" : <ore:nuggetTin>,
		"ingot" : <ore:ingotTin>,
		"block" : <ore:blockTin>,
		"plate" : <ore:plateTin>,
		"gear" : <ore:gearTin>,
		"coin" : <ore:coinTin>
	},
	"titanium" : {
		"dust" : <ore:dustTitanium>,
		"nugget" : <ore:nuggetTitanium>,
		"ingot" : <ore:ingotTitanium>,
		"block" : <ore:blockTitanium>,
		"plate" : <ore:plateTitanium>
	},
	"tungsten" : {
		"ore" : <ore:oreTungsten>,
		"dust" : <ore:dustTungsten>,
		"nugget" : <ore:nuggetTungsten>,
		"ingot" : <ore:ingotTungsten>,
		"block" : <ore:blockTungsten>,
		"plate" : <ore:plateTungsten>
	},
	"tungstensteel" : {
		"nugget" : <ore:nuggetTungstensteel>,
		"ingot" : <ore:ingotTungstensteel>,
		"block" : <ore:blockTungstensteel>,
		"plate" : <ore:plateTungstensteel>
	},
	"zinc" : {
		"dust" : <ore:dustZinc>,
		"nugget" : <ore:nuggetZinc>,
		"ingot" : <ore:ingotZinc>,
		"block" : <ore:blockZinc>,
		"plate" : <ore:plateZinc>
	},
	"thaumium" : {
		"nugget" : <ore:nuggetThaumium>,
		"ingot" : <ore:ingotThaumium>,
		"block" : <ore:blockThaumium>,
		"plate" : <ore:plateThaumium>
	},
	"void" : {
		"nugget" : <ore:nuggetVoid>,
		"ingot" : <ore:ingotVoid>,
		"block" : <ore:blockVoid>,
		"plate" : <ore:plateVoid>
	},
	"mithril" : {
		"ore" : <ore:oreMithril>,
		"dust" : <ore:dustMithril>,
		"nugget" : <ore:nuggetMithril>,
		"ingot" : <ore:ingotMithril>,
		"block" : <ore:blockMithril>,
		"plate" : <ore:plateMithril>,
		"gear" : <ore:gearMithril>,
		"coin" : <ore:coinMithril>
	},
	"signalum" : {
		"dust" : <ore:dustSignalum>,
		"nugget" : <ore:nuggetSignalum>,
		"ingot" : <ore:ingotSignalum>,
		"block" : <ore:blockSignalum>,
		"plate" : <ore:plateSignalum>,
		"gear" : <ore:gearSignalum>,
		"gem" : <ore:itemGrindingBallSignalum>,
		"coin" : <ore:coinSignalum>
	},
	"lumium" : {
		"dust" : <ore:dustLumium>,
		"nugget" : <ore:nuggetLumium>,
		"ingot" : <ore:ingotLumium>,
		"block" : <ore:blockLumium>,
		"plate" : <ore:plateLumium>,
		"gear" : <ore:gearLumium>,
		"gem" : <ore:itemGrindingBallLumium>,
		"coin" : <ore:coinLumium>
	},
	"enderium" : {
		"dust" : <ore:dustEnderium>,
		"nugget" : <ore:nuggetEnderium>,
		"ingot" : <ore:ingotEnderium>,
		"block" : <ore:blockEnderium>,
		"plate" : <ore:plateEnderium>,
		"gear" : <ore:gearEnderium>,
		"gem" : <ore:itemGrindingBallEnderium>,
		"coin" : <ore:coinEnderium>
	},
	"manyullyn" : {
		"nugget" : <ore:nuggetManyullyn>,
		"ingot" : <ore:ingotManyullyn>,
		"block" : <ore:blockManyullyn>
	},
	"knightslime" : {
		"nugget" : <ore:nuggetKnightslime>,
		"ingot" : <ore:ingotKnightslime>,
		"block" : <ore:blockKnightslime>
	},
	"constantan" : {
		"dust" : <ore:dustConstantan>,
		"nugget" : <ore:nuggetConstantan>,
		"ingot" : <ore:ingotConstantan>,
		"block" : <ore:blockConstantan>,
		"plate" : <ore:plateConstantan>,
		"gear" : <ore:gearConstantan>,
		"coin" : <ore:coinConstantan>
	},
	"uranium" : {
		"ore" : <ore:oreUranium>,
		"dust" : <ore:dustUranium>,
		"nugget" : <ore:nuggetUranium>,
		"ingot" : <ore:ingotUranium>,
		"block" : <ore:blockUranium>,
		"plate" : <ore:plateUranium>
	},
	"cobalt" : {
		"ore" : <ore:oreCobalt>,
		"dust" : <ore:dustCobalt>,
		"nugget" : <ore:nuggetCobalt>,
		"ingot" : <ore:ingotCobalt>,
		"block" : <ore:blockCobalt>
	},
	"ardite" : {
		"ore" : <ore:oreArdite>,
		"dust" : <ore:dustArdite>,
		"nugget" : <ore:nuggetArdite>,
		"ingot" : <ore:ingotArdite>,
		"block" : <ore:blockArdite>
	},
	"osmium" : {
		"ore" : <ore:oreOsmium>,
		"dust" : <ore:dustOsmium>,
		"nugget" : <ore:nuggetOsmium>,
		"ingot" : <ore:ingotOsmium>,
		"block" : <ore:blockOsmium>
	},
	"octine" : {
		"ore" : <ore:oreOctine>,
		"ingot" : <ore:ingotOctine>,
		"block" : <ore:blockOctine>
	},
	"syrmorite" : {
		"ore" : <ore:oreSyrmorite>,
		"ingot" : <ore:ingotSyrmorite>,
		"block" : <ore:blockSyrmorite>
	},
	"pigiron" : {
		"nugget" : <ore:nuggetPigiron>,
		"ingot" : <ore:ingotPigiron>,
		"block" : <ore:blockPigiron>
	},
	"hellfire" : {
		"dust" : <ore:dustHellfire>,
		"ingot" : <ore:ingotHellfire>,
		"block" : <ore:blockHellfire>
	},
	"starmetal" : {
		"ore" : <ore:oreAstralStarmetal>,
		"dust" : <ore:dustAstralStarmetal>,
		"ingot" : <ore:ingotAstralStarmetal>
	},
	"ironwood" : {
		"ore" : <ore:oreIronwood>,
		"ingot" : <ore:ingotIronwood>,
		"block" : <ore:blockIronwood>
	},
	"fierymetal" : {
		"ingot" : <ore:ingotFiery>,
		"block" : <ore:blockFiery>
	},
	"knightmetal" : {
		"ore" : <ore:oreKnightmetal>,
		"ingot" : <ore:ingotKnightmetal>,
		"block" : <ore:blockKnightmetal>
	},
	"crude_iron" : {
		"dust" : <ore:dustCrudeIron>,
		"nugget" : <ore:nuggetCrudeIron>,
		"ingot" : <ore:ingotCrudeIron>,
		"block" : <ore:blockCrudeIron>,
		"plate" : <ore:plateCrudeIron>
	},
	"alubrass" : {
		"nugget" : <ore:nuggetAlubrass>,
		"ingot" : <ore:ingotAlubrass>,
		"block" : <ore:blockAlubrass>
	},
	"refined_iron" : {
		"nugget" : <ore:nuggetRefinedIron>,
		"ingot" : <ore:ingotRefinedIron>,
		"block" : <ore:blockRefinedIron>,
		"plate" : <ore:plateRefinedIron>
	}
};

global metalMolten as ILiquidStack[string] = {
	"iron" : <liquid:liquidiron>,
	"gold" : <liquid:liquidgold>,
	"manasteel" : <liquid:liquidmanasteel>,
	"terrasteel" : <liquid:liquidterrasteel>,
	"elementium" : <liquid:liquidelvenelementium>,
	"dark_steel" : <liquid:dark_steel>,
	"soularium" : <liquid:soularium>,
	"pulsating_iron" : <liquid:pulsating_iron>,
	"electrical_steel" : <liquid:electrical_steel>,
	"vibrant_alloy" : <liquid:vibrant_alloy>,
	"energetic_alloy" : <liquid:energetic_alloy>,
	"redstone_alloy" : <liquid:redstone_alloy>,
	"conductive_iron" : <liquid:conductive_iron>,
	"end_steel" : <liquid:end_steel>,
	"tritanium" : <liquid:molten_tritanium>,
	"aluminum" : <liquid:liquidaluminium>,
	"brass" : <liquid:liquidbrass>,
	"bronze" : <liquid:liquidbronze>,
	"copper" : <liquid:liquidcopper>,
	"electrum" : <liquid:liquidelectrum>,
	"invar" : <liquid:liquidinvar>,
	"iridium" : <liquid:iridium>,
	"lead" : <liquid:liquidlead>,
	"nickel" : <liquid:liquidnickel>,
	"platinum" : <liquid:liquidplatinum>,
	"silver" : <liquid:liquidsilver>,
	"steel" : <liquid:liquidsteel>,
	"tin" : <liquid:liquidtin>,
	"zinc" : <liquid:liquidzinc>,
	"signalum" : <liquid:liquidsignalum>,
	"lumium" : <liquid:liquidlumium>,
	"enderium" : <liquid:liquidenderium>,
	"manyullyn" : <liquid:manyullyn>,
	"knightslime" : <liquid:knightslime>,
	"constantan" : <liquid:liquidcupronickel>,
	"uranium" : <liquid:uranium>,
	"cobalt" : <liquid:cobalt>,
	"ardite" : <liquid:ardite>,
	"osmium" : <liquid:liquidosmium>,
	"thaumium" : <liquid:thaumium>,
	"void" : <liquid:voidmetal>,
	"boron" : <liquid:boron>,
	"thorium" : <liquid:thorium>,
	"lithium" : <liquid:lithium>,
	"magnesium" : <liquid:magnesium>,
	"beryllium" : <liquid:beryllium>,
	"tough" : <liquid:tough>,
	"hard_carbon" : <liquid:hard_carbon>,
	"ferroboron" : <liquid:ferroboron>,
	"octine" : <liquid:octine>,
	"syrmorite" : <liquid:syrmorite>,
	"pigiron" : <liquid:pigiron>,
	"mithril" : <liquid:mithril>,
	"hellfire" : <liquid:hellfire>,
	"starmetal" : <liquid:starmetal>,
	"fierymetal" : <liquid:fierymetal>,
	"knightmetal" : <liquid:knightmetal>,
	"alubrass" : <liquid:alubrass>
};

global metalTemperature as int[string] = {
	"iron" : 1800,
	"gold" : 1350,
	"manasteel" : 1950,
	"terrasteel" : 2100,
	"elementium" : 2400,
	"dark_steel" : 1820,
	"soularium" : 640,
	"pulsating_iron" : 1410,
	"electrical_steel" : 1480,
	"vibrant_alloy" : 920,
	"energetic_alloy" : 1130,
	"redstone_alloy" : 1360,
	"conductive_iron" : 1400,
	"end_steel" : 1220,
	"tritanium" : 2000,
	"aluminum" : 900,
	"brass" : 1200,
	"bronze" : 1200,
	"copper" : 1300,
	"electrum" : 1350,
	"invar" : 1780,
	"iridium" : 1400,
	"lead" : 650,
	"nickel" : 1750,
	"platinum" : 2100,
	"silver" : 1250,
	"steel" : 1800,
	"tin" : 550,
	"zinc" : 700,
	"signalum" : 2800,
	"lumium" : 2500,
	"enderium" : 3800,
	"manyullyn" : 1900,
	"knightslime" : 520,
	"constantan" : 1750,
	"uranium" : 1405,
	"cobalt" : 1770,
	"ardite" : 1800,
	"osmium" : 3300,
	"thaumium" : 1200,
	"void" : 1600,
	"boron" : 2350,
	"thorium" : 2025,
	"lithium" : 460,
	"magnesium" : 930,
	"beryllium" : 1560,
	"tough" : 1270,
	"hard_carbon" : 1820,
	"ferroboron" : 2080,
	"octine" : 2600,
	"syrmorite" : 1900,
	"pigiron" : 1256,
	"mithril" : 3600,
	"hellfire" : 3500,
	"starmetal" : 2000,
	"fierymetal" : 3400,
	"knightmetal" : 2100,
	"alubrass" : 1000
};

global metalHasLiquid as function(string)bool = function(metal as string) as bool {
	return !isNull(metalMolten[metal]);
};

global metalHasOre as function(string)bool = function(metal as string) as bool {
	return !isNull(metalOres[metal].ore);
};