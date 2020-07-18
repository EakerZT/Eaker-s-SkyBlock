#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Color;
import mods.contenttweaker.Material;

function addBoltPart(oreName as string,color as int) {
    var ore = MaterialSystem.getMaterialBuilder().setName(oreName).setColor(Color.fromInt(color)).build() as Material;
    ore.registerParts(["bolt"] as string[]);
}

addBoltPart("Wood",6374953);
addBoltPart("Stone",8092539);
addBoltPart("Iron",9868950);
addBoltPart("Gold",15724416);
addBoltPart("Copper",16767385);
addBoltPart("Silver",15858171);
addBoltPart("Tin",16777215);
addBoltPart("Lead",12634079);
addBoltPart("Steel",14013909);
addBoltPart("Bronze",16764047);
addBoltPart("Invar",15659247);
addBoltPart("Electrum",16777161);
addBoltPart("Constantan",16242307);
addBoltPart("Signalum",16755740);
addBoltPart("Enderium",1076075);
addBoltPart("Platinum",13893631);
addBoltPart("Nickel",12367482);
addBoltPart("Iridium",15723763);
addBoltPart("Lumium",14541705);
addBoltPart("Aluminum",14541705);

var stone = MaterialSystem.getMaterialBuilder().setName("Stone").setColor(Color.fromInt(8092539)).build();
stone.registerParts(["plate"] as string[]);
var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(Color.fromInt(6374953)).build();
wood.registerParts(["plate"] as string[]);

// addBoltPart("Zinc",15790322);
// addBoltPart("Brass",16769567);
// addBoltPart("Osmium",11714259);
// addBoltPart("RefinedObsidian",5851505);

