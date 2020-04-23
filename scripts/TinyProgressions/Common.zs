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
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:stone>, <minecraft:lava_bucket>, <ore:stone>],
    [<ore:stone>, <minecraft:water_bucket>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addOutput(<tp:cobblegen_block>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:stone>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}}), <ore:stone>],
    [<ore:stone>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addOutput(<tp:cobblegen_block>)
  .create();
