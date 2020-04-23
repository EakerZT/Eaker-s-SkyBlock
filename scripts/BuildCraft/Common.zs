import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
    <buildcraftcore:gear_wood>,
    <buildcraftcore:gear_stone>,
    <buildcraftcore:gear_iron>,
    <buildcraftcore:gear_gold>,
    <buildcraftcore:gear_diamond>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}

// 木质提取管道
recipes.remove(<buildcrafttransport:pipe_wood_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:boltWood>, null, <ore:boltWood>],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<buildcrafttransport:pipe_wood_item> * 2)
  .create();

// 圆石管道
recipes.remove(<buildcrafttransport:pipe_cobble_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:gearStone>, null, <ore:gearStone>],
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]])
  .addTool(<artisanworktables:artisans_file_stone>, 4)
  .addOutput(<buildcrafttransport:pipe_cobble_item> * 8)
  .create();

// 石头管道
recipes.remove(<buildcrafttransport:pipe_stone_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>],
    [<ore:plateStone>, null, <ore:plateStone>],
    [<ore:plateStone>, <ore:gearStone>, <ore:plateStone>]])
  .addTool(<artisanworktables:artisans_file_stone>, 4)
  .addOutput(<buildcrafttransport:pipe_stone_item> * 8)
  .create();

// 石英管道
recipes.remove(<buildcrafttransport:pipe_quartz_item>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
    [<ore:gearQuartz>, null, <ore:gearQuartz>],
    [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>]])
  .addTool(<artisanworktables:artisans_file_stone>, 4)
  .addOutput(<buildcrafttransport:pipe_quartz_item> * 8)
  .create();

// 黏土管道
recipes.remove(<buildcrafttransport:pipe_clay_item>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, null, <ceramics:unfired_clay:8>],
    [<ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>, <ceramics:unfired_clay:8>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<buildcrafttransport:pipe_clay_item> * 8)
  .create();

// 红石引擎
recipes.remove(<buildcraftcore:engine>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plankWood>, null],
    [<ore:plateWood>, <ore:gearWood>, <ore:plateWood>],
    [<ore:plateWood>, <minecraft:piston>, <ore:plateWood>]])
  .addOutput(<buildcraftcore:engine>)
  .create();
  