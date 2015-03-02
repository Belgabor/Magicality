import mods.nei.NEI;

var grater = <DCsAppleMilk:defeatedcrow.grater:*>;
var coffee = <DCsAppleMilk:defeatedcrow.gratedApple:3>;
var chopsticks = <DCsAppleMilk:defeatedcrow.chopsticks>;
var spoon = <DCsAppleMilk:defeatedcrow.chopsticks:1>;
var cknife = <DCsAppleMilk:defeatedcrow.chalcedonyKnife>;
var bean = <Thaumcraft:ItemManaBean>;
var yuzu = <DCsAppleMilk:defeatedcrow.leafTea:3>;
var myuzu = <DCsAppleMilk:defeatedcrow.battery:2>;
var syuzu = <DCsAppleMilk:defeatedcrow.battery>;
var tyuzu = <DCsAppleMilk:defeatedcrow.battery:1>;
var bat = <DCsAppleMilk:defeatedcrow.gelBatContainer>;
var cstick = <DCsAppleMilk:defeatedcrow.stickCarbon>;
var onyx = <DCsAppleMilk:defeatedcrow.chalcedony:3>;

var brick = <minecraft:brick>;
var clay = <minecraft:clay_ball>;
var nbrick = <minecraft:netherbrick>;
var nrack = <minecraft:netherrack>;


//var bamboo = <ore:stickBamboo>;
//bamboo.add(<BiomesOPlenty:bamboo>);
var planks = <ore:plankWood>;
var stick = <ore:stickWood>;

var emoss = <witchery:embermoss>;
var sbrace = <AWWayofTime:bloodMagicBaseItems:4>;

var hclay = <minecraft:stained_hardened_clay>;


// Recharge stuff
recipes.remove(bat);


// Cooking Plate
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.teppanII>, [<DCsAppleMilk:defeatedcrow.teppann>]);


// Evilness >:-)
furnace.remove(brick);
recipes.remove(brick);
mods.amt.Plate.addRecipe(brick, clay, 20, true);
furnace.remove(nbrick);
recipes.remove(nbrick);
mods.amt.Plate.addRecipe(nbrick, nrack, 20, true);
mods.amt.Plate.addRecipe(<minecraft:deadbush>, <minecraft:tallgrass:1>, 100, false);


// Solve recipe conflicts
recipes.remove(<DCsAppleMilk:defeatedcrow.VegiBag:5>);
recipes.remove(<DCsAppleMilk:defeatedcrow.mobDropBox>);
recipes.addShapeless(<minecraft:rotten_flesh>*9, [<Thaumcraft:blockTaint:2>]);
recipes.remove(<minecraft:brown_mushroom_block>);
recipes.remove(<minecraft:red_mushroom_block>);


// Remove/Replace TherFound metal recipes
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.emptyBottle> * 1, [[null, <ore:ingotTin>, null], [<minecraft:glass> * 1, null, <minecraft:glass> * 1], [null, <minecraft:glass> * 1, null]]);
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.teaMakerNext> * 1, [[<ore:ingotSilver>, <minecraft:water_bucket> * 1, <ore:ingotSilver>], [<minecraft:glass> * 1, <minecraft:water_bucket> * 1, <minecraft:glass> * 1], [<ore:ingotSilver>, <minecraft:blaze_rod> * 1, <ore:ingotSilver>]]);
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.teaMakerNext> * 1, [[<ore:ingotSilver>, <minecraft:water_bucket> * 1, <ore:ingotSilver>], [<minecraft:glass> * 1, <minecraft:water_bucket> * 1, <minecraft:glass> * 1], [<ore:ingotSilver>, <minecraft:lava_bucket> * 1, <ore:ingotSilver>]]);
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.chalcedonyLamp:8> * 1, [[null, <ore:ingotSilver>, null], [<ore:ingotSilver>, <DCsAppleMilk:defeatedcrow.chalcedonyLamp> * 1, <ore:ingotSilver>], [null, <ore:ingotSilver>, null]]);
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.chalcedonyLamp:9> * 1, [[null, <ore:ingotLead>, null], [<ore:ingotLead>, <DCsAppleMilk:defeatedcrow.chalcedonyLamp:1> * 1, <ore:ingotLead>], [null, <ore:ingotLead>, null]]);
recipes.removeShaped(<DCsAppleMilk:defeatedcrow.emptyCup> * 1, [[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], [<ore:ingotSilver>, <ore:ingotSilver>, null]]);

