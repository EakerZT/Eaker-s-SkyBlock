import mods.modularmachinery.RecipeBuilder;


function addRecipes(inputMaterialName1 as string,inputNum1 as int,inputMaterialName2 as string,inputNum2 as int,outputMaterialName as string,outputNum as int) {
  RecipeBuilder.newBuilder("saf_ingot_ingot" + outputMaterialName, "steam_alloy_furnace", 1000, 0)
    .addFluidInput(<liquid:steam> *  1000)
    .addItemInput(oreDict["ingot" + inputMaterialName1], inputNum1)
    .addItemInput(oreDict["ingot" + inputMaterialName2], inputNum2)
    .addItemOutput(odItemMap["ingot" + outputMaterialName] * outputNum)
    .build();
  RecipeBuilder.newBuilder("saf_ingot_dust" + outputMaterialName, "steam_alloy_furnace", 1000, 0)
    .addFluidInput(<liquid:steam> *  1000)
    .addItemInput(oreDict["ingot" + inputMaterialName1], inputNum1)
    .addItemInput(oreDict["dust" + inputMaterialName2], inputNum2)
    .addItemOutput(odItemMap["ingot" + outputMaterialName] * outputNum)
    .build();
  RecipeBuilder.newBuilder("saf_dust_ingot" + outputMaterialName, "steam_alloy_furnace", 1000, 0)
    .addFluidInput(<liquid:steam> *  1000)
    .addItemInput(oreDict["dust" + inputMaterialName1], inputNum1)
    .addItemInput(oreDict["ingot" + inputMaterialName2], inputNum2)
    .addItemOutput(odItemMap["ingot" + outputMaterialName] * outputNum)
    .build();
  RecipeBuilder.newBuilder("saf_dust_dust" + outputMaterialName, "steam_alloy_furnace", 1000, 0)
    .addFluidInput(<liquid:steam> *  1000)
    .addItemInput(oreDict["dust" + inputMaterialName1], inputNum1)
    .addItemInput(oreDict["dust" + inputMaterialName2], inputNum2)
    .addItemOutput(odItemMap["ingot" + outputMaterialName] * outputNum)
    .build();

}

addRecipes("Copper",3,"Tin",1,"Bronze",4);
