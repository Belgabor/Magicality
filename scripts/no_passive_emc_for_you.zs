var collMK1 = <ProjectE:collector_mk1>;
var collMK2 = <ProjectE:collector_mk2>;
var collMK3 = <ProjectE:collector_mk3>;
var relMK1 = <ProjectE:relay_mk1>;
var relMK2 = <ProjectE:relay_mk2>;
var relMK3 = <ProjectE:relay_mk3>;
var netherBlock = <ore:blockNetherStar>;
var ichorium = <ThaumicTinkerer:kamiResource:2>;
var ichoriumBlock = <ThermalFoundation:Storage:9>;
var glass = <ore:blockGlass>;

recipes.remove(collMK1);
recipes.remove(collMK2);
recipes.remove(collMK3);
recipes.remove(relMK1);
recipes.remove(relMK2);
recipes.remove(relMK3);
recipes.remove(ichoriumBlock);
recipes.remove(<ThermalFoundation:material:73>); // Bronze Ingot

recipes.addShaped(ichoriumBlock, [[ichorium, ichorium, ichorium],
                                  [ichorium, ichorium, ichorium],
							      [ichorium, ichorium, ichorium]]);
recipes.addShapeless(ichorium*9, [ichoriumBlock]);

mods.botania.ElvenTrade.addRecipe(collMK1, [ichoriumBlock]);
collMK1.addTooltip("Rustling leaves tell you it is possible to get one of these.");

recipes.addShaped(collMK2, [[netherBlock, glass, netherBlock],
                            [netherBlock, collMK1, netherBlock],
							[netherBlock, netherBlock, netherBlock]]);
recipes.addShaped(collMK3, [[ichoriumBlock, glass, ichoriumBlock],
                            [ichoriumBlock, collMK2, ichoriumBlock],
							[ichoriumBlock, ichoriumBlock, ichoriumBlock]]);

mods.bloodmagic.Altar.addRecipe(relMK1, ichoriumBlock, 5, 100000, 5, 5);
recipes.addShaped(relMK2, [[netherBlock, glass, netherBlock],
                            [netherBlock, relMK1, netherBlock],
							[netherBlock, netherBlock, netherBlock]]);
recipes.addShaped(relMK3, [[ichoriumBlock, glass, ichoriumBlock],
                            [ichoriumBlock, relMK2, ichoriumBlock],
							[ichoriumBlock, ichoriumBlock, ichoriumBlock]]);
