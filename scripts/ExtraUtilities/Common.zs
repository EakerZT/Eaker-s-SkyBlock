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

// 压缩圆石
recipes.remove(<extrautils2:compressedcobblestone>);
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<extrautils2:compressedcobblestone>)
  .create();

// 传输节点
recipes.remove(<extrautils2:pipe>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
    [<enderio:item_material:4>, null, <enderio:item_material:4>],
    [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<extrautils2:pipe> * 4)
  .create();

// 物品传输节点
recipes.remove(<extrautils2:grocket>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:chest>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket>)
  .create();

// 流体传输节点
recipes.remove(<extrautils2:grocket:1>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:bucket>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:1>)
  .create();

// 物品抽取节点
recipes.remove(<extrautils2:grocket:3>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:chest>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:3>)
  .create();

// 流体抽取节点
recipes.remove(<extrautils2:grocket:4>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:bucket>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:4>)
  .create();
  