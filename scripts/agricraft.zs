


// Names
<AgriCraft:seedChrysalisred>.displayName="Red Chrysalis Seed";
<AgriCraft:seedChrysalisyellow>.displayName="Yellow Chrysalis Seed";
<AgriCraft:seedChrysalisblue>.displayName="Blue Chrysalis Seed";
<AgriCraft:seedChrysaliswhite>.displayName="White Chrysalis Seed";
<AgriCraft:seedChrysalisblack>.displayName="Black Chrysalis Seed";
<AgriCraft:seedChrysalisgreen>.displayName="Green Chrysalis Seed";


// AMT
recipes.remove(<DCsAppleMilk:defeatedcrow.saplingTea:2>);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea>, [<AgriCraft:seedTea>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:1>, [<AgriCraft:seedCassis>]);
recipes.addShapeless(<DCsAppleMilk:defeatedcrow.saplingTea:2>, [<AgriCraft:seedCamellia>]);
recipes.addShapeless(<AgriCraft:seedTea>, [<DCsAppleMilk:defeatedcrow.saplingTea>]);
recipes.addShapeless(<AgriCraft:seedCassis>, [<DCsAppleMilk:defeatedcrow.saplingTea:1>]);
recipes.addShapeless(<AgriCraft:seedCamellia>, [<DCsAppleMilk:defeatedcrow.saplingTea:2>]);


// Grass drops
vanilla.seeds.removeSeed(<witchery:seedsbelladonna>);
vanilla.seeds.removeSeed(<witchery:seedsmandrake>);
vanilla.seeds.removeSeed(<witchery:seedsartichoke>);
vanilla.seeds.removeSeed(<witchery:seedssnowbell>);
