import mods.artisanworktables.builder.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder as mRecipeBuilder;

function addOreRecipes(materialName as string) {
    var pieceItem =  odItemMap["piece" + materialName];
    var oreItem = odItemMap["ore" + materialName];
    var stickItem = odItemMap["stick" + materialName];
    var dustItem = odItemMap["dust" + materialName];
    var ingotItem = odItemMap["ingot" + materialName];
    for i in oreDict["ingot" + materialName].items {
      furnace.remove(i);
    }
    for i in oreDict["stick" + materialName].items {
      recipes.remove(i);
    }
    furnace.addRecipe(ingotItem, dustItem);
    RecipeBuilder.get("mason")
      .setShapeless([pieceItem, pieceItem, pieceItem, pieceItem])
      .addOutput(oreItem)
      .create();
    RecipeBuilder.get("blacksmith")
      .setShapeless([oreDict["ingot" + materialName]])
      .addTool(<ore:artisansFile>, 4)
      .addOutput(stickItem)
      .create();
}

var alloyMaterialName = [
  "Steel",
] as string[];

for materialName in alloyMaterialName {
  for i in oreDict["stick" + materialName].items {
    recipes.remove(i);
  }
}

addOreRecipes("Aluminum");
// addOreRecipes("Ardite");
// addOreRecipes("Boron");
// addOreRecipes("Cobalt");
addOreRecipes("Copper");
// addOreRecipes("Draconium");
addOreRecipes("Gold");
// addOreRecipes("Iridium");
addOreRecipes("Iron");
addOreRecipes("Lead");
// addOreRecipes("Lithium");
// addOreRecipes("Magnesium");
// addOreRecipes("Mithril");
addOreRecipes("Nickel");
// addOreRecipes("Osmium");
// addOreRecipes("Platinum");
addOreRecipes("Silver");
// addOreRecipes("Thorium");
addOreRecipes("Tin");
addOreRecipes("Uranium");

RecipeBuilder.get("blacksmith")
  .setShapeless([oreDict["ingotSteel"]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap["stickSteel"])
  .create();