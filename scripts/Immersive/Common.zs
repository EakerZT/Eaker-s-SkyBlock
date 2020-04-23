import mods.artisanworktables.builder.RecipeBuilder;

// 铁棒
recipes.remove(<immersiveengineering:material:1>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotIron>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap["stickIron"])
  .create();