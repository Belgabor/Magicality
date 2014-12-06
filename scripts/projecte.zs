var voidseed = <Thaumcraft:ItemResource:17>;
var harness = <Thaumcraft:HoverHarness>;
var girdle = <Thaumcraft:ItemGirdleHover>;
var soap = <Thaumcraft:ItemSanitySoap>;

var tstone = <ProjectE:Transmutation Stone>;
var tablet = <ProjectE:item.pe_transmutation_tablet>;
var ring = <ProjectE:item.pe_ring_iron_band>;
var talisman = <ProjectE:item.pe_repair_talisman>;
var timewatch = <ProjectE:item.pe_time_watch>;
var swiftwolf = <ProjectE:item.pe_swrg>;
var body = <ProjectE:item.pe_body_stone>;
var soul = <ProjectE:item.pe_soul_stone>;
var life = <ProjectE:item.pe_life_stone>;
var dm = <ProjectE:item.pe_matter>;
var rm = <ProjectE:item.pe_matter:1>;
var dmb = <ProjectE:Matter Block>;
var rmb = <ProjectE:Matter Block:1>;
var aefuel = <ProjectE:item.pe_fuel:2>;
var pstone = <ProjectE:item.pe_philosophers_stone>;
var kstar1 = <ProjectE:item.pe_klein_star>;

var coal = <ore:coal>;
//var coalb = <ore:blockCoal>;
var fuel1 = <ProjectE:item.pe_fuel>;
var fuel2 = <ProjectE:item.pe_fuel:1>;
var fuel3 = <ProjectE:item.pe_fuel:2>;
var fuelb1 = <ProjectE:Fuel Block>;
var fuelb2 = <ProjectE:Fuel Block:1>;
var fuelb3 = <ProjectE:Fuel Block:2>;

var restorer = <ThaumicTinkerer:repairer>;

//var erebusGoop = <erebus:materials:9>;
var erebusGoop = voidseed; // Temp for now

var goldenThread = <witchery:ingredient:102>;
var flybroom = <witchery:ingredient:9>;
var poppetdeath = <witchery:poppet:6>;

// Chisel 1.5.7
//var fancyLapis = <chisel:chisel.lapis:8>;
// Chisel 2.X
var fancyLapis = <chisel:lapis_block:8>;

var manaBlock = <Botania:storage>;
var tiara = <Botania:flightTiara>;

//var clock = <minecraft:clock>;
var notch = <minecraft:golden_apple:1>;
var stone = <ore:stone>;
var obsidian = <minecraft:obsidian>;
var diamondb = <ore:blockDiamond>;
var clock = <Automagy:blockHourglassMagic>;

var timeLog = <TwilightForest:tile.TFMagicLog>;

var clock1 = <BiblioCraft:BiblioClock>;
var clock2 = <BiblioCraft:BiblioClock:1>;
var clock3 = <BiblioCraft:BiblioClock:2>;
var clock4 = <BiblioCraft:BiblioClock:3>;

var clock5 = <props:props:2>;
var clock6 = <props:props:31>;
var decobroom = <props:props:369>;

var sigilHaste = <AWWayofTime:sigilOfHaste>;
var sigilMiner = <AWWayofTime:sigilOfTheFastMiner>;
var sigilAir = <AWWayofTime:airSigil>;

var angelicfeather = <xreliquary:angelic_feather>;

var stabbelt = <ThaumicExploration:stabilizerBelt>;

var chocoapple = <DCsAppleMilk:defeatedcrow.chocolateFruits:12>;
var yuzutart = <DCsAppleMilk:defeatedcrow.appleTart:2>;
var appletart = <DCsAppleMilk:defeatedcrow.appleTart>;
var cassistart = <DCsAppleMilk:defeatedcrow.appleTart:1>;
var princessclam = <DCsAppleMilk:defeatedcrow.princessClam>;
var roseoil = <DCsAppleMilk:defeatedcrow.essentialOil:1>;
var teaice = <DCsAppleMilk:defeatedcrow.iceCreamBlock:1>;
var berryice = <DCsAppleMilk:defeatedcrow.iceCreamBlock:9>;
var chickenstew = <DCsAppleMilk:defeatedcrow.bowlBlock:3>;
var gp = <DCsAppleMilk:defeatedcrow.GunpowderContainer>;
var ep = <DCsAppleMilk:defeatedcrow.mobDropBox:3>;


// Alchemical Bags (broken)
//recipes.remove(<ProjectE:item.alchemical_bag:*>);


