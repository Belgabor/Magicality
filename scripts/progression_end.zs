var enderEye = <minecraft:ender_eye>;
var enderPearl = <minecraft:ender_pearl>;
var blazePowder = <minecraft:blaze_powder>;
var endStone = <minecraft:end_stone>;
var enderDew = <witchery:ingredient:67>;
var ruEnderPearl = <enderutilities:enderpearlreusable>;

var copperGear = <ThermalFoundation:material:128>;
var goldGear = <ThermalFoundation:material:13>;
var nagaScale = <TwilightForest:item.nagaScale>;
var fieryBlood = <TwilightForest:item.fieryBlood>;
var carminiteReactor = <TwilightForest:tile.TFTowerDevice:12>;
var armorShard = <TwilightForest:item.armorShards>;

var portal = <minecraft:end_portal_frame>;
var obsidian = <minecraft:obsidian>;
var avaricePearl = <Automagy:avaricePearl>;


// End stone
mods.botania.RuneAltar.addRecipe(endStone * 4, [enderEye, enderDew, ruEnderPearl], 500000);


// Ender Eye
recipes.remove(enderEye);
mods.botania.ElvenTrade.addRecipe(enderEye, [enderPearl, blazePowder]);
enderEye.addTooltip("Maybe the elves know how to get a hold on one of these?");


// Inert Core
recipes.remove(copperGear); // Copper Gear
recipes.addShaped(copperGear, [[fieryBlood, armorShard, fieryBlood],
                               [nagaScale, carminiteReactor, nagaScale],
							   [fieryBlood, armorShard, fieryBlood]]);


// Core
recipes.remove(goldGear);
mods.bloodmagic.Altar.addRecipe(goldGear, copperGear, 5, 100000, 5, 5);


// Frame
recipes.addShaped(portal*12, [[obsidian, null, obsidian],
                              [endStone, avaricePearl, endStone],
							  [endStone, goldGear, endStone]]);
