import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
    <tconstruct:stone_stick>,
    <tconstruct:tooltables>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

// 空白模具
recipes.remove(<tconstruct:pattern>);
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plateWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<tconstruct:pattern> * 2)
  .create();

// 模具加工台
recipes.remove(<tconstruct:tooltables:1>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>],
    [<minecraft:crafting_table>]])
  .addOutput(<tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}))
  .create();

// 模具箱
recipes.remove(<tconstruct:tooltables:4>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>],
    [<minecraft:chest>]])
  .addOutput(<tconstruct:tooltables:4>)
  .create();

// 部件加工台
recipes.remove(<tconstruct:tooltables:2>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>],
    [<minecraft:crafting_table>],
    [<tconstruct:pattern>]])
  .addOutput(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}))
  .create();

//部件箱
recipes.remove(<tconstruct:tooltables:5>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>],
    [<minecraft:chest>],
    [<tconstruct:pattern>]])
  .addOutput(<tconstruct:tooltables:5>)
  .create();

//装配台
recipes.remove(<tconstruct:tooltables:3>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <tconstruct:pattern>, null],
    [<tconstruct:pattern>, <minecraft:crafting_table>, <tconstruct:pattern>],
    [null, <tconstruct:pattern>, null]])
  .addOutput(<tconstruct:tooltables:3>)
  .create();

// 盔甲组装台
recipes.remove(<conarm:armorstation>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>, null, <tconstruct:pattern>],
    [null, <minecraft:crafting_table>, null],
    [<tconstruct:pattern>, null, <tconstruct:pattern>]])
  .addOutput(<conarm:armorstation>)
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
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>]])
  .addOutput(<tconstruct:casting>)
  .create();

// 浇筑盆
recipes.remove(<tconstruct:casting:1>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, null, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <tconstruct:materials>, <ore:ingotBrickSeared>]])
  .addOutput(<tconstruct:casting:1>)
  .create();

// 浇筑口
recipes.remove(<tconstruct:faucet>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [null, <tconstruct:materials>, null]])
  .addOutput(<tconstruct:faucet>)
  .create();


// 浇筑道
recipes.remove(<tconstruct:channel>);
RecipeBuilder.get("mason")
  .setShapeless([<tconstruct:faucet>, <tconstruct:faucet>])
  .addOutput(<tconstruct:channel>)
  .create();

// 排液口
recipes.remove(<tconstruct:smeltery_io>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:faucet>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:smeltery_io>)
  .create();

// 储罐
recipes.remove(<tconstruct:seared_tank>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:seared_tank>)
  .create();

// 焦黑玻璃
recipes.remove(<tconstruct:seared_glass>);

// 冶炼炉控制器
recipes.remove(<tconstruct:smeltery_controller>);
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:furnace>, <tconstruct:materials>, <minecraft:furnace>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<minecraft:furnace>, <tconstruct:materials>, <minecraft:furnace>]])
  .addOutput(<tconstruct:smeltery_controller>)
  .create();

// 焦黑熔炉控制器
recipes.remove(<tconstruct:seared_furnace_controller>);
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:seared_furnace_controller>)
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