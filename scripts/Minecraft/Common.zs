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

// 木棍
recipes.remove(<minecraft:stick>);
recipes.addShaped('minecraft_stick',<minecraft:stick> * 2,[[<ore:plankWood>],[<ore:plankWood>]]);
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

// 盆栽
recipes.remove(<bonsaitrees:bonsaipot>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<bonsaitrees:bonsaipot>)
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
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [null, <ore:plateIron>, null]])
  .addOutput(<minecraft:bucket>)
  .create();

// 拉杆
recipes.remove(<minecraft:lever>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:stickWood>],
    [<ore:gearWood>],
    [<ore:plateStone>]])
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
