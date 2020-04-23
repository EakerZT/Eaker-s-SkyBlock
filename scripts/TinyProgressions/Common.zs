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

// 造石机
recipes.remove(<tp:cobblegen_block>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<minecraft:water_bucket>, <ore:blockGlass>, <minecraft:lava_bucket>],
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]])
  .addOutput(<tp:cobblegen_block>)
  .create();
