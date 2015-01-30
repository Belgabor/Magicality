


// AMT
recipes.remove(<DCsAppleMilk:defeatedcrow.saplingTea:2>);
recipes.remove(<DCsAppleMilk:defeatedcrow.seedMint>);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea>, [<AgriCraft:seedTea>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:1>, [<AgriCraft:seedCassis>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:2>, [<AgriCraft:seedCamellia>]);
recipes.addShapeless(<AgriCraft:seedTea>, [<DCsAppleMilk:defeatedcrow.saplingTea>]);
recipes.addShapeless(<AgriCraft:seedCassis>, [<DCsAppleMilk:defeatedcrow.saplingTea:1>]);
recipes.addShapeless(<AgriCraft:seedCamellia>, [<DCsAppleMilk:defeatedcrow.saplingTea:2>]);


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
