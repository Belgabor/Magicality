import mods.nei.NEI;
//import minetweaker.data.IData;

NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aer Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aer"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Aqua Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aqua"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ignis Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "ignis"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Ordo Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "ordo"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Perditio Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "perditio"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Terra Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "terra"}]}));
NEI.addEntry(<Thaumcraft:BlockJarNodeItem>.withTag({display: {Name: "Multi Node", Lore: ["Creative only"]}, nodetype: 0, nodemod: 0, Aspects: [{amount: 64, key: "aer"}, {amount: 64, key: "aqua"}, {amount: 64, key: "ignis"}, {amount: 64, key: "ordo"}, {amount: 64, key: "perditio"}, {amount: 64, key: "terra"}]}));

/*
recipes.addShapeless(<Thaumcraft:BlockJarNodeItem>, [<Thaumcraft:BlockJarNodeItem>.marked("dest"), <Thaumcraft:BlockJarNodeItem>.marked("src")], function(output, inputs, crafting) {
	var destdata = {display: inputs.src.tag.memberGet("display")} as IData;
	destdata.update(inputs.src.tag);
	return <Thaumcraft:BlockJarNodeItem>.withTag(destdata);
});
*/