var ffunnel = <witchery:fumefunnel>;
var fish = <minecraft:fish:*>;
var fspawn = <minecraft:spawn_egg:60>;
var egg = <minecraft:egg>;
var qsilver = <Thaumcraft:ItemResource:3>;

recipes.remove(ffunnel);
recipes.addShaped(ffunnel,
	[[<minecraft:bucket>, <minecraft:lava_bucket>, <minecraft:bucket>],
	 [<minecraft:bucket>, <minecraft:glowstone>, <minecraft:bucket>],
	 [<ore:blockGold>, <minecraft:iron_bars>, <ore:blockGold>]]);


// Silverfish
mods.bloodmagic.Alchemy.addRecipe(fspawn, [fish, qsilver, egg], 3, 10000);
