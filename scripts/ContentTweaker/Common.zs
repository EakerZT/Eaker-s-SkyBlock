import mods.artisanworktables.builder.RecipeBuilder;

// 木螺丝
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:stickWood>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['boltWood'])
  .create();

// 铁螺丝
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stickIron>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<contenttweaker:material_part:5>)
  .create();
