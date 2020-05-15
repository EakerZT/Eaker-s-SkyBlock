import mods.artisanworktables.builder.RecipeBuilder;


// 工程师锤
recipes.remove(<immersiveengineering:tool>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:plateIron>, <ore:plankWood>],
    [null, <ore:stickWood>, <ore:plateIron>],
    [<ore:stickWood>, null, null]])
  .addOutput(<immersiveengineering:tool>)
  .create();

// 铁棒
recipes.remove(<immersiveengineering:material:1>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotIron>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap["stickIron"])
  .create();

// 窑砖
recipes.remove(<immersiveengineering:stone_decoration:10>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <ore:sandstone>, <tconstruct:soil>],
    [<ore:sandstone>, <tconstruct:soil>, <ore:sandstone>],
    [<tconstruct:soil>, <ore:sandstone>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration:10>)
  .create();

// 焦炉砖
recipes.remove(<immersiveengineering:stone_decoration>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>],
    [<minecraft:brick>, <tconstruct:soil>, <minecraft:brick>],
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration>)
  .create();
  
// 强化焦炉砖
recipes.remove(<immersivetech:stone_decoration>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:plateSteel>, <immersiveengineering:stone_decoration>, <ore:plateSteel>],
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]])
  .addOutput(<immersivetech:stone_decoration>)
  .create();

// 高炉砖
recipes.remove(<immersiveengineering:stone_decoration:1>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <minecraft:netherbrick>, <tconstruct:soil>],
    [<minecraft:netherbrick>, <tconstruct:soil>, <minecraft:netherbrick>],
    [<tconstruct:soil>, <minecraft:netherbrick>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration:1>)
  .create();

// 强化高炉砖
recipes.remove(<immersiveengineering:stone_decoration:2>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:plateSteel>, <immersiveengineering:stone_decoration:1>, <ore:plateSteel>],
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<immersiveengineering:stone_decoration:2>)
  .create();

// 红石工程块
recipes.remove(<immersiveengineering:metal_decoration0:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>],
    [<techreborn:cable:5>, <techreborn:part:29>, <techreborn:cable:5>],
    [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]])
  .addOutput(<immersiveengineering:metal_decoration0:3>)
  .create();
