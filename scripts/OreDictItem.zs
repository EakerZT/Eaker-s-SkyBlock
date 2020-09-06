
#priority 9999
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

<ore:ingotSteel>.remove(<immersiveengineering:metal:8>);
<ore:ingotSteel>.remove(<mekanism:ingot:4>);
<ore:ingotSteel>.remove(<nuclearcraft:alloy:5>);
<ore:ingotBronze>.remove(<mekanism:ingot:2>);
<ore:ingotBronze>.remove(<nuclearcraft:alloy:0>);
<ore:ingotAluminum>.remove(<immersiveengineering:metal:1>);
<ore:ingotAluminium>.remove(<immersiveengineering:metal:1>);
<ore:ingotAluminum>.remove(<nuclearcraft:ingot:12>);
<ore:ingotAluminium>.remove(<nuclearcraft:ingot:12>);
<ore:ingotLead>.remove(<nuclearcraft:ingot:2>);
<ore:ingotLead>.remove(<nuclearcraft:ingot:2>);
<ore:ingotLead>.remove(<immersiveengineering:metal:2>);
<ore:ingotTin>.remove(<mekanism:ingot:6>);
<ore:ingotTin>.remove(<nuclearcraft:ingot:1>);
<ore:ingotSilver>.remove(<immersiveengineering:metal:3>);
<ore:ingotSilver>.remove(<nuclearcraft:ingot:13>);
<ore:ingotCopper>.remove(<mekanism:ingot:5>);
<ore:ingotCopper>.remove(<immersiveengineering:metal:0>);
<ore:ingotCopper>.remove(<nuclearcraft:ingot:0>);
<ore:ingotNickel>.remove(<immersiveengineering:metal:4>);

<ore:dustWheat>.remove(<enderio:item_material:21>);
<ore:dustCoal>.remove(<enderio:item_material:23>);
<ore:dustIron>.remove(<enderio:item_material:24>);
<ore:dustIron>.remove(<mekanism:dust:0>);
<ore:dustIron>.remove(<actuallyadditions:item_dust>);
<ore:dustIron>.remove(<appliedenergistics2:material:49>);
<ore:dustIron>.remove(<immersiveengineering:metal:18>);
<ore:dustGold>.remove(<appliedenergistics2:material:51>);
<ore:dustGold>.remove(<actuallyadditions:item_dust:1>);
<ore:dustGold>.remove(<enderio:item_material:25>);
<ore:dustGold>.remove(<mekanism:dust:1>);
<ore:dustGold>.remove(<immersiveengineering:metal:19>);
<ore:dustCopper>.remove(<enderio:item_material:26>);
<ore:dustCopper>.remove(<mekanism:dust:3>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:3>);
<ore:dustTin>.remove(<enderio:item_material:27>);
<ore:dustTin>.remove(<mekanism:dust:4>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:4>);
<ore:dustLead>.remove(<nuclearcraft:dust:2>);
<ore:dustLead>.remove(<immersiveengineering:metal:11>);
<ore:dustLead>.remove(<mekanism:dust:6>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:6>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);
<ore:dustArdite>.remove(<enderio:item_material:30>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);
<ore:dustLapis>.remove(<enderio:item_material:32>);
<ore:dustSteel>.remove(<mekanism:otherdust:1>);
mods.mekanism.crusher.removeRecipe(<mekanism:otherdust:1>);
<ore:dustSilver>.remove(<immersiveengineering:metal:12>);
<ore:dustSilver>.remove(<nuclearcraft:dust:13>);
<ore:dustSilver>.remove(<mekanism:dust:5>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:5>);

