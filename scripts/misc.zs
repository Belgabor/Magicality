var emShard = <ForbiddenMagic:FMResource>;

<ore:limestone>.add(<BiomesOPlenty:rocks>);

var qb = <HardcoreQuesting:quest_book>;
qb.displayName = "Narronomicon";
qb.addTooltip("aka, the Quest Book");


// exploits
// FM emerald
mods.thaumcraft.Crucible.removeRecipe(emShard);
mods.thaumcraft.Crucible.addRecipe("TRANSEMERALD", emShard * 2, emShard, "lucrum 4, vitreus 4");
mods.thaumcraft.Research.refreshResearchRecipe("TRANSEMERALD");

