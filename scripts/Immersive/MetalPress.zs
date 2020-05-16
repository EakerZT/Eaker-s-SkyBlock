import mods.immersiveengineering.MetalPress;


var materialName = [
  "Iron",
  "Gold",
  "Copper",
  "Tin",
  "Silver",
  "Lead",
  "Aluminum",
  "Nickel",
  "Platinum",
  "Iridium",
  "Steel",
  "Electrum",
  "Invar",
  "Bronze",
  "Constantan",
  "Signalum",
  "Lumium",
  "Enderium",
] as string[];



for i in materialName {
    var moldBolt = <contenttweaker:mold_bolt>;
    MetalPress.addRecipe(odItemMap["bolt" + i] * 2, oreDict["ingot" + i], moldBolt, 2000);
}
