import mods.artisanworktables.builder.RecipeBuilder;

var flint = <minecraft:flint>;
var plankWood = <ore:plankWood>;
var bowl = <minecraft:bowl>;
var glassBottle = <minecraft:glass_bottle>;
var paneGlass = <ore:paneGlass>;

recipes.remove(flint);
recipes.remove(<minecraft:glass>);
furnace.remove(<minecraft:glass>);
recipes.remove(<minecraft:glass_pane>);
recipes.remove(<minecraft:crafting_table>);

// 木棍
recipes.remove(<minecraft:stick>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>],
    [<ore:plankWood>]])
  .addOutput(<minecraft:stick> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>],
    [<ore:plankWood>]])
  .addTool(<ore:artisansHatchet>, 4)
  .addOutput(<minecraft:stick> * 4)
  .create();

// 熔炉
recipes.remove(<minecraft:furnace>);
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, null, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .addOutput(<minecraft:furnace>)
  .create();

// 箱子
recipes.remove(<minecraft:chest>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<techreborn:plates:3>, <techreborn:plates:3>, <techreborn:plates:3>],
    [<techreborn:plates:3>, null, <techreborn:plates:3>],
    [<techreborn:plates:3>, <techreborn:plates:3>, <techreborn:plates:3>]])
  .addOutput(<minecraft:chest>)
  .create();

// 活塞
recipes.remove(<minecraft:piston>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]])
  .addTool(<ore:artisansSpanner>, 4)
  .addOutput(<minecraft:piston>)
  .create();

// 粘性活塞
recipes.remove(<minecraft:sticky_piston>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:slimeball>],
    [<minecraft:piston>]])
  .addOutput(<minecraft:sticky_piston>)
  .create();

// 铁桶
recipes.remove(<minecraft:bucket>);

// 拉杆
recipes.remove(<minecraft:lever>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:stickWood>],
    [<ore:gearWood>],
    [<ore:plateStone>]])
  .addTool(<ore:artisansSpanner>, 4)
  .addOutput(<minecraft:lever>)
  .create();

// 漏斗
recipes.remove(<minecraft:hopper>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>],
    [null, <ore:plateIron>, null]])
  .addOutput(<minecraft:hopper>)
  .create();

// 红石火把
recipes.remove(<minecraft:redstone_torch>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:redstone>],
    [<ore:stickWood>]])
  .addOutput(<minecraft:redstone_torch>)
  .create();

// 黏土
recipes.remove(<minecraft:clay_ball>);
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:clay>])
  .addOutput(<minecraft:clay_ball> * 4)
  .create();

// 黏土块
recipes.remove(<minecraft:clay>);
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>])
  .addOutput(<minecraft:clay>)
  .create();

// 砂岩
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:sand>, <minecraft:sand>, <minecraft:sand>, <minecraft:sand>])
  .addOutput(<minecraft:sandstone>)
  .create();

// 沙子
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:sandstone>])
  .addOutput(<minecraft:sand> * 4)
  .create();

// 红砂岩
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>])
  .addOutput(<minecraft:red_sandstone>)
  .create();

// 红沙
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:red_sandstone>])
  .addOutput(<minecraft:sand:1> * 4)
  .create();

// 火把
recipes.remove(<minecraft:torch>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:coal:1>],
    [<minecraft:stick>]])
  .addOutput(<minecraft:torch> * 2)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:coal>],
    [<minecraft:stick>]])
  .addOutput(<minecraft:torch> * 4)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:fuelCoke>],
    [<minecraft:stick>]])
  .addOutput(<minecraft:torch> * 8)
  .create();

