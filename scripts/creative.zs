import mods.nei.NEI;
//import minetweaker.data.IData;

NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aer Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "aer"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aqua Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "aqua"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ignis Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "ignis"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ordo Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "ordo"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Perditio Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "perditio"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Terra Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "terra"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Multi Node (16)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 16, key: "aer"}, {amount: 16, key: "aqua"}, {amount: 16, key: "ignis"}, {amount: 16, key: "ordo"}, {amount: 16, key: "perditio"}, {amount: 16, key: "terra"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aer Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aer"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aqua Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aqua"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ignis Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "ignis"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ordo Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "ordo"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Perditio Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "perditio"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Terra Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "terra"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Multi Node (64)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aer"}, {amount: 64, key: "aqua"}, {amount: 64, key: "ignis"}, {amount: 64, key: "ordo"}, {amount: 64, key: "perditio"}, {amount: 64, key: "terra"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Multi Node (400)", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 400, key: "aer"}, {amount: 400, key: "aqua"}, {amount: 400, key: "ignis"}, {amount: 400, key: "ordo"}, {amount: 400, key: "perditio"}, {amount: 400, key: "terra"}]}));

/*
recipes.addShapeless(<Thaumcraft:BlockJarNodeItem>, [<Thaumcraft:BlockJarNodeItem>.marked("dest"), <Thaumcraft:BlockJarNodeItem>.marked("src")], function(output, inputs, crafting) {
	var destdata = {display: inputs.src.tag.memberGet("display")} as IData;
	destdata.update(inputs.src.tag);
	return <Thaumcraft:BlockJarNodeItem>.withTag(destdata);
});
*/