recipes.addShaped(<DCsAppleMilk:defeatedcrow.chalcedonyLamp:8> * 1, [[null, hclay, null], [hclay, <DCsAppleMilk:defeatedcrow.chalcedonyLamp> * 1, hclay], [null, hclay, null]]);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.chalcedonyLamp:9> * 1, [[null, hclay, null], [hclay, <DCsAppleMilk:defeatedcrow.chalcedonyLamp:1> * 1, hclay], [null, hclay, null]]);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.chalcedonyLamp:11> * 1, [[null, onyx, null], [<ore:ingotIron>, <DCsAppleMilk:defeatedcrow.chalcedonyLamp:3> * 1, <ore:ingotIron>], [null, onyx, null]]);


// Coffee
recipes.addShapeless(coffee, [grater, bean]);
mods.amt.Processor.addRecipe(coffee, null, [bean], true);


// Chopsticks & spoon & NEI issues
recipes.addShapeless(spoon, [stick, planks, cknife.transformDamage()]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:48>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle:32>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:32>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle:16>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:16>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle>.transformReplace(<DCsAppleMilk:defeatedcrow.emptyBottle>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);


// Batteries
recipes.remove(myuzu);
mods.botania.ManaInfusion.addInfusion(myuzu, yuzu, 20000);
mods.bloodmagic.Altar.addRecipe(syuzu, myuzu, 3, 10000, 20, 20);

mods.thaumcraft.Research.addResearch("AMT", "ALCHEMY", "tenebrae 2, victus 2, potentia 2", -7, -3, 8, tyuzu);
mods.thaumcraft.Research.setSecondary("AMT", true);
mods.thaumcraft.Research.setConcealed("AMT", true);
game.setLocalization("en_US", "tc.research_name.AMT", "Apple, Milk & Thaumcraft");
game.setLocalization("en_US", "tc.research_text.AMT", "[Magicality] Power food with Magic!");

mods.thaumcraft.Crucible.addRecipe("AMT", tyuzu, syuzu, "potentia 4");
mods.thaumcraft.Arcane.addShaped("AMT", bat, "ordo 10",
						[[sbrace, emoss, sbrace],
						 [emoss, tyuzu, emoss],
						 [sbrace, emoss, sbrace]]);

game.setLocalization("en_US", "tc.research_page.AMT", "You have created magical yuzus by floral and sanguine means, but those were insufficient.<BR>Only by thaumic alchemy true power can be achieved!");
mods.thaumcraft.Research.addPage("AMT", "tc.research_page.AMT");
mods.thaumcraft.Research.addCruciblePage("AMT", tyuzu);
mods.thaumcraft.Research.addArcanePage("AMT", bat);

mods.thaumcraft.Research.addPrereq("AMT", "ALCHEMICALMANUFACTURE", false);


// Mod Interaction
mods.amt.IceMaker.registerChargeItem(<BiomesOPlenty:hardIce>, 16);
mods.amt.IceMaker.addRecipe(<BiomesOPlenty:hardIce>, <minecraft:packed_ice>);
mods.amt.IceMaker.registerChargeItem(<BiomesOPlenty:flowers2:7>, 8); // Icy Iris
mods.amt.IceMaker.addRecipe(<minecraft:red_flower>, <BiomesOPlenty:flowers2:7>);
mods.amt.IceMaker.registerChargeItem(<witchery:ingredient:78>, 32); // Icy needle
mods.amt.IceMaker.registerChargeItem(<TwilightForest:item.iceBomb>, 32);
mods.amt.IceMaker.registerChargeItem(<AWWayofTime:crystallos>, 64);

mods.amt.Plate.registerHeatSource(<chisel:lavastone:*>);

mods.amt.Processor.addRecipe(<DCsAppleMilk:defeatedcrow.gratedApple:2>*8, <minecraft:bucket>, [<erebus:bucketHoney>, yuzu], true);
mods.amt.Processor.addRecipe(<DCsAppleMilk:defeatedcrow.gratedApple:2>*8, <erebus:bambucket>, [<erebus:bambucketHoney>, yuzu], true);
recipes.addShapeless(<erebus:bucketHoney>,[<BiomesOPlenty:bopBucket>.withTag({Fluid:{Amount: 1000, FluidName:"honey"}})]);

mods.amt.Evaporator.addRecipe(<liquid:glowstone> * 1000, <minecraft:glowstone>);
mods.amt.Evaporator.addRecipe(<liquid:glowstone> * 250, <minecraft:glowstone_dust>);


