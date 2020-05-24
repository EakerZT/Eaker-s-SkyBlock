import mods.artisanworktables.builder.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder as mRecipeBuilder;

function addOreRecipes(materialName as string) {
    var orePiece =  oreDict["piece" + materialName];
    var oreOreItem = odItemMap["ore" + materialName];
    for i in oreDict["ingot" + materialName].items {
      furnace.remove(i);
    }
    for i in oreDict["stick" + materialName].items {
      recipes.remove(i);
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
}

// addOreRecipes("Aluminium");
// addOreRecipes("Ardite");
// addOreRecipes("Boron");
// addOreRecipes("Cobalt");
addOreRecipes("Copper");
// addOreRecipes("Draconium");
addOreRecipes("Gold");
// addOreRecipes("Iridium");
addOreRecipes("Iron");
// addOreRecipes("Lead");
// addOreRecipes("Lithium");
// addOreRecipes("Magnesium");
// addOreRecipes("Mithril");
// addOreRecipes("Nickel");
// addOreRecipes("Osmium");
// addOreRecipes("Platinum");
addOreRecipes("Silver");
// addOreRecipes("Thorium");
addOreRecipes("Tin");
// addOreRecipes("Tungsten");
// addOreRecipes("Uranium");


<ore:oreAluminum>.add(<jaopca:item_hunkaluminium>);
