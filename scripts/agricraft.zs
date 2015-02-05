import mods.agricraft.CropProduct;

var crops = <AgriCraft:cropsItem>;
var sprinkler = <AgriCraft:sprinklerItem>;
var analyzer = <AgriCraft:seedAnalyzer>;
var trowel = <AgriCraft:trowel>;
var lw = <ore:livingwood>;
var lw_slab = <Botania:livingwood0Slab>;
var lr_slab = <Botania:livingrock0Slab>;
var lw_twig = <ore:livingwoodTwig>;
var dw_twig = <ore:dreamwoodTwig>;
var ms_ingot = <ore:ingotManasteel>;

var sliverAir = <Automagy:shardSliver>;
var sliverFire = <Automagy:shardSliver:1>;
var sliverWater = <Automagy:shardSliver:2>;
var sliverEarth = <Automagy:shardSliver:3>;
var sliverOrder = <Automagy:shardSliver:4>;
var sliverEntropy = <Automagy:shardSliver:5>;
var shardAir = <Thaumcraft:ItemShard>;
var shardFire = <Thaumcraft:ItemShard:1>;
var shardWater = <Thaumcraft:ItemShard:2>;
var shardEarth = <Thaumcraft:ItemShard:3>;
var shardOrder = <Thaumcraft:ItemShard:4>;
var shardEntropy = <Thaumcraft:ItemShard:5>;
var c_glass = 100;
var c_sliver = 25;


// Crops
recipes.remove(crops);
recipes.addShapeless(crops * 8, [lw_twig, lw_twig, lw_twig, lw_twig]);
recipes.addShapeless(crops * 32, [dw_twig, dw_twig, dw_twig, dw_twig]);

// Sprinkler
recipes.remove(sprinkler);
recipes.addShaped(sprinkler, [[null, <Botania:livingwood:3>, null], [null, <erebus:bambooPole>, null], [sliverWater, <ore:ingotElvenElementium>, sliverWater]]);

// Analyzer
recipes.remove(analyzer);
recipes.addShaped(analyzer, [[lw_twig, <ore:paneGlassColorless>, lw_twig], [null, lr_slab, lw_twig], [lw, lw_slab, lw]]);

// Trowel
recipes.remove(trowel);
recipes.addShaped(trowel, [[null, null, lw_twig], [ms_ingot, ms_ingot, null]]);


// Musrooms
recipes.addShapeless(<AgriCraft:seedShroomBrown>, [<minecraft:brown_mushroom>]);
recipes.addShapeless(<AgriCraft:seedShroomRed>, [<minecraft:red_mushroom>]);



// Produce
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, <DCsAppleMilk:defeatedcrow.condensedMilk:5>, c_glass);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverAir, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverFire, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverWater, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverEarth, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverOrder, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedChrysalis>, sliverEntropy, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedYellow Chrysalis>, sliverAir, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedYellow Chrysalis>, shardAir, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedRed Chrysalis>, sliverFire, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedRed Chrysalis>, shardFire, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedBlue Chrysalis>, sliverWater, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedBlue Chrysalis>, shardWater, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedGreen Chrysalis>, sliverEarth, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedGreen Chrysalis>, shardEarth, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedWhite Chrysalis>, sliverOrder, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedWhite Chrysalis>, shardOrder, 1);
mods.agricraft.CropProduct.add(<AgriCraft:seedBlack Chrysalis>, sliverEntropy, c_sliver);
mods.agricraft.CropProduct.add(<AgriCraft:seedBlack Chrysalis>, shardEntropy, 1);


// AMT
recipes.remove(<DCsAppleMilk:defeatedcrow.saplingTea:2>);
recipes.remove(<DCsAppleMilk:defeatedcrow.seedMint>);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea>, [<AgriCraft:seedTea>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:1>, [<AgriCraft:seedCassis>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:2>, [<AgriCraft:seedCamellia>]);
recipes.addShapeless(<AgriCraft:seedTea>, [<DCsAppleMilk:defeatedcrow.saplingTea>]);
recipes.addShapeless(<AgriCraft:seedCassis>, [<DCsAppleMilk:defeatedcrow.saplingTea:1>]);
recipes.addShapeless(<AgriCraft:seedCamellia>, [<DCsAppleMilk:defeatedcrow.saplingTea:2>]);
// mods.agricraft.CropProduct.add(<AgriCraft:seedKumquat>, <Thaumcraft:ItemManaBean>.withTag({Aspects: [{amount: 1, key: "herba"}]}), 1);


// Required materials
mods.botania.RuneAltar.addRecipe(<minecraft:packed_ice>, [<minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <minecraft:ice>, <Botania:rune:7>], 5000);


// Yuzu
recipes.remove(<DCsAppleMilk:defeatedcrow.saplingYuzu>);
mods.bloodmagic.Alchemy.addRecipe(<DCsAppleMilk:defeatedcrow.saplingYuzu>, [<Quadrum:kumquat>, <Quadrum:kumquat>, <Quadrum:kumquat>, <witchery:witchsapling>, <witchery:ingredient:14>], 1, 10000);


// Grass drops
vanilla.seeds.removeSeed(<witchery:seedsbelladonna>);
vanilla.seeds.removeSeed(<witchery:seedsmandrake>);
vanilla.seeds.removeSeed(<witchery:seedsartichoke>);
vanilla.seeds.removeSeed(<witchery:seedssnowbell>);
vanilla.seeds.removeSeed(<witchery:seedswolfsbane>);
