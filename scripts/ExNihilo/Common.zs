import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
    <exnihilocreatio:hammer_wood>,
    <exnihilocreatio:hammer_iron>,
    <exnihilocreatio:hammer_diamond>,
    <exnihilocreatio:hammer_gold>,
    <exnihilocreatio:crook_andesite>,
    <exnihilocreatio:crook_blaze>,
    <exnihilocreatio:crook_bone>,
    <exnihilocreatio:crook_clay>,
    <exnihilocreatio:crook_clay_uncooked>,
    <exnihilocreatio:crook_diamond>,
    <exnihilocreatio:crook_diorite>,
    <exnihilocreatio:crook_gold>,
    <exnihilocreatio:crook_granite>,
    <exnihilocreatio:crook_iron>,
    <exnihilocreatio:crook_netherrack>,
    <exnihilocreatio:crook_prismarine>,
    <exnihilocreatio:crook_purpur>,
    <exnihilocreatio:crook_stone>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

// 未烧制的坩埚
recipes.remove(<exnihilocreatio:block_crucible>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay>, <minecraft:clay_ball>]])
  .addOutput(<exnihilocreatio:block_crucible>)
  .create();

// 未烧制的黏土桶
recipes.remove(<ceramics:unfired_clay>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<ceramics:unfired_clay>)
  .create();

var woodCrook =  <exnihilocreatio:crook_wood>;
var oreStickWood = <ore:stickWood>;
var orePlankWood = <ore:plankWood>;

// 木钩
recipes.remove(woodCrook);
RecipeBuilder.get("carpenter")
  .setShaped([
    [oreStickWood, oreStickWood],
    [null, oreStickWood],
    [null, oreStickWood]])
  .addOutput(woodCrook)
  .create();

// 筛子
recipes.remove(<exnihilocreatio:block_sieve>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [orePlankWood, null, orePlankWood],
    [orePlankWood, oreStickWood, orePlankWood],
    [oreStickWood, null, oreStickWood]])
  .addOutput(<exnihilocreatio:block_sieve>)
  .create();

//木桶
recipes.remove(<exnihilocreatio:block_barrel0>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addOutput(<exnihilocreatio:block_barrel0>)
  .create();

// 石锤
recipes.remove(<exnihilocreatio:hammer_stone>);
RecipeBuilder.get("mason")
  .setShaped([
    [null, <ore:cobblestone>, <ore:string>],
    [null, <ore:stickWood>, <ore:cobblestone>],
    [<ore:stickWood>, null, null]])
  .addOutput(<exnihilocreatio:hammer_stone>)
  .create();

//石子
RecipeBuilder.get("mason")
  .setShaped([
    [<exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>],
    [<exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>]])
  .addOutput(<minecraft:cobblestone> * 4)
  .create();

// 木坩埚
recipes.remove(<exnihilocreatio:block_crucible_wood>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addOutput(<exnihilocreatio:block_crucible_wood>)
  .create();