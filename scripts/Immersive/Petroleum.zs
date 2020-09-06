import mods.artisanworktables.builder.RecipeBuilder;

// 润滑机
recipes.remove(<immersivepetroleum:metal_device>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockGlassColorless>, <immersiveengineering:metal_device1:6>, <ore:blockGlassColorless>],
    [<ore:blockGlassColorless>, null, <ore:blockGlassColorless>],
    [<ore:plankTreatedWood>, <immersiveengineering:metal_device1:6>, <ore:plankTreatedWood>]])
  .addOutput(<immersivepetroleum:metal_device>)
  .create();