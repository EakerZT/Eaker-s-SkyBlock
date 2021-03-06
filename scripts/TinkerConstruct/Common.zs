import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

var removeItems = [
    <tconstruct:stone_stick>,
    <tconstruct:tooltables>
] as IItemStack[];

for item in removeItems {
    JEI.removeAndHide(item);
}


// 通透玻璃
<ore:blockGlassColorless>.add(<tconstruct:clear_glass>);

// 空白模具
recipes.remove(<tconstruct:pattern>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:paper>],
    [<ore:plateWood>],
    [<minecraft:paper>]])
  .addOutput(<tconstruct:pattern> * 2)
  .create();

// 模具加工台
recipes.remove(<tconstruct:tooltables:1>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>],
    [<artisanworktables:workstation:5>]])
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
    [<artisanworktables:workstation:5>],
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
    [<tconstruct:pattern>, <artisanworktables:workstation:5>, <tconstruct:pattern>],
    [null, <tconstruct:pattern>, null]])
  .addOutput(<tconstruct:tooltables:3>)
  .create();

// 盔甲组装台
recipes.remove(<conarm:armorstation>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:pattern>, null, <tconstruct:pattern>],
    [null, <artisanworktables:workstation:5>, null],
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
  .setFluid(<liquid:water> * 500)
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

// 石桶
recipes.remove(<tcomplement:materials>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:plateStone>, null, <ore:plateStone>],
    [<ore:plateStone>, null, <ore:plateStone>],
    [null, <ore:plateStone>, null]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<tcomplement:materials>)
  .create();

// 焦黑石砖
for i in 0 to 11{
  recipes.remove(<tconstruct:seared>.definition.makeStack(i));
  furnace.remove(<tconstruct:seared>.definition.makeStack(i));
}
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<tconstruct:seared:3>)
  .create();

mods.chisel.Carving.addVariation("glass", <tconstruct:clear_glass>);
mods.chisel.Carving.addVariation("glassdyedwhite ", <tconstruct:clear_stained_glass:0>);
mods.chisel.Carving.addVariation("glassdyedorange", <tconstruct:clear_stained_glass:1>);
mods.chisel.Carving.addVariation("glassdyedmagenta", <tconstruct:clear_stained_glass:2>);
mods.chisel.Carving.addVariation("glassdyedlightblue", <tconstruct:clear_stained_glass:3>);
mods.chisel.Carving.addVariation("glassdyedyellow", <tconstruct:clear_stained_glass:4>);
mods.chisel.Carving.addVariation("glassdyedlime", <tconstruct:clear_stained_glass:5>);
mods.chisel.Carving.addVariation("glassdyedpink", <tconstruct:clear_stained_glass:6>);
mods.chisel.Carving.addVariation("glassdyedgray", <tconstruct:clear_stained_glass:7>);
mods.chisel.Carving.addVariation("glassdyedlightgray", <tconstruct:clear_stained_glass:8>);
mods.chisel.Carving.addVariation("glassdyedcyan", <tconstruct:clear_stained_glass:9>);
mods.chisel.Carving.addVariation("glassdyedpurple", <tconstruct:clear_stained_glass:10>);
mods.chisel.Carving.addVariation("glassdyedblue", <tconstruct:clear_stained_glass:11>);
mods.chisel.Carving.addVariation("glassdyedbrown", <tconstruct:clear_stained_glass:12>);
mods.chisel.Carving.addVariation("glassdyedgreen", <tconstruct:clear_stained_glass:13>);
mods.chisel.Carving.addVariation("glassdyedred", <tconstruct:clear_stained_glass:14>);
mods.chisel.Carving.addVariation("glassdyedblack", <tconstruct:clear_stained_glass:15>);
