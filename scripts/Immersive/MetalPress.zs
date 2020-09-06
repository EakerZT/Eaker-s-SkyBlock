import mods.immersiveengineering.MetalPress;
import mods.artisanworktables.builder.RecipeBuilder;

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

var blockMaterialName = [
  "Copper",
  "Aluminum",
  "Lead",
  "Silver",
  "Nickel",
  "Uranium",
  "Constantan",
  "Electrum",
  "Steel",
  "Iron",
  "Gold",
] as string[];

var i = 0;
for name in blockMaterialName{
  var block = <immersiveengineering:sheetmetal>.definition.makeStack(i);
  recipes.remove(block);
  RecipeBuilder.get("blacksmith")
    .setShaped([
      [null, oreDict["plate"+name], null],
      [oreDict["plate"+name], null, oreDict["plate"+name]],
      [null, oreDict["plate"+name], null]])
    .addTool(<ore:artisansHammer>, 4)
    .addOutput(block)
    .create();
  var slab = <immersiveengineering:sheetmetal_slab>.definition.makeStack(i);
  recipes.remove(slab);
  RecipeBuilder.get("blacksmith")
    .setShapeless([oreDict["blockSheetmetal"+name]])
    .addTool(<ore:artisansHandsaw>, 4)
    .addOutput(slab * 2)
    .create();
  i = i +1;
}
