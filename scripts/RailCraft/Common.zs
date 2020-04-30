import mods.artisanworktables.builder.RecipeBuilder;
import mods.chisel.Carving;
import mods.tconstruct.Casting;
import moretweaker.railcraft.BlastFurnace;
import moretweaker.railcraft.RockCrusher;
import moretweaker.railcraft.RollingMachine;
import crafttweaker.item.IItemStack;

var removeItems =  [
  <railcraft:equipment:1>,
  <railcraft:rock_crusher>,
] as IItemStack[];

removeAndHideItemList(removeItems);

BlastFurnace.add(odItemMap["ingotSteel"], <ore:ingotIron>, 64 * 20, 1);

Carving.addGroup("brickSandy");
recipes.remove(<railcraft:brick_sandy:0>);
furnace.remove(<railcraft:brick_sandy:0>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:0>);
recipes.remove(<railcraft:brick_sandy:1>);
furnace.remove(<railcraft:brick_sandy:1>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:1>);
recipes.remove(<railcraft:brick_sandy:2>);
furnace.remove(<railcraft:brick_sandy:2>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:2>);
recipes.remove(<railcraft:brick_sandy:3>);
furnace.remove(<railcraft:brick_sandy:3>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:3>);
recipes.remove(<railcraft:brick_sandy:4>);
furnace.remove(<railcraft:brick_sandy:4>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:4>);
recipes.remove(<railcraft:brick_sandy:5>);
furnace.remove(<railcraft:brick_sandy:5>);
Carving.addVariation("brickSandy", <railcraft:brick_sandy:5>);

Carving.addGroup("brickRedSandy");
recipes.remove(<railcraft:brick_red_sandy:0>);
furnace.remove(<railcraft:brick_red_sandy:0>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:0>);
recipes.remove(<railcraft:brick_red_sandy:1>);
furnace.remove(<railcraft:brick_red_sandy:1>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:1>);
recipes.remove(<railcraft:brick_red_sandy:2>);
furnace.remove(<railcraft:brick_red_sandy:2>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:2>);
recipes.remove(<railcraft:brick_red_sandy:3>);
furnace.remove(<railcraft:brick_red_sandy:3>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:3>);
recipes.remove(<railcraft:brick_red_sandy:4>);
furnace.remove(<railcraft:brick_red_sandy:4>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:4>);
recipes.remove(<railcraft:brick_red_sandy:5>);
furnace.remove(<railcraft:brick_red_sandy:5>);
Carving.addVariation("brickRedSandy", <railcraft:brick_red_sandy:5>);

// 蓄水器
recipes.remove(<railcraft:tank_water>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:boltWood>, <ore:plateWood>, <ore:boltWood>],
    [<ore:plateWood>, <ore:slimeball>, <ore:plateWood>],
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
  .setFluid(<liquid:water> * 250)
  .addOutput(<railcraft:brick_sandy> * 3)
  .create();

// 红砂岩砖
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]])
  .setFluid(<liquid:water> * 250)
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

// 固态燃烧室
recipes.remove(<railcraft:boiler_firebox_solid>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>],
    [<ore:plateIron>, <minecraft:furnace>, <ore:plateIron>],
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<railcraft:boiler_firebox_solid>)
  .create();

// 流体燃烧室
recipes.remove(<railcraft:boiler_firebox_fluid>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>],
    [<ore:plateIron>, <buildcraftfactory:tank>, <ore:plateIron>],
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<railcraft:boiler_firebox_fluid>)
  .create();

// 低压锅炉
recipes.remove(<railcraft:boiler_tank_pressure_low>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<railcraft:boiler_tank_pressure_low>)
  .create();

// 铁质壁板
recipes.remove(<railcraft:tank_iron_wall>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]])
  .addOutput(<railcraft:tank_iron_wall> * 4)
  .create();

// 铁质阀门
recipes.remove(<railcraft:tank_iron_valve>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<railcraft:tank_iron_wall>, <minecraft:lever>])
  .addOutput(<railcraft:tank_iron_valve>)
  .create();

// 铁质计量器
recipes.remove(<railcraft:tank_iron_gauge>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:stickIron>, <ore:paneGlass>, <ore:stickIron>],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [<ore:stickIron>, <ore:paneGlass>, <ore:stickIron>]])
  .addOutput(<railcraft:tank_iron_gauge> * 4)
  .create();

// 高炉砖
recipes.remove(<railcraft:blast_furnace>);
Casting.addBasinRecipe(
  <railcraft:blast_furnace>,
  <minecraft:nether_brick>,
  <liquid:steel>,
  144,
  true,
  100);
