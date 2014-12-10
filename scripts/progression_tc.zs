var sliverAir = <Automagy:shardSliver>;
var sliverFire = <Automagy:shardSliver:1>;
var sliverWater = <Automagy:shardSliver:2>;
var sliverEarth = <Automagy:shardSliver:3>;
var sliverOrder = <Automagy:shardSliver:4>;
var sliverEntropy = <Automagy:shardSliver:5>;
var glassAir = <minecraft:stained_glass:4>;
var glassFire = <minecraft:stained_glass:14>;
var glassWater = <minecraft:stained_glass:11>;
var glassEarth = <minecraft:stained_glass:13>;
var glassOrder = <minecraft:stained_glass>;
var glassEntropy = <minecraft:stained_glass:15>;
var blank = <AWWayofTime:blankSpell>;
var shardAir = <Thaumcraft:ItemShard>;
var shardFire = <Thaumcraft:ItemShard:1>;
var shardWater = <Thaumcraft:ItemShard:2>;
var shardEarth = <Thaumcraft:ItemShard:3>;
var shardOrder = <Thaumcraft:ItemShard:4>;
var shardEntropy = <Thaumcraft:ItemShard:5>;
var harness = <Thaumcraft:HoverHarness>;
var sigilAir = <AWWayofTime:airSigil>;
var gwplanks = <Thaumcraft:blockWoodenDevice:6>;
var flightFocus = <ThaumicTinkerer:focusFlight>;
var feather = <minecraft:feather>;
var nquartz = <minecraft:quartz>;

var ichorIngot = <ThaumicTinkerer:kamiResource:2>;
var ichorNugget = <ThaumicTinkerer:kamiResource:3>;


// Caps
mods.thaumcraft.Research.orphanResearch("CAP_silver");
mods.thaumcraft.Research.removeResearch("CAP_silver");
mods.thaumcraft.Research.orphanResearch("CAP_copper");
mods.thaumcraft.Research.removeResearch("CAP_copper");


// Harness
mods.thaumcraft.Infusion.removeRecipe(harness);
mods.thaumcraft.Infusion.addRecipe("HOVERHARNESS", <AWWayofTime:sanguineRobe>, [sigilAir, shardAir, shardAir, gwplanks, gwplanks, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], "iter 16, machina 32, potentia 32, volatus 32", harness, 6);
mods.thaumcraft.Research.refreshResearchRecipe("HOVERHARNESS");


// Flight Focus
mods.thaumcraft.Infusion.removeRecipe(flightFocus);
mods.thaumcraft.Infusion.addRecipe("FOCUS_FLIGHT", <AWWayofTime:masterBloodOrb>, [shardAir, feather, nquartz, nquartz, nquartz, nquartz, feather], "aer 15, iter 10, motus 20", flightFocus, 2);
mods.thaumcraft.Research.refreshResearchRecipe("FOCUS_FLIGHT");



// Kami, nuggets to ingot. Seriously guys?
recipes.addShaped(ichorIngot, [[ichorNugget, ichorNugget, ichorNugget],
                               [ichorNugget, ichorNugget, ichorNugget],
							   [ichorNugget, ichorNugget, ichorNugget]]);



// Shards
mods.thaumcraft.Research.addResearch("SHARDS1", "BASICS", null, -1, -3, 8, <Thaumcraft:ItemShard:2>);
mods.thaumcraft.Research.setRound("SHARDS1", true);
mods.thaumcraft.Research.setAutoUnlock("SHARDS1", true);

game.setLocalization("en_US", "tc.research_name.SHARDS1", "Beginner Thaumaturge's way to all the shards");
game.setLocalization("en_US", "tc.research_text.SHARDS1", "[Magicality] Get shards, noob level");

mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverAir, glassAir, "aer 5, vitreus 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverFire, glassFire, "ignis 5, vitreus 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverWater, glassWater, "aqua 5, vitreus 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverEarth, glassEarth, "terra 5, vitreus 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverOrder, glassOrder, "ordo 5, vitreus 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("SHARDS1", sliverEntropy, glassEntropy, "vitreus 1, perditio 6");

game.setLocalization("en_US", "tc.research_page.SHARDS1", "The dead mage you, um, liberated the thaumometer from had some notes about magical shards to fuel your experiments. Unfortunately the earth no longer bears the stone that holds them.<BR>Through some experiments you have found a way to create crude, inferior versions that can be made into the full version with a bit of magic.<BR><BR>You are sure that you will find better ways to make shards in the future.");
mods.thaumcraft.Research.addPage("SHARDS1", "tc.research_page.SHARDS1");
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverAir);
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverFire);
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverWater);
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverEarth);
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverOrder);
mods.thaumcraft.Research.addCruciblePage("SHARDS1", sliverEntropy);

mods.thaumcraft.Research.addResearch("SHARDS2", "ALCHEMY", "vitreus 4, permutatio 4, praecantatio 4", -7, -1, 2, <Thaumcraft:ItemShard:1>);
mods.thaumcraft.Research.setConcealed("SHARDS2", true);
mods.thaumcraft.Research.addPrereq("SHARDS2", "ALCHEMICALMANUFACTURE", false);

game.setLocalization("en_US", "tc.research_name.SHARDS2", "Advanced Thaumaturge's way to all the shards");
game.setLocalization("en_US", "tc.research_text.SHARDS2", "[Magicality] Get shards, all the shards! Stabbity, stabbity, all the shards, yeah!");

mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardAir, blank, "aer 5, permutatio 2, praecantatio 2");
mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardFire, blank, "ignis 5, permutatio 2, praecantatio 2");
mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardWater, blank, "aqua 5, permutatio 2, praecantatio 2");
mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardEarth, blank, "terra 5, permutatio 2, praecantatio 2");
mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardOrder, blank, "ordo 5, permutatio 2, praecantatio 2");
mods.thaumcraft.Crucible.addRecipe("SHARDS2", shardEntropy, blank, "perditio 5, permutatio 2, praecantatio 2");
game.setLocalization("en_US", "tc.research_page.SHARDS2", "After refining your alchemical procedures and dabbling in other magical disciplines you have found an improved way to manufacture shards.<BR>Sure, you need to stab yourself or others to some extent, but when has that ever stopped anyone craving more power?");
mods.thaumcraft.Research.addPage("SHARDS2", "tc.research_page.SHARDS2");
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardAir);
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardFire);
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardWater);
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardEarth);
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardOrder);
mods.thaumcraft.Research.addCruciblePage("SHARDS2", shardEntropy);

//mods.thaumcraft.Research.addResearch("MAG_DIM_SHARDS", "TT_CATEGORY", null, 8, 9, 8, <ThaumicTinkerer:kamiResource:7>);
//mods.thaumcraft.Research.setRound("MAG_DIM_SHARDS", true);
//mods.thaumcraft.Research.setAutoUnlock("MAG_DIM_SHARDS", true);
//game.setLocalization("en_US", "tc.research_name.MAG_DIM_SHARDS", "A strange kind of enderman");
//game.setLocalization("en_US", "tc.research_text.MAG_DIM_SHARDS", "[Magicality] Ender Shards");
game.setLocalization("en_US", "tc.research_page.MAG_DIM_SHARDS", "Ender Shards<BR>Maybe the power of the end is stronger here or it is one of their special powers, but you have heard that a special kind of endermen can drop ender shards in the overworld.<BR>The reports are inconclusive, but it seems they look almost like they are made from end stone. On the other hand, maybe they are just an illusion, a mere trick of the light over a hot desert?");
mods.thaumcraft.Research.addPage("SHARDS1", "tc.research_page.MAG_DIM_SHARDS");
