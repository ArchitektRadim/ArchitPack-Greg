#imports
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.gregtech.recipe.RecipeMaps;
import mods.appliedenergistics2.Inscriber;

#variables
val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val spinnyGoFast = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val precissionLaser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val formingPress = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val alloy = RecipeMap.getByName("alloy_smelter");

#tooltips

#display_names

#descriptions
mods.jei.JEI.addDescription(<forestry:wood_pile>,"Charcoal is really fine early-game energy source. The earliest way of obtaining Charcoal is building a Pit. Simply place some Wood Piles, cover them up with any fireproof material listed in JEI, left one-block space for ignition and ignite. Finally cover up the hole and wait for particles until they stop appearing. The pit should be filled with Charcoal Blocks");


#-------------------------------------------------------------------
#------------------------------RECIPES------------------------------

#-----------------------------crafting------------------------------

mods.jei.JEI.removeAndHide(<forestry:ingot_copper>);
mods.jei.JEI.removeAndHide(<forestry:ingot_tin>);
mods.jei.JEI.removeAndHide(<forestry:ingot_bronze>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:49>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:51>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:46>);

#-----------------------------inscriber-----------------------------

Inscriber.removeRecipe(<appliedenergistics2:material:13>);
Inscriber.removeRecipe(<appliedenergistics2:material:14>);
Inscriber.removeRecipe(<appliedenergistics2:material:15>);
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:19>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>);

#---------------------------alloy-smelter---------------------------

recipes.remove(<appliedenergistics2:quartz_glass>);
alloy.recipeBuilder().inputs([<ore:dustNetherQuartz>*4,<minecraft:glass>*5]).outputs([<appliedenergistics2:quartz_glass>*5]).duration(250).EUt(16).buildAndRegister();
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);

#-----------------------------extruder------------------------------

extruder.recipeBuilder()
        .inputs(<ore:plateSilicon>)
		.notConsumable(<appliedenergistics2:material:19>)
		.outputs(<appliedenergistics2:material:20>)
		.duration(20)
		.EUt(480)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:16>)
		.notConsumable(<appliedenergistics2:material:13>)
		.outputs(<appliedenergistics2:material:23>)
		.duration(20)
		.EUt(820)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:17>)
		.notConsumable(<appliedenergistics2:material:14>)
		.outputs(<appliedenergistics2:material:24>)
		.duration(20)
		.EUt(820)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:18>)
		.notConsumable(<appliedenergistics2:material:15>)
		.outputs(<appliedenergistics2:material:22>)
		.duration(20)
		.EUt(820)
		.buildAndRegister();

#------------------------------forming_press------------------------

formingPress.recipeBuilder()
		.inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateCertusQuartz>)
		.outputs(<appliedenergistics2:material:16>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

formingPress.recipeBuilder()
		.inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateDiamond>)
		.outputs(<appliedenergistics2:material:17>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

formingPress.recipeBuilder()
        .inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateGold>)
		.outputs(<appliedenergistics2:material:18>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

#------------------------------precission-laser-----------------------------

precissionLaser.recipeBuilder()
		.inputs(<ore:blockIron>, <ore:craftingLensRed>)
		.outputs(<appliedenergistics2:material:13>)
		.duration(10000)
		.EUt(120)
		.buildAndRegister();

precissionLaser.recipeBuilder()
		.inputs(<ore:blockIron>, <ore:craftingLensBlue>)
		.outputs(<appliedenergistics2:material:14>)
		.duration(10000)
		.EUt(120)
		.buildAndRegister();

precissionLaser.recipeBuilder()
		.inputs(<ore:blockIron>, <ore:craftingLensLime>)
		.outputs(<appliedenergistics2:material:15>)
		.duration(10000)
		.EUt(120)
		.buildAndRegister();

precissionLaser.recipeBuilder()
		.inputs(<ore:blockIron>, <ore:craftingLensWhite>)
		.outputs(<appliedenergistics2:material:19>)
		.duration(10000)
		.EUt(120)
		.buildAndRegister();

#-----------------------------assembler--------------------------

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_1:12192> *4, <ore:screwTungstenSteel> *2, <minecraft:diamond_block>, <gregtech:meta_item_2:32490>)
		.outputs(<forestry:hardened_machine>)
		.duration(50)
		.EUt(90)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateBeryllium> *4, <ore:screwStainlessSteel> *2, <minecraft:slime_ball>, <gregtech:meta_item_2:32489>)
		.outputs(<forestry:flexible_casing>)
		.duration(50)
		.EUt(90)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeGreen>)
		.outputs(<railcraft:circuit:1>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeRed>)
		.outputs(<railcraft:circuit>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeYellow>)
		.outputs(<railcraft:circuit:2>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeBlue>)
		.outputs(<railcraft:circuit:3>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeBlue>)
		.outputs(<railcraft:circuit:3>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();


assembler.recipeBuilder()
		.inputs(<ore:plateTin>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateCopper>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:1>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateIron>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:2>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateGold>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:3>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

#----------------------------carpenter-------------------------------

mods.forestry.Carpenter.removeRecipe(<forestry:hardened_machine>);
mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>);

mods.forestry.Carpenter.removeRecipe(<forestry:flexible_casing>);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);

mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<forestry:kit_pickaxe>);
mods.forestry.Carpenter.removeRecipe(<forestry:kit_shovel>);