import mods.artisanworktables.builder.RecipeBuilder;

// 红石钟
recipes.remove(<extrautils2:redstoneclock>);
RecipeBuilder.get("engineer")
   .setShaped([
    [<minecraft:redstone>, <ore:stone>, <minecraft:redstone>],
    [<ore:stone>, <minecraft:redstone_torch>, <ore:stone>],
    [<minecraft:redstone>, <ore:stone>, <minecraft:redstone>]])
  .addOutput(<extrautils2:redstoneclock>)
  .create();