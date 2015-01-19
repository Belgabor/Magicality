var gemhelmet = <ProjectE:item.pe_gem_armor_0>;
var gemchest = <ProjectE:item.pe_gem_armor_1>;
var gemlegs = <ProjectE:item.pe_gem_armor_2>;
var gemboots = <ProjectE:item.pe_gem_armor_3>;
var ostar = <ProjectE:item.pe_klein_star:5>;

var thelmet = <Botania:terrasteelHelmReveal>;
var tchest = <Botania:terrasteelChest>;
var tlegs = <Botania:terrasteelLegs>;
var tboots = <Botania:terrasteelBoots>;
var rmana =  <Botania:rune:8>;
var rlust =  <Botania:rune:9>;
var rgluttony =  <Botania:rune:10>;
var rgreed =  <Botania:rune:11>;
var rsloth =  <Botania:rune:12>;
var rwrath =  <Botania:rune:13>;
var renvy =  <Botania:rune:14>;
var rpride =  <Botania:rune:15>;

var nstar = <minecraft:nether_star>;

var rplate = <AWWayofTime:bloodMagicBaseItems:17>;

// Tin Silver Lead Ferrous
var helmet1 = <ThermalFoundation:material:129>;
var chest1 = <ThermalFoundation:material:130>;
var legs1 = <ThermalFoundation:material:131>;
var boots1 = <ThermalFoundation:material:132>;
// Shiny Mana Infused Electrum Invar
var helmet2 = <ThermalFoundation:material:133>;
var chest2 = <ThermalFoundation:material:134>;
var legs2 = <ThermalFoundation:material:135>;
var boots2 = <ThermalFoundation:material:136>;
// Bronze Signalum Lumium Enderium
var helmet3 = <ThermalFoundation:material:137>;
var chest3 = <ThermalFoundation:material:138>;
var legs3 = <ThermalFoundation:material:139>;
var boots3 = <ThermalFoundation:material:140>;


// Clean slate
recipes.remove(helmet1);
recipes.remove(chest1);
recipes.remove(legs1);
recipes.remove(boots1);
recipes.remove(helmet2);
recipes.remove(chest2);
recipes.remove(legs2);
recipes.remove(boots2);
recipes.remove(helmet3);
recipes.remove(chest3);
recipes.remove(legs3);
recipes.remove(boots3);

recipes.remove(gemhelmet);
recipes.remove(gemchest);
recipes.remove(gemlegs);
recipes.remove(gemboots);


// Step 1
helmet1.addTooltip("This armour piece needs further improvement before it can be worn...");
chest1.addTooltip("This armour piece needs further improvement before it can be worn...");
legs1.addTooltip("This armour piece needs further improvement before it can be worn...");
boots1.addTooltip("This armour piece needs further improvement before it can be worn...");
mods.bloodmagic.Altar.addRecipe(helmet1, thelmet, 5, 100000, 20, 20);
mods.bloodmagic.Altar.addRecipe(chest1, tchest, 5, 100000, 20, 20);
mods.bloodmagic.Altar.addRecipe(legs1, tlegs, 5, 100000, 20, 20);
mods.bloodmagic.Altar.addRecipe(boots1, tboots, 5, 100000, 20, 20);

// Step 2
helmet2.addTooltip("This armour piece needs further improvement before it can be worn...");
chest2.addTooltip("This armour piece needs further improvement before it can be worn...");
legs2.addTooltip("This armour piece needs further improvement before it can be worn...");
boots2.addTooltip("This armour piece needs further improvement before it can be worn...");
mods.bloodmagic.Alchemy.addRecipe(helmet2, [helmet1, rgluttony, renvy, nstar, rplate], 5, 1000000);
mods.bloodmagic.Alchemy.addRecipe(chest2, [chest1, rgreed, rpride, nstar, rplate], 5, 1000000);
mods.bloodmagic.Alchemy.addRecipe(legs2, [legs1, rlust, rsloth, nstar, rplate], 5, 1000000);
mods.bloodmagic.Alchemy.addRecipe(boots2, [boots1, rmana, rwrath, nstar, rplate], 5, 1000000);

