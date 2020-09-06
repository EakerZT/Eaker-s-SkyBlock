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

JEI.hideCategory("Painter");

<ore:hopper>.add(<minecraft:hopper>);
<ore:hopper>.add(<tconstruct:wooden_hopper>);

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

// 漏斗盆栽
recipes.remove(<bonsaitrees:bonsaipot:1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<bonsaitrees:bonsaipot>],
    [<minecraft:hopper>]])
  .addOutput(<bonsaitrees:bonsaipot:1>)
  .create();

// 锻造锤
recipes.remove(<practicallogistics2:hammer>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:stickWood>, <ore:stone>, <ore:stickWood>],
    [<ore:stickWood>, <ore:plateWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:plateWood>, <ore:stickWood>]])
  .addOutput(<practicallogistics2:hammer>)
  .create();

// 挤压机
recipes.remove(<integrateddynamics:squeezer>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>],
    [<ore:stickIron>, null, <ore:stickIron>],
    [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<integrateddynamics:squeezer>)
  .create();

// 烘干池
recipes.remove(<integrateddynamics:drying_basin>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plateWood>, null, <ore:plateWood>],
    [<ore:plateWood>, null, <ore:plateWood>],
    [<ore:slimeball>, <ore:plateWood>, <ore:slimeball>]])
  .addOutput(<integrateddynamics:drying_basin>)
  .create();
