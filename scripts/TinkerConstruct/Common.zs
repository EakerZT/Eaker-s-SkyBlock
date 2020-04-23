import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
    <tconstruct:stone_stick>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

// 空白模具
recipes.remove(<tconstruct:pattern>);
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plateWood>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<tconstruct:pattern>)
  .create();

// 水泥
recipes.remove(<tconstruct:soil>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:sand>, <minecraft:gravel>, <ore:sand>],
    [<minecraft:gravel>, <minecraft:clay>, <minecraft:gravel>],
    [<ore:sand>, <minecraft:gravel>, <ore:sand>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<tconstruct:soil> * 8)
  .create();

// 焦黑砖
furnace.remove(<tconstruct:materials>);
furnace.addRecipe(<tconstruct:materials>, <tconstruct:soil>);

// 浇筑台
recipes.remove(<tconstruct:casting>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>]])
  .addOutput(<tconstruct:casting>)
  .create();

// 浇筑盆
recipes.remove(<tconstruct:casting:1>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <tconstruct:materials>, <ore:ingotBrickSeared>]])
  .addOutput(<tconstruct:casting:1>)
  .create();

// 浇筑口
recipes.remove(<tconstruct:faucet>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [null, <tconstruct:materials>, null]])
  .addOutput(<tconstruct:faucet>)
  .create();


// 浇筑道
recipes.remove(<tconstruct:channel>);
RecipeBuilder.get("farmer")
  .setShapeless([<tconstruct:faucet>, <tconstruct:faucet>])
  .addOutput(<tconstruct:channel>)
  .create();

// 排液口
recipes.remove(<tconstruct:smeltery_io>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:faucet>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:smeltery_io>)
  .create();

// 储罐
recipes.remove(<tconstruct:seared_tank>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:seared_tank>)
  .create();

// 控制器
recipes.remove(<tconstruct:smeltery_controller>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:smeltery_controller>)
  .create();

// 木漏斗
recipes.remove(<tconstruct:wooden_hopper>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plateWood>, null, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:chest>, <ore:plateWood>],
    [null, <ore:plateWood>, null]])
  .addOutput(<tconstruct:wooden_hopper>)
  .create();