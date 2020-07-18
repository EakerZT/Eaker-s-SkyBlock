import mods.artisanworktables.builder.RecipeBuilder;
import mods.chisel.Carving;
import mods.tconstruct.Casting;
import moretweaker.railcraft.BlastFurnace;
import moretweaker.railcraft.RockCrusher;
import moretweaker.railcraft.RollingMachine;
import crafttweaker.item.IItemStack;

// 蓄水器
recipes.remove(<railcraft:tank_water>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:plateWood>, <ore:materialRubber>, <ore:plateWood>],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>]])
  .addOutput(<railcraft:tank_water>)
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
    [<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>],
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