global odItemMap as IItemStack[string] = {

  dustIron: getTEItemByODName("dustIron"),
  dustGold: getTEItemByODName("dustGold"),
  dustCopper : getTEItemByODName("dustCopper"),
  dustTin : getTEItemByODName("dustTin"),
  dustSilver : getTEItemByODName("dustSilver"),
  dustLead : getTEItemByODName("dustLead"),
  dustAluminum : getTEItemByODName("dustAluminum"),
  dustNickel : getTEItemByODName("dustNickel"),
  dustPlatinum : getTEItemByODName("dustPlatinum"),
  dustIridium : getTEItemByODName("dustIridium"),
  dustSteel : getTEItemByODName("dustSteel"),
  dustElectrum : getTEItemByODName("dustElectrum"),
  dustInvar : getTEItemByODName("dustInvar"),
  dustBronze : getTEItemByODName("dustBronze"),
  dustConstantan : getTEItemByODName("dustConstantan"),
  dustSignalum : getTEItemByODName("dustSignalum"),
  dustLumium : getTEItemByODName("dustLumium"),
  dustEnderium : getTEItemByODName("dustEnderium"),
  dustUranium : <immersiveengineering:metal:14>,
  dustObsidian : getTEItemByODName("dustObsidian"),

  ingotIron : <minecraft:iron_ingot>,
  ingotGold : <minecraft:gold_ingot>,
  ingotCopper : getTEItemByODName("ingotCopper"),
  ingotTin : getTEItemByODName("ingotTin"),
  ingotSilver : getTEItemByODName("ingotSilver"),
  ingotLead : getTEItemByODName("ingotLead"),
  ingotAluminum : getTEItemByODName("ingotAluminum"),
  ingotNickel : getTEItemByODName("ingotNickel"),
  ingotPlatinum : getTEItemByODName("ingotPlatinum"),
  ingotIridium : getTEItemByODName("ingotIridium"),
  ingotSteel : getTEItemByODName("ingotSteel"),
  ingotElectrum : getTEItemByODName("ingotElectrum"),
  ingotInvar : getTEItemByODName("ingotInvar"),
  ingotBronze : getTEItemByODName("ingotBronze"),
  ingotConstantan : getTEItemByODName("ingotConstantan"),
  ingotSignalum : getTEItemByODName("ingotSignalum"),
  ingotLumium : getTEItemByODName("ingotLumium"),
  ingotEnderium : getTEItemByODName("ingotEnderium"),
  ingotUranium : <immersiveengineering:metal:5>,

  plateWood : getCTItemByODName("plateWood"),
  plateStone : getCTItemByODName("plateStone"),
  plateQuartz : <moreplates:nether_quartz_plate>,
  plateIron : getTEItemByODName("plateIron"),
  plateGold : getTEItemByODName("plateGold"),
  plateCopper : getTEItemByODName("plateCopper"),
  plateTin : getTEItemByODName("plateTin"),
  plateSilver : getTEItemByODName("plateSilver"),
  plateLead : getTEItemByODName("plateLead"),
  plateAluminum : getTEItemByODName("plateAluminum"),
  plateNickel : getTEItemByODName("plateNickel"),
  platePlatinum : getTEItemByODName("platePlatinum"),
  plateIridium : getTEItemByODName("plateIridium"),
  plateSteel : getTEItemByODName("plateSteel"),
  plateElectrum : getTEItemByODName("plateElectrum"),
  plateInvar : getTEItemByODName("plateInvar"),
  plateBronze : getTEItemByODName("plateBronze"),
  plateConstantan : getTEItemByODName("plateConstantan"),
  plateSignalum : getTEItemByODName("plateSignalum"),
  plateLumium : getTEItemByODName("plateLumium"),
  plateEnderium : getTEItemByODName("plateEnderium"),

  boltWood : getCTItemByODName("boltWood"),
  boltStone : getCTItemByODName("boltStone"),
  boltIron : getCTItemByODName("boltIron"),
  boltGold : getCTItemByODName("boltGold"),
  boltCopper : getCTItemByODName("boltCopper"),
  boltTin : getCTItemByODName("boltTin"),
  boltSilver : getCTItemByODName("boltSilver"),
  boltLead : getCTItemByODName("boltLead"),
  boltAluminum : getCTItemByODName("boltAluminum"),
  boltNickel : getCTItemByODName("boltNickel"),
  boltPlatinum : getCTItemByODName("boltPlatinum"),
  boltIridium : getCTItemByODName("boltIridium"),
  boltSteel : getCTItemByODName("boltSteel"),
  boltElectrum : getCTItemByODName("boltElectrum"),
  boltInvar : getCTItemByODName("boltInvar"),
  boltBronze : getCTItemByODName("boltBronze"),
  boltConstantan : getCTItemByODName("boltConstantan"),
  boltSignalum : getCTItemByODName("boltSignalum"),
  boltLumium : getCTItemByODName("boltLumium"),
  boltEnderium : getCTItemByODName("boltEnderium"),

  stickWood : <minecraft:stick>,
  stickStone : <exnihilocreatio:item_material:6>,
  stickIron: <immersiveengineering:material:1>,
  stickGold : <moreplates:gold_stick>,
  stickCopper : <moreplates:copper_stick>,
  stickTin : <moreplates:tin_stick>,
  stickSilver : <moreplates:silver_stick>,
  stickLead : <moreplates:lead_stick>,
  stickAluminum : <immersiveengineering:material:3>,
  stickNickel : <moreplates:nickel_stick>,
  stickPlatinum : <moreplates:platinum_stick>,
  stickIridium : <moreplates:iridium_stick>,
  stickSteel : <immersiveengineering:material:2>,
  stickElectrum : <moreplates:electrum_stick>,
  stickInvar : <moreplates:invar_stick>,
  stickBronze : <moreplates:bronze_stick>,
  stickConstantan : <moreplates:constantan_stick>,
  stickSignalum : <moreplates:signalum_stick>,
  stickLumium : <moreplates:lumium_stick>,
  stickEnderium : <moreplates:enderium_stick>,
  stickUranium : getJAOPCAItemByODName("stickUranium"),

  gearWood : getTEItemByODName("gearWood"),
  gearStone : getTEItemByODName("gearStone"),
  gearIron : getTEItemByODName("gearIron"),
  gearGold : getTEItemByODName("gearGold"),
  gearCopper : getTEItemByODName("gearCopper"),
  gearTin : getTEItemByODName("gearTin"),
  gearSilver : getTEItemByODName("gearSilver"),
  gearLead : getTEItemByODName("gearLead"),
  gearAluminum : getTEItemByODName("gearAluminum"),
  gearNickel : getTEItemByODName("gearNickel"),
  gearPlatinum : getTEItemByODName("gearPlatinum"),
  gearIridium : getTEItemByODName("gearIridium"),
  gearSteel : getTEItemByODName("gearSteel"),
  gearElectrum : getTEItemByODName("gearElectrum"),
  gearInvar : getTEItemByODName("gearInvar"),
  gearBronze : getTEItemByODName("gearBronze"),
  gearConstantan : getTEItemByODName("gearConstantan"),
  gearSignalum : getTEItemByODName("gearSignalum"),
  gearLumium : getTEItemByODName("gearLumium"),
  gearEnderium : getTEItemByODName("gearEnderium"),
  gearDiamond : getTEItemByODName("gearDiamond"),
  gearEmerald : getTEItemByODName("gearEmerald"),
  gearQuartz : <moreplates:nether_quartz_gear>
} as IItemStack[string];

