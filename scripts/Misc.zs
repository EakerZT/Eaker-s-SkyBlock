import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

var removeItem = [
    <ceramics:clay_helmet>,
    <ceramics:clay_chestplate>,
    <ceramics:clay_leggings>,
    <ceramics:clay_boots>,
    <ceramics:clay_helmet_raw>,
    <ceramics:clay_chestplate_raw>,
    <ceramics:clay_leggings_raw>,
    <ceramics:clay_boots_raw>
] as IItemStack[];

for i in removeItem {
    JEI.removeAndHide(i);
}

// 未烧制的黏土桶
recipes.remove(<ceramics:unfired_clay>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .setFluid(<liquid:water> * 500)
  .addOutput(<ceramics:unfired_clay>)
  .create();

// 未烧制的剪刀
recipes.remove(<ceramics:unfired_clay:1>);
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null]])
  .setFluid(<liquid:water> * 500)
  .addOutput(<ceramics:unfired_clay:1>)
  .create();

// 未烧制黏土板
recipes.remove(<ceramics:unfired_clay:8>);
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <minecraft:clay_ball>, null],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
  .setFluid(<liquid:water> * 500)
  .addOutput(<ceramics:unfired_clay:8> * 2)
  .create();

// 石英板
recipes.remove(<moreplates:nether_quartz_plate>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<minecraft:quartz>]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<moreplates:nether_quartz_plate>)
  .create(); 

// 石英齿轮
recipes.remove(<moreplates:nether_quartz_gear>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [null, <ore:plateQuartz>, null],
    [<ore:plateQuartz>, null, <ore:plateQuartz>],
    [null, <ore:plateQuartz>, null]])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<moreplates:nether_quartz_gear>)
  .create();

// 盆栽
recipes.remove(<bonsaitrees:bonsaipot>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]])
  .addOutput(<bonsaitrees:bonsaipot>)
  .create();