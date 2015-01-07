var knife = <AWWayofTime:sacrificialKnife>;
var sigilAir = <AWWayofTime:airSigil>;
var bmshard1 = <AWWayofTime:weakBloodShard>;
var bmshard2 = <AWWayofTime:demonBloodShard>;
var orb1 = <AWWayofTime:weakBloodOrb>;
var orb2 = <AWWayofTime:apprenticeBloodOrb>;
var orb3 = <AWWayofTime:magicianBloodOrb>;
var orb4 = <AWWayofTime:masterBloodOrb>;
var orb5 = <AWWayofTime:archmageBloodOrb>;
var orb6 = <ForbiddenMagic:EldritchOrb>;
var vanilla2 = <minecraft:emerald>;
var vanilla3 = <minecraft:gold_block>;
var vanilla4 = bmshard1;
var slate3 = <AWWayofTime:imbuedSlate>;
var slate4 = <AWWayofTime:demonicSlate>;
var trophyUrGhast = <TwilightForest:item.trophy:3>;
var carminite = <TwilightForest:item.carminite>;
var tear = <minecraft:ghast_tear>;
var modded2 = <witchery:ingredient:11>;
var modded3 = <witchery:ingredient:23>;
var modded4 = trophyUrGhast;
var emptySocket = <AWWayofTime:emptySocket>;
var bloodSocket = <AWWayofTime:bloodSocket>;
var forge = <AWWayofTime:armourForge>;
var stone = <minecraft:stone>;
var stick = <ore:stickWood>;
var gold = <ore:ingotGold>;
var glass = <minecraft:glass>;
var flask = <AWWayofTime:alchemyFlask>;
var beacon = <minecraft:beacon>;


// Knife
recipes.remove(knife);
recipes.addShaped(knife, [[glass, glass, glass],
                          [null, gold, glass],
						  [stick, null, glass]]);


// Orb progression
mods.bloodmagic.Altar.removeRecipe(orb2);
mods.bloodmagic.Altar.removeRecipe(orb3);
mods.bloodmagic.Altar.removeRecipe(orb4);

mods.bloodmagic.Altar.addRecipe(orb2, modded2, 2, 5000, 5, 5);
mods.bloodmagic.Altar.addRecipe(orb3, modded3, 3, 25000, 20, 20);
mods.bloodmagic.Altar.addRecipe(orb4, modded4, 4, 40000, 30, 50);
mods.bloodmagic.Altar.addRecipe(orb2, vanilla2, 3, 5000, 5, 5);
mods.bloodmagic.Altar.addRecipe(orb3, vanilla3, 4, 25000, 20, 20);
mods.bloodmagic.Altar.addRecipe(orb4, vanilla4, 5, 40000, 30, 50);

mods.bloodmagic.BloodOrb.addShapeless(orb4, [orb4, bloodSocket]);

//Armor
mods.bloodmagic.Altar.removeRecipe(bloodSocket);
mods.bloodmagic.Altar.addRecipe(bloodSocket, emptySocket, 4, 40000, 40, 10);
mods.bloodmagic.BloodOrb.removeRecipe(forge);
mods.bloodmagic.BloodOrb.addShaped(forge,
	[[stone, bloodSocket,stone],
	[bloodSocket, orb5, bloodSocket],
	[stone, bloodSocket, stone]]);


// Air sigil
mods.bloodmagic.BloodOrb.removeRecipe(sigilAir);
mods.bloodmagic.BloodOrb.addShaped(sigilAir,
	[[tear, carminite, tear],
	[tear, slate4, tear],
	[tear, orb4, tear]]);

	
// Potions
mods.bloodmagic.Altar.removeRecipe(flask);
mods.bloodmagic.BloodOrb.addShaped(flask,
	[[glass, orb4, glass],
	[null, glass, null],
	[null, null, null]]);

	
// Beacon
recipes.remove(beacon);
mods.bloodmagic.BloodOrb.addShaped(beacon,
	[[glass, orb4, glass], 
	[glass, <minecraft:nether_star>, glass], 
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
