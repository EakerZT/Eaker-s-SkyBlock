import mods.artisanworktables.builder.RecipeBuilder;
import mods.chisel.Carving;


Carving.addGroup("brickSandy");
recipes.remove(<railcraft:brick_sandy:0>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:0>);
recipes.remove(<railcraft:brick_sandy:1>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:1>);
recipes.remove(<railcraft:brick_sandy:2>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:2>);
recipes.remove(<railcraft:brick_sandy:3>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:3>);
recipes.remove(<railcraft:brick_sandy:4>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:4>);
recipes.remove(<railcraft:brick_sandy:5>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:5>);

Carving.addGroup("brickRedSandy");
recipes.remove(<railcraft:brick_sandy:0>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:0>);
recipes.remove(<railcraft:brick_sandy:1>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:1>);
recipes.remove(<railcraft:brick_sandy:2>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:2>);
recipes.remove(<railcraft:brick_sandy:3>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:3>);
recipes.remove(<railcraft:brick_sandy:4>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:4>);
recipes.remove(<railcraft:brick_sandy:5>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:5>);

recipes.remove(<railcraft:tank_water>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:boltWood>, <ore:plateWood>, <ore:boltWood>],
    [<ore:plateWood>, null, <ore:plateWood>],
    [<ore:boltWood>, <ore:plateWood>, <ore:boltWood>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<railcraft:tank_water>)
  .create();

// 砂岩砖
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<railcraft:brick_sandy> * 3)
  .create();

// 红砂岩砖
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<railcraft:brick_red_sandy> * 3)
  .create();

// 焦炉砖
recipes.remove(<railcraft:coke_oven>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<railcraft:brick_sandy>],
    [<railcraft:brick_sandy>],
    [<railcraft:brick_sandy>]])
  .addOutput(<railcraft:coke_oven> * 3)
  .create();

// 红焦炉砖
recipes.remove(<railcraft:coke_oven_red>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<railcraft:brick_red_sandy>],
    [<railcraft:brick_red_sandy>],
    [<railcraft:brick_red_sandy>]])
  .addOutput(<railcraft:coke_oven_red> * 3)
  .create();