import mods.artisanworktables.builder.RecipeBuilder;

// 铁棒
recipes.remove(<immersiveengineering:material:1>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotIron>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap["stickIron"])
  .create();

// 焦炉砖
recipes.remove(<immersiveengineering:stone_decoration>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>],
    [<minecraft:brick>, <tconstruct:soil>, <minecraft:brick>],
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration>)
  .create();
