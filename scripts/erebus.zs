var sticks = <ore:stickWood>;
var bamboo = <ore:stickBamboo>;
var saplings = <ore:bambooSapling>;
var planks = <ore:plankBamboo>;
var bop_bamboo = <BiomesOPlenty:bamboo>;
var e_bamboo = <erebus:materials:3>;


// Remove BoP bamboo from sticks to prevent EMC issues
sticks.remove(bop_bamboo);

// Make BoP shoot craftable
recipes.addShaped(<BiomesOPlenty:saplings:2> * 2, [[sticks, sticks, sticks], [sticks, <ore:treeSapling>, sticks], [sticks, sticks, sticks]]);


// Oredict setup
bamboo.add(bop_bamboo);
bamboo.add(e_bamboo);
saplings.add(<BiomesOPlenty:saplings:2>);
saplings.add(<erebus:materials:11>);
planks.add(<BiomesOPlenty:planks:10>);

// Bamboo Soup
recipes.remove(<erebus:food:6>);
recipes.addShapeless(<erebus:food:6>, [<minecraft:bowl>, bamboo, saplings]);

// Glider wing
recipes.remove(<erebus:materials:28> );
recipes.addShaped(<erebus:materials:28>, [[bamboo, bamboo, bamboo], [<erebus:materials:25> * 1, <erebus:materials:25> * 1, <erebus:materials:25> * 1], [<erebus:materials:25> * 1, <erebus:materials:25> * 1, <erebus:materials:25> * 1]]);

// Bambucket
recipes.remove(<erebus:bambucket>);
recipes.addShaped(<erebus:bambucket>, [[null, <minecraft:string>, null], [bamboo, null, bamboo], [null, bamboo, null]]);

// Bamboo Crate
recipes.remove(<erebus:bambooCrate>);
recipes.addShaped(<erebus:bambooCrate>, [[bamboo, planks, bamboo], [planks, null, planks], [bamboo, planks, bamboo]]);

// Bamboo Ladder
recipes.remove(<erebus:bambooLadder>);
recipes.addShaped(<erebus:bambooLadder>, [[bamboo, bamboo, bamboo], [<minecraft:string>, null, <minecraft:string>], [bamboo, bamboo, bamboo]]);

// Bamboo Bridge
recipes.remove(<erebus:bambooBridge>);
recipes.addShaped(<erebus:bambooBridge> * 3, [[<minecraft:string>, <minecraft:string>, <minecraft:string>], [bamboo, null, bamboo], [<erebus:bambooLadder>, <erebus:bambooLadder>, <erebus:bambooLadder>]]);

// Bamboo Nerdpole
recipes.remove(<erebus:bambooPole>);
recipes.addShaped(<erebus:bambooPole> * 4, [[<minecraft:slime_ball>], [bamboo], [bamboo]]);

// Bamboo Extender
recipes.remove(<erebus:extenderThingy>);
recipes.addShaped(<erebus:extenderThingy>, [[bamboo, <minecraft:string>, bamboo], [planks, <minecraft:dispenser:*>, planks], [bamboo, <minecraft:redstone>, bamboo]]);

// Bamboo Torch
recipes.remove(<erebus:bambooTorch>);
recipes.addShaped(<erebus:bambooTorch> * 4, [[<ore:coal>], [bamboo], [bamboo]]);
recipes.addShaped(<erebus:bambooTorch> * 4, [[<ore:charcoal>], [bamboo], [bamboo]]);
