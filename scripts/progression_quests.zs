var ironNugget = <ThermalFoundation:material:8>;
var goldIngot = <minecraft:gold_ingot>;
var bucket = <minecraft:bucket>;
var dhelmet = <minecraft:diamond_helmet>;
var dchest = <minecraft:diamond_chestplate>;
var dlegs = <minecraft:diamond_leggings>;
var dboots = <minecraft:diamond_boots>;
var dsword = <minecraft:diamond_sword>;
var dshovel = <minecraft:diamond_shovel>;
var dpick = <minecraft:diamond_pickaxe>;
var daxe = <minecraft:diamond_axe>;
var dia = <minecraft:diamond>;

var enchfabric = <Thaumcraft:ItemResource:7>;

var gthread = <witchery:ingredient:102>;
var ileather = <witchery:ingredient:72>;

var dstick = <ore:diamondGearStick>;
dstick.add(<Thaumcraft:WandRod>);
dstick.add(<DCsAppleMilk:defeatedcrow.stickCarbon>);

var orb2 = <AWWayofTime:apprenticeBloodOrb>;

var sonyx = <DCsAppleMilk:defeatedcrow.onixSword>;
var spanel = <DCsAppleMilk:defeatedcrow.slotPanel>;


mods.bloodmagic.Altar.addRecipe(ironNugget, goldIngot, 1, 1000, 5, 5);
//recipes.addShaped(bucket, [[goldIngot, null, goldIngot],
//                               [null, goldIngot, null]]);

							   
// Diamond Gear
recipes.remove(dhelmet);
mods.bloodmagic.BloodOrb.addShaped(dhelmet, [[dia, dia, dia], [enchfabric, orb2, enchfabric]]);
recipes.remove(dchest);
mods.bloodmagic.BloodOrb.addShaped(dchest,
	[[gthread, orb2, gthread],
	[dia, spanel, dia],
	[dia, ileather, dia]]);
recipes.remove(dlegs);
mods.bloodmagic.BloodOrb.addShaped(dlegs,
	[[dia, ileather, dia],
	[gthread, orb2, gthread],
	[dia, null, dia]]);
recipes.remove(dboots);
mods.bloodmagic.BloodOrb.addShaped(dboots, [[ileather, orb2, ileather], [dia, null, dia]]);
recipes.remove(dsword);
mods.bloodmagic.Altar.addRecipe(dsword, sonyx, 2, 5000, 5, 5);
recipes.remove(dshovel);
recipes.addShaped(dshovel, [[dia], [dstick], [dstick]]);
recipes.remove(dpick);
recipes.addShaped(dpick,
	[[dia, dia, dia],
	[null, dstick, null],
	[null, dstick, null]]);
recipes.remove(daxe);
recipes.addShaped(daxe, [[dia, dia], [dia, dstick], [null, dstick]]);
