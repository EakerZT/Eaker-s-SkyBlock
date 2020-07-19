
#priority 9999
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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

var joapcaOreName = [
  "Aluminium",
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

for i in joapcaOreName {
  odItemMap['piece' + i] = getJAOPCAItemByODName("piece" + i);
  odItemMap['ore' + i] = getJAOPCAItemByODName("ore" + i);
}


// Mek 粉碎机修复
function MekanismCrusherFix(name as string) {
  mods.mekanism.crusher.addRecipe(odItemMap['ingot' + name], odItemMap["dust" + name]);
}

// Mek 富集修复
function MekanismEnrichmentFix(name as string) {
  // mods.mekanism.enrichment.removeRecipe(odItemMap["dust" + name]);
  mods.mekanism.enrichment.addRecipe(oreDict["dustDirty" + name], odItemMap["dust" + name]);
  mods.mekanism.enrichment.addRecipe(odItemMap["ore" + name], odItemMap["dust" + name] * 2);
}

for i in ([
  "Gold","Copper","Iron","Tin","Lead","Silver"
  ] as string[]) {
  MekanismCrusherFix(i);
  MekanismEnrichmentFix(i);
}
MekanismCrusherFix("Steel");
MekanismCrusherFix('Bronze');

// 冶金灌注机
// 青铜锭
mods.mekanism.infuser.removeRecipe(<mekanism:ingot:2>);
// 黑体辐射
mods.mekanism.infuser.removeRecipe(<mekanismgenerators:hohlraum>);
mods.mekanism.infuser.addRecipe("CARBON", 10, odItemMap["dustGold"] * 4, <mekanismgenerators:hohlraum>);
mods.mekanism.infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, odItemMap["dustSteel"]);
// 强化黑曜石粉
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:5>);
mods.mekanism.infuser.addRecipe("DIAMOND", 10, odItemMap["dustObsidian"], <mekanism:otherdust:5>);
