import mods.artisanworktables.builder.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder as mRecipeBuilder;

function addIngotRecipes(materialName as string) {
    var orePiece =  oreDict["piece" + materialName];
    var oreOreItem = odItemMap["ore" + materialName];
    for i in oreDict["ingot" + materialName].items {
      furnace.remove(i);
    }
    furnace.addRecipe(odItemMap["ingot" + materialName],oreDict["dust" + materialName]);
    recipes.remove(odItemMap["ore" + materialName]);
    
    RecipeBuilder.get("mason")
      .setShapeless([orePiece, orePiece, orePiece, orePiece])
      .addOutput(oreOreItem)
      .create();
    RecipeBuilder.get("blacksmith")
      .setShapeless([orePiece, orePiece])
      .addTool(<ore:artisansHammer>, 4)
      .addOutput(oreOreItem)
      .create();
    mRecipeBuilder.newBuilder("sc_ore"  + materialName, "steam_compressor", 200, 0)
      .addFluidInput(<liquid:steam> *  200)
      .addItemInput(orePiece, 2)
      .addItemOutput(oreOreItem)
      .build();

}

addIngotRecipes("Gold");
addIngotRecipes("Silver");
addIngotRecipes("Copper");
addIngotRecipes("Iron");
addIngotRecipes("Tin");
