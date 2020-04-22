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
  .addOutput(<buildcrafttransport:pipe_wood_item>)
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
  