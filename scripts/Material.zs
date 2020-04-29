

function addIngotRecipes(materialName as string) {
    for i in oreDict["ingot" + materialName].items {
      furnace.remove(i);
    }
    furnace.addRecipe(odItemMap["ingot" + materialName],oreDict["dust" + materialName]);
}

addIngotRecipes("Gold");
addIngotRecipes("Silver");
addIngotRecipes("Copper");
addIngotRecipes("Iron");
addIngotRecipes("Tin");
