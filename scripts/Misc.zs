import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var removeItem = [
    <ceramics:clay_helmet>,
    <ceramics:clay_chestplate>,
    <ceramics:clay_leggings>,
    <ceramics:clay_boots>
] as IItemStack[];

for i in removeItem {
    recipes.remove(i);
    mods.jei.JEI.removeAndHide(i);
}

// 未烧制的黏土桶
recipes.remove(<ceramics:unfired_clay>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<ceramics:unfired_clay>)
  .create();

// 未烧制的剪刀
recipes.remove(<ceramics:unfired_clay:1>);
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<ceramics:unfired_clay:1>)
  .create();

// 未烧制黏土板
recipes.remove(<ceramics:unfired_clay:8>);
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <minecraft:clay_ball>, null],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<ceramics:unfired_clay:8>)
  .create();