// Harvest Goddess Band (recipe pending)
recipes.remove(<ProjectE:item.pe_harvest_god>);


// Klein star emergency recipe
recipes.addShaped(kstar1, [[gp, gp, gp],
                           [gp, ep, gp],
						   [gp, gp, gp]]);



// Conversion recipes, broken due to EMC changes
recipes.removeShapeless(<minecraft:gold_ingot>);
recipes.removeShapeless(<minecraft:diamond>);
recipes.removeShapeless(<minecraft:iron_ingot>);
recipes.addShaped(<minecraft:diamond>, [[<ore:diamondNugget>, <ore:diamondNugget>, <ore:diamondNugget>],
                               [<ore:diamondNugget>, <ore:diamondNugget>, <ore:diamondNugget>],
							   [<ore:diamondNugget>, <ore:diamondNugget>, <ore:diamondNugget>]]);
recipes.addShaped(<minecraft:iron_ingot>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
                               [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
							   [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);


// Fuels
recipes.remove(fuel1);
recipes.remove(fuel2);
recipes.removeShapeless(coal);
recipes.addShapeless(<minecraft:coal>*8, [pstone, fuel1]);
recipes.addShapeless(fuel1, [pstone, coal, coal, coal, coal, coal, coal, coal, coal]);
recipes.addShapeless(fuel1*9 , [fuelb1]);
recipes.addShapeless(fuel1*8, [pstone, fuel2]);
recipes.addShapeless(fuel2, [pstone, fuel1, fuel1, fuel1, fuel1, fuel1, fuel1, fuel1, fuel1]);
recipes.addShapeless(fuel2*9 , [fuelb2]);
recipes.addShapeless(fuel2*4, [pstone, fuel3]);
furnace.setFuel(fuel1, 6400);
furnace.setFuel(fuelb1, 64000);
furnace.setFuel(fuel2, 51200);
furnace.setFuel(fuelb2, 512000);
furnace.setFuel(fuel3, 204800);
furnace.setFuel(fuelb3, 2048000);


// Philosopher's Stone
recipes.remove(pstone);
recipes.addShaped(pstone, [[<minecraft:redstone> * 1, <minecraft:glowstone_dust> * 1, <minecraft:redstone> * 1],
                           [<minecraft:glowstone_dust> * 1, <ore:ingotIron>, <minecraft:glowstone_dust> * 1], 
						   [<minecraft:redstone> * 1, <minecraft:glowstone_dust>, <minecraft:redstone> * 1]]);
recipes.addShaped(pstone, [[<minecraft:glowstone_dust> * 1, <minecraft:redstone> * 1, <minecraft:glowstone_dust> * 1],
                           [<minecraft:redstone> * 1, <ore:ingotIron>, <minecraft:redstone> * 1], 
						   [<minecraft:glowstone_dust> * 1, <minecraft:redstone> * 1, <minecraft:glowstone_dust> * 1]]);



// Matters
// To be able to get research notes, comment out the setVirtual lines on PE_DARKMATTERBASE and PE_REDMATTERBASE
mods.thaumcraft.Research.addResearch("PE_DARKMATTERBASE", "BASICS", "ignis 1, aer 1", 0, -3, 1, dm);
mods.thaumcraft.Research.setRound("PE_DARKMATTERBASE", true);
mods.thaumcraft.Research.setVirtual("PE_DARKMATTERBASE", true);
game.setLocalization("en_US", "tc.research_name.PE_DARKMATTERBASE", "Unlock Dark Matter research");
game.setLocalization("en_US", "tc.research_text.PE_DARKMATTERBASE", "[Magicality] Right-click to enable Dark Matter research.");
game.setLocalization("en_US", "tc.research_page.PE_DARKMATTERBASE", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_DARKMATTERBASE", "tc.research_page.PE_DARKMATTERBASE");

mods.thaumcraft.Research.addResearch("PE_REDMATTERBASE", "BASICS", "ignis 1, aer 1", 2, -3, 1, rm);
mods.thaumcraft.Research.setRound("PE_REDMATTERBASE", true);
mods.thaumcraft.Research.setVirtual("PE_REDMATTERBASE", true);
game.setLocalization("en_US", "tc.research_name.PE_REDMATTERBASE", "Unlock Red Matter research");
game.setLocalization("en_US", "tc.research_text.PE_REDMATTERBASE", "[Magicality] Right-click to enable Red Matter research.");
game.setLocalization("en_US", "tc.research_page.PE_REDMATTERBASE", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_REDMATTERBASE", "tc.research_page.PE_REDMATTERBASE");

mods.thaumcraft.Research.addResearch("PE_DARKMATTER", "BASICS", "potentia 4, permutatio 4, ordo 2", 0, -4, 2, dm);
mods.thaumcraft.Research.setRound("PE_DARKMATTER", true);
mods.thaumcraft.Research.setConcealed("PE_DARKMATTER", true);
game.setLocalization("en_US", "tc.research_name.PE_DARKMATTER", "Dark matter");
game.setLocalization("en_US", "tc.research_text.PE_DARKMATTER", "[Magicality] In the dark, no one sees you scram.");
game.setLocalization("en_US", "tc.research_page.PE_DARKMATTER", "Your longed for a way to compress energy into a more condense form. Finally your research yielded a first result.<BR/>You also believe this item will allow you to craft more powerful artefacts.");
mods.thaumcraft.Research.addPage("PE_DARKMATTER", "tc.research_page.PE_DARKMATTER");
mods.thaumcraft.Research.addPrereq("PE_DARKMATTER", "PE_DARKMATTERBASE", true);
mods.thaumcraft.Arcane.addShaped("PE_DARKMATTER", dm, "ordo 20, ignis 20",
						[[aefuel, aefuel, aefuel],
						 [aefuel, diamondb, aefuel],
						 [aefuel, aefuel, aefuel]]);
mods.thaumcraft.Research.addArcanePage("PE_DARKMATTER", dm);

mods.thaumcraft.Research.addResearch("PE_REDMATTER", "BASICS", "potentia 4, permutatio 4, ordo 2, vacuos 4, tempestas 2", 2, -4, 6, rm);
mods.thaumcraft.Research.setRound("PE_REDMATTER", true);
mods.thaumcraft.Research.setConcealed("PE_REDMATTER", true);
game.setLocalization("en_US", "tc.research_name.PE_REDMATTER", "Red matter");
game.setLocalization("en_US", "tc.research_text.PE_REDMATTER", "[Magicality] And nothing else matters...");
game.setLocalization("en_US", "tc.research_page.PE_REDMATTER", "Bending the rules of this world you found an even more efficient way to condense energy into matter.<BR/>Doubtlessly even more powerful items can spring from this discovery.");
mods.thaumcraft.Research.addPage("PE_REDMATTER", "tc.research_page.PE_REDMATTER");
mods.thaumcraft.Research.addPrereq("PE_REDMATTER", "PE_REDMATTERBASE", true);
mods.thaumcraft.Infusion.addRecipe("PE_REDMATTER", dm, [aefuel, aefuel, dm, aefuel, aefuel, aefuel, dm, aefuel], "potentia 32, ordo 32", rm, 8);
mods.thaumcraft.Research.addInfusionPage("PE_REDMATTER", rm);


// Storage blocks
recipes.removeShaped(<ProjectE:Matter Block> * 4, [[<ProjectE:item.pe_matter> * 1, <ProjectE:item.pe_matter> * 1], [<ProjectE:item.pe_matter> * 1, <ProjectE:item.pe_matter> * 1]]);
recipes.removeShaped(<ProjectE:Matter Block:1> * 4, [[<ProjectE:item.pe_matter:1> * 1, <ProjectE:item.pe_matter:1> * 1], [<ProjectE:item.pe_matter:1> * 1, <ProjectE:item.pe_matter:1> * 1]]);
recipes.remove(dm);
recipes.remove(rm);
recipes.addShaped(dmb, [[dm, dm, dm],
                        [dm, dm, dm],
                        [dm, dm, dm]]);
recipes.addShaped(rmb, [[rm, rm, rm],
                        [rm, rm, rm],
                        [rm, rm, rm]]);
recipes.addShapeless(dm * 9, [dmb]);
recipes.addShapeless(rm * 9, [rmb]);

// Tablet
recipes.remove(tablet);
recipes.addShaped(tablet, [[obsidian, stone, obsidian],
                           [stone, tstone, stone],
                           [obsidian, stone, obsidian]]);


// void base
mods.thaumcraft.Research.addResearch("PE_BASEITEM", "ELDRITCH", "alienis 2, fabrico 2, praecantatio 2", 0, 2, 4, ring);
mods.thaumcraft.Research.setRound("PE_BASEITEM", true);
mods.thaumcraft.Research.setAutoUnlock("PE_BASEITEM", true);
game.setLocalization("en_US", "tc.research_name.PE_BASEITEM", "Interdisciplinary Magic");
game.setLocalization("en_US", "tc.research_text.PE_BASEITEM", "[Magicality] Mushing magic together");
game.setLocalization("en_US", "tc.research_page.PE_BASEITEM", "Whispers in your dreams have told you of a unique feature of the void. It allows you to mix magic of different disciplines and create new items of unprecedented power.<BR/>Apparently most of these items require raw energy to work.");
mods.thaumcraft.Research.addPage("PE_BASEITEM", "tc.research_page.PE_BASEITEM");
mods.thaumcraft.Research.addPrereq("PE_BASEITEM", "ELDRITCHMINOR", false);


// Repair Talisman
recipes.remove(talisman);

mods.thaumcraft.Research.addResearch("PE_TALISMAN", "ELDRITCH", "alienis 2, fabrico 2, instrumentum 2, machina 2, praecantatio 2, spiritus 2", -2, 2, 8, talisman);
mods.thaumcraft.Research.setConcealed("PE_TALISMAN", true);
game.setLocalization("en_US", "tc.research_name.PE_TALISMAN", "Convenient Repair");
game.setLocalization("en_US", "tc.research_text.PE_TALISMAN", "[Magicality] Automagic item repair");

mods.thaumcraft.Infusion.addRecipe("PE_TALISMAN", restorer, [erebusGoop, manaBlock, goldenThread, fancyLapis, erebusGoop, fancyLapis, goldenThread, manaBlock], "alienis 64, fabrico 64, potentia 128, spiritus 64", talisman, 15);

//game.setLocalization("en_US", "tc.research_page.PE_TALISMAN", "You had created a fancy mechanism to repair your items, but being the lazy thaumaturge you are, providing all that essentia is too troublesome.<BR/>In your travels through the dimensions you have found a rare substance that seems to have innate restorative properties. Combining that with some magicks from other disciplines and fancy decoration has yielded you the object you desire, item repair for free and it's even portable!<BR>Now if only you could remember which dimension it was and what chittering menace you had to murder to get this stuff...");
game.setLocalization("en_US", "tc.research_page.PE_TALISMAN", "You had created a fancy mechanism to repair your items, but being the lazy thaumaturge you are, providing all that essentia is too troublesome.<BR/>In your travels through the dimensions you have found a rare substance that seems to have innate restorative properties. Combining that with some magicks from other disciplines and fancy decoration has yielded you the object you desire, item repair for free and it's even portable!");
mods.thaumcraft.Research.addPage("PE_TALISMAN", "tc.research_page.PE_TALISMAN");
mods.thaumcraft.Research.addInfusionPage("PE_TALISMAN", talisman);

mods.thaumcraft.Research.addPrereq("PE_TALISMAN", "PE_BASEITEM", false);
mods.thaumcraft.Research.addPrereq("PE_TALISMAN", "REPAIRER", true);


// Watch of flowing time
recipes.remove(timewatch);

mods.thaumcraft.Research.addResearch("PE_WATCH", "ELDRITCH", "alienis 2, instrumentum 2, machina 2, praecantatio 2, potentia 2", -2, 3, 8, timewatch);
mods.thaumcraft.Research.setConcealed("PE_WATCH", true);
game.setLocalization("en_US", "tc.research_name.PE_WATCH", "Faster!");
game.setLocalization("en_US", "tc.research_text.PE_WATCH", "[Magicality] But who watches the watches?");

mods.thaumcraft.Infusion.addRecipe("PE_WATCH", clock, [sigilHaste, clock1, timeLog, clock5, timeLog, clock2, sigilMiner, clock3, timeLog, clock6, timeLog, clock4], "alienis 64,potentia 128, perditio 64, auram 32", timewatch, 16);

game.setLocalization("en_US", "tc.research_page.PE_WATCH", "Time, not enough time! You need things to work faster!<BR/>Fortunately you found a way to create an item that allows you to speed up processes that usually require too long for your taste.<BR/><BR/>Careful though, things may break if run too fast.");
mods.thaumcraft.Research.addPage("PE_WATCH", "tc.research_page.PE_WATCH");
mods.thaumcraft.Research.addInfusionPage("PE_WATCH", timewatch);

mods.thaumcraft.Research.addPrereq("PE_WATCH", "PE_BASEITEM", false);
mods.thaumcraft.Research.addPrereq("PE_WATCH", "MAGICHOURGLASS", true);


// Swiftwolf's rending gale
recipes.remove(swiftwolf);

mods.thaumcraft.Research.addResearch("PE_SWIFTWOLF", "ELDRITCH", "alienis 2, instrumentum 2, volatus 2, praecantatio 2, iter 2", -2, 4, 8, swiftwolf);
mods.thaumcraft.Research.setConcealed("PE_SWIFTWOLF", true);
game.setLocalization("en_US", "tc.research_name.PE_SWIFTWOLF", "Fly like a bird!");
game.setLocalization("en_US", "tc.research_text.PE_SWIFTWOLF", "[Magicality] They're flying away into the sky!");

mods.thaumcraft.Infusion.addRecipe("PE_SWIFTWOLF", ring, [harness, girdle, flybroom, tiara, sigilAir, angelicfeather, decobroom, stabbelt], "alienis 64, potentia 64, volatus 128, iter 32", swiftwolf, 16);

game.setLocalization("en_US", "tc.research_page.PE_SWIFTWOLF", "Many a way you have found to launch yourself into the air, some stable, some less so.<BR/>Finally you discovered a way to combine them all into the perfect flight artefact.");
mods.thaumcraft.Research.addPage("PE_SWIFTWOLF", "tc.research_page.PE_SWIFTWOLF");
mods.thaumcraft.Research.addInfusionPage("PE_SWIFTWOLF", swiftwolf);

mods.thaumcraft.Research.addPrereq("PE_SWIFTWOLF", "PE_BASEITEM", false);
mods.thaumcraft.Research.addPrereq("PE_SWIFTWOLF", "HOVERGIRDLE", true);
mods.thaumcraft.Research.addPrereq("PE_SWIFTWOLF", "STABILIZERBELT", true);


// Body, soul & life
recipes.remove(body);
recipes.remove(soul);
recipes.remove(life);

mods.thaumcraft.Research.addResearch("PE_STONES", "ALCHEMY", "sano 2, gula 2, victus 2, aqua 2", -5, -7, 6, life);
mods.thaumcraft.Research.setConcealed("PE_STONES", true);
game.setLocalization("en_US", "tc.research_name.PE_STONES", "Mens sana in corpore sano");
game.setLocalization("en_US", "tc.research_text.PE_STONES", "[Magicality] Mending the body and the soap.");

mods.thaumcraft.Infusion.addRecipe("PE_STONES", soap, [notch,appletart,rm,chocoapple,princessclam,cassistart,rm,yuzutart], "sano 32, gula 16, victus 32", body, 5);
mods.thaumcraft.Infusion.addRecipe("PE_STONES", soap, [notch,roseoil,rm,teaice,poppetdeath,chickenstew,rm,berryice], "sano 64, spiritus 16, victus 32", soul, 8);
mods.thaumcraft.Arcane.addShapeless("PE_STONES", life, "aqua 20, ordo 40", [body, soul]);

game.setLocalization("en_US", "tc.research_page.PE_STONES1", "Research to combat warp has lead to a couple of side discoveries that allow you to shed some of your mortality, at least if you have some energy around.<BR/><BR/>Your first discovery is the body stone, carved from magic soap. It allows you to leave behind the mundane need to sustain yourself, removing mortal hunger.<BR/>You find this highly useful as it seems to be able to even combat the unnatural hunger you had come over you from warp.");
game.setLocalization("en_US", "tc.research_page.PE_STONES2", "Your second discovery is the soul stone, likewise carved from magic soap. As long as you have energy, it heals you.<BR/>But careful, loose health too fast and you can still die.");
game.setLocalization("en_US", "tc.research_page.PE_STONES3", "Finally, pressed for inventory space, in frustration you smashed together a body and a soul stone, destroying them both.<BR/>With some research and some magic this worked much better.");
mods.thaumcraft.Research.addPage("PE_STONES", "tc.research_page.PE_STONES1");
mods.thaumcraft.Research.addInfusionPage("PE_STONES", body);
mods.thaumcraft.Research.addPage("PE_STONES", "tc.research_page.PE_STONES2");
mods.thaumcraft.Research.addInfusionPage("PE_STONES", soul);
mods.thaumcraft.Research.addPage("PE_STONES", "tc.research_page.PE_STONES3");
mods.thaumcraft.Research.addArcanePage("PE_STONES", life);

mods.thaumcraft.Research.addPrereq("PE_STONES", "SANESOAP", false);


