import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:stickWood>]])
  .addTool(<ore:artisansFile>, 1)
  .addOutput(odItemMap['boltWood'])
  .create();