
var chisel = <chisel:chisel>;
var chisel2 = <chisel:diamondChisel>;
var achisel = <chisel:autoChisel>;
var cu_speed = <chisel:upgrade>;
var cu_auto  = <chisel:upgrade:1>;
var cu_stack = <chisel:upgrade:2>;

var sugar = <minecraft:sugar>;
var rc = <Automagy:blockRedcrystal>;
var core = <Thaumcraft:ItemGolemCore:100>;
var thaumium = <ore:ingotThaumium>;

recipes.remove(chisel);
recipes.addShaped(chisel, [[null, <DCsAppleMilk:defeatedcrow.chalcedony>], [<ore:stickWood>, null]]);
chisel.displayName = "Chalcedony Chisel";

recipes.remove(chisel2);
recipes.addShaped(chisel2, [[null, <ore:ingotIron>], [<ore:stickWood>, null]]);
chisel2.displayName = "Iron Chisel";

recipes.remove(achisel);
mods.thaumcraft.Arcane.addShaped("HUNGRYCHEST", achisel, "ordo 20, terra 20",
						[[<Thaumcraft:blockCosmeticSlabStone>, <Thaumcraft:blockChestHungry>, <Thaumcraft:blockCosmeticSlabStone>],
						 [null, <Thaumcraft:blockCosmeticSolid:6>, null],
						 [<Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>]]);
game.setLocalization("en_US", "tc.research_page.CHISEL", "Watching the hungry chest has given you an interesting idea. With a bit of tinkering, the motion could be used to automate the conversion of blocks into more decorative versions.<BR><BR>Maybe with some more research into upgrading magical automatons you will find ways to enhance this contraption.");
mods.thaumcraft.Research.addPage("HUNGRYCHEST", "tc.research_page.CHISEL");
mods.thaumcraft.Research.addArcanePage("HUNGRYCHEST", achisel);

recipes.remove(cu_speed);
mods.thaumcraft.Arcane.addShaped("UPGRADEAIR", cu_speed, "aer 20",
						[[sugar, core, sugar],
						 [core, <Thaumcraft:ItemGolemUpgrade>, core],
						 [rc, rc, rc]]);
game.setLocalization("en_US", "tc.research_page.CHISEL_SPEED", "With a few adjustments, the air upgrade can be attached to the auto chisel. This improves the speed of the contraption.");
mods.thaumcraft.Research.addPage("UPGRADEAIR", "tc.research_page.CHISEL_SPEED");
mods.thaumcraft.Research.addArcanePage("UPGRADEAIR", cu_speed);

recipes.remove(cu_stack);
mods.thaumcraft.Arcane.addShaped("UPGRADEEARTH", cu_stack, "terra 20",
						[[thaumium, core, thaumium],
						 [core, <Thaumcraft:ItemGolemUpgrade:1>, core],
						 [rc, rc, rc]]);
game.setLocalization("en_US", "tc.research_page.CHISEL_STACK", "Some tinkering allows the earth upgrade to be attached to the auto chisel. This improves the amount of blocks it can handle at once.");
mods.thaumcraft.Research.addPage("UPGRADEEARTH", "tc.research_page.CHISEL_STACK");
mods.thaumcraft.Research.addArcanePage("UPGRADEEARTH", cu_stack);

recipes.remove(cu_auto);
mods.thaumcraft.Arcane.addShaped("UPGRADEORDER", cu_auto, "ordo 20",
						[[thaumium, core, thaumium],
						 [<Thaumcraft:ItemGolemCore>, <Thaumcraft:ItemGolemUpgrade:4>, <Thaumcraft:ItemGolemCore:1>],
						 [rc, rc, rc]]);
game.setLocalization("en_US", "tc.research_page.CHISEL_AUTO", "Adjusting the order upgrade to the auto chisel took some advanced ingredients, but you were able to achieve it. The upgrade allows access to the auto chisel by automation like golems or other ways.");
mods.thaumcraft.Research.addPage("UPGRADEORDER", "tc.research_page.CHISEL_AUTO");
mods.thaumcraft.Research.addArcanePage("UPGRADEORDER", cu_auto);