var materialName = [
  "Aluminum",
  "Ardite",
  "Boron",
  "Cobalt",
  "Copper",
  "Draconium",
  "Gold",
  "Iridium",
  "Iron",
  "Lead",
  "Lithium",
  "Magnesium",
  "Mithril",
  "Nickel",
  "Osmium",
  "Platinum",
  "Silver",
  "Thorium",
  "Tin",
  // "Tungsten",
  "Uranium"
] as string[];

<ore:oreAluminum>.add(<jaopca:item_hunkaluminium>);

for i in materialName {
  odItemMap['piece' + i] = getJAOPCAItemByODName("piece" + i);
  odItemMap['ore' + i] = getJAOPCAItemByODName("ore" + i);
}

// for i in materialName {
//   print(i);
//   print("--------");
//   for j in oreDict['ore'+i].items {
//     if(j.definition.id != odItemMap['ore' + i].definition.id) {
//       oreDict['ore'+i].remove(j);
//     }
//   }
//   // print(i);
//   // print("--------");
//   // for j in oreDict['ingot'+i].items {
//   //   if(j.definition.id != odItemMap['ingot' + i].definition.id) {
//   //     oreDict['ingot'+i].remove(j);
//   //   }
//   // }
// }


// Mek 粉碎机修复
function MekanismCrusherFix(name as string) {
  mods.mekanism.crusher.addRecipe(oreDict['ingot' + name], odItemMap["dust" + name]);
}

// Mek 富集修复
function MekanismEnrichmentFix(name as string) {
  // mods.mekanism.enrichment.removeRecipe(odItemMap["dust" + name]);
  mods.mekanism.enrichment.addRecipe(oreDict["dustDirty" + name], odItemMap["dust" + name]);
  mods.mekanism.enrichment.addRecipe(oreDict["ore" + name], odItemMap["dust" + name] * 2);
}

for i in ([
  "Gold","Copper","Iron","Tin","Lead","Silver","Aluminum"
  ] as string[]) {
  MekanismCrusherFix(i);
  MekanismEnrichmentFix(i);
}
MekanismCrusherFix("Steel");
MekanismCrusherFix("Bronze");
MekanismCrusherFix("Nickel");
MekanismCrusherFix("Invar");
MekanismCrusherFix("Signalum");
MekanismCrusherFix("Enderium");
mods.mekanism.crusher.removeRecipe(odItemMap["dustBronze"], <mekanism:ingot:2>);
mods.mekanism.crusher.removeRecipe(odItemMap["dustAluminum"], <immersiveengineering:metal:1>);
mods.mekanism.crusher.removeRecipe(odItemMap["dustAluminum"], <nuclearcraft:ingot:12>);

// 黑体辐射
mods.mekanism.infuser.removeRecipe(<mekanismgenerators:hohlraum>);
mods.mekanism.infuser.addRecipe("CARBON", 10, odItemMap["dustGold"] * 4, <mekanismgenerators:hohlraum>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, odItemMap["dustSteel"]);
// 强化黑曜石粉
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:5>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, odItemMap["dustObsidian"], <mekanism:otherdust:5>);

// 青铜锭
mods.mekanism.infuser.removeRecipe(<mekanism:ingot:2>);