// TC basics
mods.thaumcraft.Research.addResearch("PE_GEMHELMETB", "ARTIFICE", "ignis 1, aer 1", -4, 10, 1, gemhelmet);
mods.thaumcraft.Research.setRound("PE_GEMHELMETB", true);
mods.thaumcraft.Research.setVirtual("PE_GEMHELMETB", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMHELMETB", "Unlock Gem Helmet research");
game.setLocalization("en_US", "tc.research_text.PE_GEMHELMETB", "[Magicality] Right-click to enable Gem Helmet research.");
game.setLocalization("en_US", "tc.research_page.PE_GEMHELMETB", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMHELMETB", "tc.research_page.PE_GEMHELMETB");

mods.thaumcraft.Research.addResearch("PE_GEMHELMET", "ARTIFICE", "tutamen 4, vitreus 2, permutatio 2, victus 2", -4, 11, 8, gemhelmet);
mods.thaumcraft.Research.setConcealed("PE_GEMHELMET", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMHELMET", "Gem Helmet");
game.setLocalization("en_US", "tc.research_text.PE_GEMHELMET", "[Magicality] Protecting the noggin.");
game.setLocalization("en_US", "tc.research_page.PE_GEMHELMET", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMHELMET", "tc.research_page.PE_GEMHELMET");
mods.thaumcraft.Research.addPrereq("PE_GEMHELMET", "PE_GEMHELMETB", true);

mods.thaumcraft.Research.addResearch("PE_GEMCHESTB", "ARTIFICE", "ignis 1, aer 1", -2, 10, 1, gemchest);
mods.thaumcraft.Research.setRound("PE_GEMCHESTB", true);
mods.thaumcraft.Research.setVirtual("PE_GEMCHESTB", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMCHESTB", "Unlock Gem Chestplate research");
game.setLocalization("en_US", "tc.research_text.PE_GEMCHESTB", "[Magicality] Right-click to enable Gem Chestplate research.");
game.setLocalization("en_US", "tc.research_page.PE_GEMCHESTB", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMCHESTB", "tc.research_page.PE_GEMCHESTB");

mods.thaumcraft.Research.addResearch("PE_GEMCHEST", "ARTIFICE", "tutamen 4, vitreus 2, permutatio 2, ignis 2", -2, 11, 8, gemchest);
mods.thaumcraft.Research.setConcealed("PE_GEMCHEST", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMCHEST", "Gem Chestplate");
game.setLocalization("en_US", "tc.research_text.PE_GEMCHEST", "[Magicality] Don't break my heart!");
game.setLocalization("en_US", "tc.research_page.PE_GEMCHEST", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMCHEST", "tc.research_page.PE_GEMCHEST");
mods.thaumcraft.Research.addPrereq("PE_GEMCHEST", "PE_GEMCHESTB", true);

mods.thaumcraft.Research.addResearch("PE_GEMLEGSB", "ARTIFICE", "ignis 1, aer 1", -4, 12, 1, gemlegs);
mods.thaumcraft.Research.setRound("PE_GEMLEGSB", true);
mods.thaumcraft.Research.setVirtual("PE_GEMLEGSB", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMLEGSB", "Unlock Gem Leggings research");
game.setLocalization("en_US", "tc.research_text.PE_GEMLEGSB", "[Magicality] Right-click to enable Gem Leggings research.");
game.setLocalization("en_US", "tc.research_page.PE_GEMLEGSB", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMLEGSB", "tc.research_page.PE_GEMLEGSB");

mods.thaumcraft.Research.addResearch("PE_GEMLEGS", "ARTIFICE", "tutamen 4, vitreus 2, permutatio 2, vacuos 2", -4, 13, 8, gemlegs);
mods.thaumcraft.Research.setConcealed("PE_GEMLEGS", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMLEGS", "Gem Leggings");
game.setLocalization("en_US", "tc.research_text.PE_GEMLEGS", "[Magicality] Don't need no Darwin Award.");
game.setLocalization("en_US", "tc.research_page.PE_GEMLEGS", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMLEGS", "tc.research_page.PE_GEMLEGS");
mods.thaumcraft.Research.addPrereq("PE_GEMLEGS", "PE_GEMLEGSB", true);

mods.thaumcraft.Research.addResearch("PE_GEMBOOTSB", "ARTIFICE", "ignis 1, aer 1", -2, 12, 1, gemboots);
mods.thaumcraft.Research.setRound("PE_GEMBOOTSB", true);
mods.thaumcraft.Research.setVirtual("PE_GEMBOOTSB", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMBOOTSB", "Unlock Gem Boots research");
game.setLocalization("en_US", "tc.research_text.PE_GEMBOOTSB", "[Magicality] Right-click to enable Gem Boots research.");
game.setLocalization("en_US", "tc.research_page.PE_GEMBOOTSB", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMBOOTSB", "tc.research_page.PE_GEMBOOTSB");

mods.thaumcraft.Research.addResearch("PE_GEMBOOTS", "ARTIFICE", "tutamen 4, vitreus 2, permutatio 2, volatus 2", -2, 13, 8, gemboots);
mods.thaumcraft.Research.setConcealed("PE_GEMBOOTS", true);
game.setLocalization("en_US", "tc.research_name.PE_GEMBOOTS", "Gem Boots");
game.setLocalization("en_US", "tc.research_text.PE_GEMBOOTS", "[Magicality] There are made for walking all over anything.");
game.setLocalization("en_US", "tc.research_page.PE_GEMBOOTS", "Nothing to see here.");
mods.thaumcraft.Research.addPage("PE_GEMBOOTS", "tc.research_page.PE_GEMBOOTS");
mods.thaumcraft.Research.addPrereq("PE_GEMBOOTS", "PE_GEMBOOTSB", true);


// Step 3
helmet3.addTooltip("This armour piece needs further improvement before it can be worn...");
chest3.addTooltip("This armour piece needs further improvement before it can be worn...");
legs3.addTooltip("This armour piece needs further improvement before it can be worn...");
boots3.addTooltip("This armour piece needs further improvement before it can be worn...");
mods.thaumcraft.Crucible.addRecipe("PE_GEMHELMET", helmet3, helmet2, "desidia 64, gula 64, invidia 64, ira 64, luxuria 64, superbia 64");
mods.thaumcraft.Research.addCruciblePage("PE_GEMHELMET", helmet3);
mods.thaumcraft.Crucible.addRecipe("PE_GEMCHEST", chest3, chest2, "desidia 64, gula 64, invidia 64, ira 64, luxuria 64, superbia 64");
mods.thaumcraft.Research.addCruciblePage("PE_GEMCHEST", chest3);
mods.thaumcraft.Crucible.addRecipe("PE_GEMLEGS", legs3, legs2, "desidia 64, gula 64, invidia 64, ira 64, luxuria 64, superbia 64");
mods.thaumcraft.Research.addCruciblePage("PE_GEMLEGS", legs3);
mods.thaumcraft.Crucible.addRecipe("PE_GEMBOOTS", boots3, boots2, "desidia 64, gula 64, invidia 64, ira 64, luxuria 64, superbia 64");
mods.thaumcraft.Research.addCruciblePage("PE_GEMBOOTS", boots3);


// Step 4
mods.thaumcraft.Infusion.addRecipe("PE_GEMHELMET", helmet3, 
	[<AWWayofTime:boundHelmet>, <Botania:manasteelHelm>, <Botania:elementiumHelm>, <Thaumcraft:ItemHelmetFortress>,
	 <TwilightForest:item.yetiHelm>, <witchery:hunterhat>, <Botania:waterRing>, <xreliquary:phoenix_down>,
	 <ThaumicExploration:talismanFood>, <ProjectE:item.pe_soul_stone>, <ProjectE:item.pe_evertide_amulet>, ostar],
	"permutatio 128, tutamen 256, victus 128", gemhelmet, 15);
mods.thaumcraft.Research.addInfusionPage("PE_GEMHELMET", gemhelmet);
mods.thaumcraft.Infusion.addRecipe("PE_GEMCHEST", chest3, 
	[<AWWayofTime:boundPlate>, <Botania:manasteelChest>, <Botania:elementiumChest>, <Thaumcraft:ItemChestplateFortress>,
	 <TwilightForest:item.steeleafPlate>, <witchery:huntercoat>, <Botania:lavaPendant>, <xreliquary:claws_of_the_firedrinker>,
	 <Automagy:baubleEnderDisjunction>, <ProjectE:item.pe_body_stone>, <ProjectE:item.pe_volcanite_amulet>, ostar],
	"permutatio 128, tutamen 256, ignis 128", gemchest, 15);
mods.thaumcraft.Research.addInfusionPage("PE_GEMCHEST", gemchest);
mods.thaumcraft.Infusion.addRecipe("PE_GEMLEGS", legs3, 
	[<AWWayofTime:boundLeggings>, <Botania:manasteelLegs>, <Botania:elementiumLegs>, <Thaumcraft:ItemLeggingsFortress>,
	 <TwilightForest:item.knightlyLegs>, <witchery:hunterlegs>, <Botania:magnetRing>, <xreliquary:fortune_coin>,
	 <ForbiddenMagic:ArcaneCakeItem>, <ProjectE:item.pe_black_hole>, <ProjectE:item.pe_time_watch>, ostar],
	"permutatio 128, tutamen 256, vacuos 128", gemlegs, 15);
mods.thaumcraft.Research.addInfusionPage("PE_GEMLEGS", gemlegs);
mods.thaumcraft.Infusion.addRecipe("PE_GEMBOOTS", boots3, 
	[<AWWayofTime:boundBoots>, <Botania:manasteelBoots>, <Botania:elementiumBoots>, <ThaumicExploration:bootsMeteor>,
	 <TwilightForest:item.fieryBoots>, <witchery:hunterboots>, <Botania:rainbowRod>, <xreliquary:witherless_rose>,
	 <witchery:iceslippers>, <ProjectE:item.pe_swrg>, <ProjectE:item.pe_swrg>, ostar],
	"permutatio 128, tutamen 256, volatus 128", gemboots, 15);
mods.thaumcraft.Research.addInfusionPage("PE_GEMBOOTS", gemboots);
