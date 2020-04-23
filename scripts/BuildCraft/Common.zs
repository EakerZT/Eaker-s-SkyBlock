import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

function removeItemAllRecipes(item as IItemStack) {
  for i in 0 to 17{
    recipes.remove(item.definition.makeStack(i));
  }
}

var waterproof = <buildcrafttransport:waterproof>;
// 管道密封剂
recipes.remove(waterproof);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:slimeball>]])
  .addOutput(waterproof)
  .create();

// 木质提取管道
removeItemAllRecipes(<buildcrafttransport:pipe_wood_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:boltWood>, null, <ore:boltWood>],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<buildcrafttransport:pipe_wood_item> * 2)
  .create();

// 木质流体提取管道
removeItemAllRecipes(<buildcrafttransport:pipe_wood_fluid>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:boltWood>, waterproof, <ore:boltWood>],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<buildcrafttransport:pipe_wood_fluid> * 2)
  .create();

// 圆石管道
removeItemAllRecipes(<buildcrafttransport:pipe_cobble_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:gearStone>, null, <ore:gearStone>],
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_cobble_item> * 8)
  .create();
  
// 圆石流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_cobble_fluid>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:gearStone>, waterproof, <ore:gearStone>],
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_cobble_fluid> * 8)
  .create();

// 石头管道
removeItemAllRecipes(<buildcrafttransport:pipe_stone_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>],
    [<ore:plateStone>, null, <ore:plateStone>],
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_stone_item> * 8)
  .create();

// 石头流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_stone_fluid>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>],
    [<ore:plateStone>, waterproof, <ore:plateStone>],
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_stone_fluid> * 8)
  .create();

// 石英管道
removeItemAllRecipes(<buildcrafttransport:pipe_quartz_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
    [<ore:gearQuartz>, null, <ore:gearQuartz>],
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_quartz_item> * 8)
  .create();

// 石英流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_quartz_fluid>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
    [<ore:gearQuartz>, waterproof, <ore:gearQuartz>],
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcrafttransport:pipe_quartz_fluid> * 8)
  .create();

// 黏土管道
removeItemAllRecipes(<buildcrafttransport:pipe_clay_item>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, null, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<buildcrafttransport:pipe_clay_item> * 8)
  .create();

// 黏土流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_clay_fluid>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, waterproof, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<buildcrafttransport:pipe_clay_fluid> * 8)
  .create();

// 铁管道
removeItemAllRecipes(<buildcrafttransport:pipe_iron_item>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>])
  .setFluid(<liquid:iron> * 1000)
  .addOutput(<buildcrafttransport:pipe_iron_item>)
  .create();
// 铁流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_iron_fluid>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>])
  .setFluid(<liquid:iron> * 1000)
  .addOutput(<buildcrafttransport:pipe_iron_fluid>)
  .create();

// 金管道
removeItemAllRecipes(<buildcrafttransport:pipe_gold_item>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>])
  .setFluid(<liquid:gold> * 1000)
  .addOutput(<buildcrafttransport:pipe_gold_item>)
  .create();
// 金流体管道
removeItemAllRecipes(<buildcrafttransport:pipe_gold_fluid>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>, <buildcrafttransport:pipe_clay_fluid>])
  .setFluid(<liquid:gold> * 1000)
  .addOutput(<buildcrafttransport:pipe_gold_fluid>)
  .create();

// 黑曜石管道
removeItemAllRecipes(<buildcrafttransport:pipe_obsidian_item>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <ore:obsidian>])
  .addOutput(<buildcrafttransport:pipe_obsidian_item>)
  .create();

// 钻石管道
removeItemAllRecipes(<buildcrafttransport:pipe_diamond_item>);
RecipeBuilder.get("engineer")
  .setShapeless([<buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <buildcrafttransport:pipe_clay_item>, <ore:gemDiamond>])
  .addOutput(<buildcrafttransport:pipe_diamond_item>)
  .create();

var removePipe = [
  <buildcrafttransport:pipe_structure>,
  <buildcrafttransport:pipe_wood_power>,
  <buildcrafttransport:pipe_cobble_power>,
  <buildcrafttransport:pipe_stone_power>,
  <buildcrafttransport:pipe_quartz_power>,
  <buildcrafttransport:pipe_sandstone_power>,
  <buildcrafttransport:pipe_gold_power>,
  <buildcrafttransport:pipe_sandstone_item>,
  <buildcrafttransport:pipe_void_item>,
  <buildcrafttransport:pipe_diamond_wood_item>,
  <buildcrafttransport:pipe_lapis_item>,
  <buildcrafttransport:pipe_daizuli_item>,
  <buildcrafttransport:pipe_emzuli_item>,
  <buildcrafttransport:pipe_stripes_item>,
  <buildcrafttransport:pipe_sandstone_fluid>,
  <buildcrafttransport:pipe_void_fluid>,
  <buildcrafttransport:pipe_diamond_wood_fluid>,
  <buildcrafttransport:pipe_diamond_fluid>
] as IItemStack[];

for item in removePipe {
    mods.jei.JEI.hide(item);
    removeItemAllRecipes(item);
}


// 红石引擎
recipes.remove(<buildcraftcore:engine>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plankWood>, null],
    [<ore:plateWood>, <ore:gearWood>, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:piston>, <ore:plateWood>]])
  .addOutput(<buildcraftcore:engine>)
  .create();

// 自动合成台
recipes.remove(<buildcraftfactory:autoworkbench_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateWood>, <minecraft:chest>, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:crafting_table>, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:piston>, <ore:plateWood>]])
  .addOutput(<buildcraftfactory:autoworkbench_item>)
  .create();

//扳手
recipes.remove(<buildcraftcore:wrench>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:rodStone>, null],
    [null, <ore:gearStone>, <ore:rodStone>],
    [<ore:rodStone>, null, null]])
  .addOutput(<buildcraftcore:wrench>)
  .create();
// 储罐
recipes.remove(<buildcraftfactory:tank>);
RecipeBuilder.get("jeweler")
  .setShaped([
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<buildcraftfactory:tank>)
  .create();
