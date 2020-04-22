import mods.artisanworktables.builder.RecipeBuilder;

// 木剪
recipes.remove(<tp:wooden_shears>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:stick>, null, <minecraft:stick>],
    [null, <minecraft:planks>, null],
    [<minecraft:stick>, null, <minecraft:stick>]])
  .addOutput(<tp:wooden_shears>)
  .create();
