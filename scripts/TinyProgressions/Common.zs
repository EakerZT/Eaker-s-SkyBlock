import mods.artisanworktables.builder.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder as mRecipeBuilder;

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

// 压缩遂石块
recipes.remove(<tp:flint_block>);
mRecipeBuilder.newBuilder("sc_flint_block", "steam_compressor", 500, 0)
  .addFluidInput(<liquid:steam> *  1000)
  .addItemInput(<minecraft:flint> *  9)
  .addItemOutput(<tp:flint_block>)
  .build();
