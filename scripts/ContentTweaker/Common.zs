import mods.artisanworktables.builder.RecipeBuilder;

// 木板
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plankWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(odItemMap['plateWood'])
  .create();

// 木螺丝
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:stickWood>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['boltWood'])
  .create();

// 木齿轮
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <minecraft:stick>, null],
    [<minecraft:stick>, null, <minecraft:stick>],
    [null, <minecraft:stick>, null]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['gearWood'])
  .create();

// 石螺丝
RecipeBuilder.get("mason")
  .setShapeless([<ore:stickStone>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['boltStone'])
  .create();
