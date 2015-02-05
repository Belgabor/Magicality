var lw = <ore:livingwood>;
var lw_slab = <Botania:livingwood0Slab>;
var lr = <ore:livingrock>;
var lr_slab = <Botania:livingrock0Slab>;

recipes.addShapeless(lw_slab * 2, [lw]);
recipes.addShapeless(lr_slab * 2, [lr]);
recipes.addShaped(<Botania:livingwood>, [[lw_slab], [lw_slab]]);
recipes.addShaped(<Botania:livingrock>, [[lr_slab], [lr_slab]]);
