var emShard = <ForbiddenMagic:FMResource>;

<ore:limestone>.add(<BiomesOPlenty:rocks>);

var qb = <HardcoreQuesting:quest_book>;
qb.displayName = "Narronomicon";
qb.addTooltip("aka, the Quest Book");


// Deprecate Backpacks
<Backpack:backpack>.displayName = "DEPRECATED";
<Backpack:backpack:1>.displayName = "DEPRECATED";
<Backpack:backpack:2>.displayName = "DEPRECATED";
<Backpack:backpack:3>.displayName = "DEPRECATED";
<Backpack:backpack:4>.displayName = "DEPRECATED";
<Backpack:backpack:5>.displayName = "DEPRECATED";
<Backpack:backpack:6>.displayName = "DEPRECATED";
<Backpack:backpack:7>.displayName = "DEPRECATED";
<Backpack:backpack:8>.displayName = "DEPRECATED";
<Backpack:backpack:9>.displayName = "DEPRECATED";
<Backpack:backpack:10>.displayName = "DEPRECATED";
<Backpack:backpack:11>.displayName = "DEPRECATED";
<Backpack:backpack:12>.displayName = "DEPRECATED";
<Backpack:backpack:13>.displayName = "DEPRECATED";
<Backpack:backpack:14>.displayName = "DEPRECATED";
<Backpack:backpack:15>.displayName = "DEPRECATED";
<Backpack:backpack:16>.displayName = "DEPRECATED";
<Backpack:workbenchbackpack:17>.displayName = "DEPRECATED";
<Backpack:backpack:200>.displayName = "DEPRECATED";
<Backpack:backpack:201>.displayName = "DEPRECATED";
<Backpack:backpack:202>.displayName = "DEPRECATED";
<Backpack:backpack:203>.displayName = "DEPRECATED";
<Backpack:backpack:204>.displayName = "DEPRECATED";
<Backpack:backpack:205>.displayName = "DEPRECATED";
<Backpack:backpack:206>.displayName = "DEPRECATED";
<Backpack:backpack:207>.displayName = "DEPRECATED";
<Backpack:backpack:208>.displayName = "DEPRECATED";
<Backpack:backpack:209>.displayName = "DEPRECATED";
<Backpack:backpack:210>.displayName = "DEPRECATED";
<Backpack:backpack:211>.displayName = "DEPRECATED";
<Backpack:backpack:212>.displayName = "DEPRECATED";
<Backpack:backpack:213>.displayName = "DEPRECATED";
<Backpack:backpack:214>.displayName = "DEPRECATED";
<Backpack:backpack:215>.displayName = "DEPRECATED";
<Backpack:backpack:216>.displayName = "DEPRECATED";
<Backpack:workbenchbackpack:217>.displayName = "DEPRECATED";
<Backpack:backpack:31999>.displayName = "DEPRECATED";
<Backpack:backpack:*>.addTooltip("Will be removed in the next pack update!");
<Backpack:workbenchbackpack:*>.addTooltip("Will be removed in the next pack update!");


// Helpers
// Blaze spawn egg
mods.bloodmagic.Altar.addRecipe(<minecraft:spawn_egg:61>, <minecraft:blaze_powder>, 2, 10000, 40, 10);



// exploits
// FM emerald
mods.thaumcraft.Crucible.removeRecipe(emShard);
mods.thaumcraft.Crucible.addRecipe("TRANSEMERALD", emShard * 2, emShard, "lucrum 4, vitreus 4");
mods.thaumcraft.Research.refreshResearchRecipe("TRANSEMERALD");


// Mana alchemy
var glowstone = <minecraft:glowstone_dust>;
var glowstoneB = <minecraft:glowstone>;
var redstone = <minecraft:redstone>;
var cocoa = <minecraft:dye:3>;
var s_pumpkin = <minecraft:pumpkin_seeds>;
var rottenflesh = <minecraft:rotten_flesh>;
var leather = <minecraft:leather>;
var vines = <minecraft:vine>;
var lilypad = <minecraft:waterlily>;
var wheat = <minecraft:wheat>;
var potato = <minecraft:potato>;
var ppotato = <minecraft:poisonous_potato>;
var cactus = <minecraft:cactus>;
var slimeball = <minecraft:slime_ball>;
var cobble = <minecraft:cobblestone>;
var sand = <minecraft:sand>;
var quartz = <minecraft:quartz>;
var quartzB = <minecraft:quartz_block:*>;
var coal = <minecraft:coal>;
var soulsand = <minecraft:soul_sand>;
var gravel = <minecraft:gravel>;

mods.botania.ManaInfusion.removeRecipe(glowstone);
mods.botania.ManaInfusion.removeRecipe(glowstone);
mods.botania.ManaInfusion.removeRecipe(glowstone);
mods.botania.ManaInfusion.removeRecipe(redstone);
mods.botania.ManaInfusion.removeRecipe(redstone);
mods.botania.ManaInfusion.removeRecipe(cocoa);
mods.botania.ManaInfusion.removeRecipe(leather);
mods.botania.ManaInfusion.removeRecipe(lilypad);
mods.botania.ManaInfusion.removeRecipe(potato);
mods.botania.ManaInfusion.removeRecipe(potato);
mods.botania.ManaInfusion.removeRecipe(slimeball);
mods.botania.ManaInfusion.removeRecipe(sand);
mods.botania.ManaInfusion.removeRecipe(quartz);
mods.botania.ManaInfusion.removeRecipe(quartz);
mods.botania.ManaInfusion.removeRecipe(coal);
mods.botania.ManaInfusion.removeRecipe(soulsand);
mods.botania.ManaInfusion.removeRecipe(gravel);

mods.botania.ManaInfusion.addAlchemy(glowstone, redstone, 320000);
mods.botania.ManaInfusion.addAlchemy(glowstone * 4, glowstone, 1000);
mods.botania.ManaInfusion.addConjuration(glowstone * 2, glowstone, 384000);
mods.botania.ManaInfusion.addAlchemy(redstone, glowstone, 1000);
mods.botania.ManaInfusion.addConjuration(redstone * 2, redstone, 64000);
mods.botania.ManaInfusion.addAlchemy(cocoa, s_pumpkin, 112000);
mods.botania.ManaInfusion.addAlchemy(leather, rottenflesh, 32000);
mods.botania.ManaInfusion.addAlchemy(potato, wheat, 40000);
mods.botania.ManaInfusion.addAlchemy(potato, ppotato, 1000);
mods.botania.ManaInfusion.addAlchemy(slimeball, cactus, 24000);
mods.botania.ManaInfusion.addAlchemy(sand, cobble, 3000);
mods.botania.ManaInfusion.addConjuration(quartz * 2, quartz, 256000);
mods.botania.ManaInfusion.addAlchemy(quartz * 4, quartzB, 1000);
mods.botania.ManaInfusion.addConjuration(coal * 2, coal, 32000);
mods.botania.ManaInfusion.addConjuration(soulsand * 2, soulsand, 49000);
mods.botania.ManaInfusion.addConjuration(gravel * 2, gravel, 4000);
