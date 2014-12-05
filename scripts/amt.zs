import mods.nei.NEI;

var grater = <DCsAppleMilk:defeatedcrow.grater>;
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

//var bamboo = <ore:stickBamboo>;
//bamboo.add(<BiomesOPlenty:bamboo>);
var planks = <ore:plankWood>;
var stick = <ore:stickWood>;

var emoss = <witchery:embermoss>;
var sbrace = <AWWayofTime:bloodMagicBaseItems:4>;


// Recharge stuff
recipes.remove(<DCsAppleMilk:defeatedcrow.redGel>);
//recipes.remove(<DCsAppleMilk:defeatedcrow.batBox>);
recipes.remove(bat);
//recipes.addShaped(<DCsAppleMilk:defeatedcrow.gelBatContainer>, [[cstick, syuzu, cstick],
//																[syuzu, tyuzu, syuzu],
//																[cstick, syuzu, cstick]]);
//<DCsAppleMilk:defeatedcrow.yuzuBatContainer>


// Solve recipe conflicts
recipes.remove(<DCsAppleMilk:defeatedcrow.VegiBag:5>);
recipes.remove(<DCsAppleMilk:defeatedcrow.mobDropBox>);
recipes.addShapeless(<minecraft:rotten_flesh>*9, [<Thaumcraft:blockTaint:2>]);



// Coffee
recipes.addShapeless(coffee, [grater, bean]);


// Chopsticks & spoon & NEI issues
//recipes.addShapeless(chopsticks, [bamboo, bamboo, cknife.transformDamage()]);
NEI.addEntry(<DCsAppleMilk:defeatedcrow.chopsticksBox:4>);
recipes.addShapeless(spoon, [stick, planks, cknife.transformDamage()]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:48>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle:32>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:32>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle:16>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle:16>.transformReplace(<DCsAppleMilk:defeatedcrow.itemBottle>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.cocktail2>, [<Botania:manaBottle:*>.transformDamage(), <DCsAppleMilk:defeatedcrow.itemBottle>.transformReplace(<DCsAppleMilk:defeatedcrow.emptyBottle>), <DCsAppleMilk:defeatedcrow.filledCup2:12>]);


// Batteries
recipes.remove(myuzu);
mods.botania.ManaInfusion.addInfusion(myuzu, yuzu, 2000);
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
