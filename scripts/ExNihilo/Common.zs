import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

var removeItems = [
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
    <exnihilocreatio:crook_stone>,
    <exnihilocreatio:item_material:7>
] as IItemStack[];

for item in removeItems {
    JEI.removeAndHide(item);
}

// 筛网
recipes.remove(<exnihilocreatio:item_mesh:1>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]])
  .addOutput(<exnihilocreatio:item_mesh:1>)
  .create();

// 未烧制的坩埚
recipes.remove(<exnihilocreatio:block_crucible>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, null, <tconstruct:soil>],
    [<tconstruct:soil>, null, <tconstruct:soil>],
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]])
  .setFluid(<liquid:water> * 500)
  .addOutput(<exnihilocreatio:block_crucible>)
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

//石桶
recipes.remove(<exnihilocreatio:block_barrel1>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:plateStone>, null, <ore:plateStone>],
    [<ore:plateStone>, null, <ore:plateStone>],
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]])
  .addOutput(<exnihilocreatio:block_barrel1>)
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
RecipeBuilder.get("basic")
  .setShapeless([<exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>])
  .addOutput(<minecraft:cobblestone>)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>, <exnihilocreatio:item_pebble>])
  .addOutput(<minecraft:cobblestone> * 2)
  .create();

// 木坩埚
recipes.remove(<exnihilocreatio:block_crucible_wood>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addOutput(<exnihilocreatio:block_crucible_wood>)
  .create();

// 石棍
recipes.remove(<exnihilocreatio:item_material:6>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:cobblestone>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<exnihilocreatio:item_material:6> * 4)
  .create();

//石传动轴
recipes.remove(<exnihilocreatio:block_axle_stone>);
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:gearStone>, <ore:rodStone>, <ore:gearStone>]])
  .addOutput(<exnihilocreatio:block_axle_stone>)
  .create();

//水车
recipes.remove(<exnihilocreatio:block_waterwheel>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:plateWood>, <exnihilocreatio:block_axle_stone>, <ore:plateWood>],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]])
  .addOutput(<exnihilocreatio:block_waterwheel>)
  .create();

//自动筛制机
recipes.remove(<exnihilocreatio:block_auto_sifter>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<tconstruct:wooden_hopper>, <ore:gearStone>, <tconstruct:wooden_hopper>],
    [<ore:plateWood>, <exnihilocreatio:block_axle_stone>, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:sticky_piston>, <ore:plateWood>]])
  .addOutput(<exnihilocreatio:block_auto_sifter>)
  .create();
