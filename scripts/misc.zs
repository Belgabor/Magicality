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

// exploits
// FM emerald
mods.thaumcraft.Crucible.removeRecipe(emShard);
mods.thaumcraft.Crucible.addRecipe("TRANSEMERALD", emShard * 2, emShard, "lucrum 4, vitreus 4");
mods.thaumcraft.Research.refreshResearchRecipe("TRANSEMERALD");

