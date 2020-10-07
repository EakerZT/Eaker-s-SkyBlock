import mods.artisanworktables.builder.RecipeBuilder;
import mods.immersiveengineering.BottlingMachine; 
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;
import crafttweaker.item.IItemStack;

var removeItems = [
  <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
  <extrautils2:machine>.withTag({Type: "extrautils2:crusher"})
] as IItemStack[];

removeAndHideItemList(removeItems);

var bucket = <minecraft:bucket> |
  <ceramics:clay_bucket> |
  <vefluids:vebucket> |
  <vefluids:vebucket:1> |
  <vefluids:vebucket:2> |
  <vefluids:vebucket:3> |
  <vefluids:vebucket:4> |
  <vefluids:vebucket:5>;

// 红石钟
recipes.remove(<extrautils2:redstoneclock>);
RecipeBuilder.get("engineer")
   .setShaped([
    [<minecraft:redstone>, <ore:stone>, <minecraft:redstone>],
    [<ore:stone>, <minecraft:redstone_torch>, <ore:stone>],
    [<minecraft:redstone>, <ore:stone>, <minecraft:redstone>]])
  .addOutput(<extrautils2:redstoneclock>)
  .create();

// 压缩圆石
recipes.remove(<extrautils2:compressedcobblestone>);
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<extrautils2:compressedcobblestone>)
  .create();

// 传输节点
recipes.remove(<extrautils2:pipe>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
    [<enderio:item_material:4>, null, <enderio:item_material:4>],
    [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<extrautils2:pipe> * 4)
  .create();

// 物品传输节点
recipes.remove(<extrautils2:grocket>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:chest>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket>)
  .create();

// 抽取过滤节点
recipes.remove(<extrautils2:grocket:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:filter>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:1>)
  .create();

// 流体传输节点
recipes.remove(<extrautils2:grocket:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, bucket, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:2>)
  .create();

// 物品抽取节点
recipes.remove(<extrautils2:grocket:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:chest>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:3>)
  .create();

// 流体抽取节点
recipes.remove(<extrautils2:grocket:4>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>,bucket, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:4>)
  .create();

// 过滤传输节点
recipes.remove(<extrautils2:grocket:5>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:filter>],
    [<extrautils2:pipe>]])
  .addOutput(<extrautils2:grocket:5>)
  .create();

// 能量传输节点
recipes.remove(<extrautils2:grocket:6>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <extrautils2:pipe>, <integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:redstone>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<extrautils2:grocket:6>)
  .create();

// 平面物品传输节点
recipes.remove(<extrautils2:flattransfernode>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:grocket>]])
  .addTool(<artisanworktables:artisans_hammer_iron>, 4)
  .addOutput(<extrautils2:flattransfernode>)
  .create();

// 平面流体传输节点
recipes.remove(<extrautils2:flattransfernode:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<extrautils2:grocket:2>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<extrautils2:flattransfernode:1>)
  .create();

// 物品过滤器
recipes.remove(<extrautils2:filter>);
RecipeBuilder.get("tailor")
  .setShaped([
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, <exnihilocreatio:item_mesh:1>, <ore:stickWood>],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<extrautils2:filter>)
  .create();

// 流体过滤器
recipes.remove(<extrautils2:filterfluids>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <exnihilocreatio:item_mesh:1>, null],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<extrautils2:filterfluids>)
  .create();

recipes.remove(<extrautils2:machine>);
BottlingMachine.addRecipe(<extrautils2:machine>, <immersiveengineering:metal_decoration0:3>, <liquid:lubricant> * 1000);
mods.tconstruct.Casting.addBasinRecipe(<extrautils2:machine>, <immersiveengineering:metal_decoration0:3>, <liquid:lubricant>, 1000, true);
mods.thermalexpansion.Transposer.addFillRecipe(<extrautils2:machine>, <immersiveengineering:metal_decoration0:3>, <liquid:lubricant> * 1000, 1000);

RecipeBuilder.get("engineer")
  .setShaped([
    [<artisanworktables:design_pattern>.withTag({}), <artisanworktables:design_pattern>.withTag({}), <artisanworktables:design_pattern>.withTag({})],
    [<artisanworktables:design_pattern>.withTag({}), <artisanworktables:workstation:6>, <artisanworktables:design_pattern>.withTag({})],
    [<artisanworktables:design_pattern>.withTag({}), <artisanworktables:design_pattern>.withTag({}), <artisanworktables:design_pattern>.withTag({})]])
  .addOutput(<extrautils2:machine>.withTag({Type: "crafttweaker:blueprint_generator"}))
  .create();
