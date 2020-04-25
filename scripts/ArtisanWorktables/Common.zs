import mods.artisanworktables.builder.RecipeBuilder;

var baseWorktable = <artisanworktables:workstation:5>;
var woodWorktable = <artisanworktables:workstation:1>;
var stoneWorktable = <artisanworktables:workstation:2>;
var dirtWorktable = <artisanworktables:workstation:10>;
var engineerWorktable = <artisanworktables:workstation:6>;
var jewelerWorktable = <artisanworktables:workstation:4>;
var blacksmithWorktable = <artisanworktables:workstation:3>;
var plank = <ore:plankWood>;
var cobblestone = <ore:cobblestone>;
var oreDirt = <ore:dirt>;
var oreWoodGear = <ore:gearWood>;
var oreIronPlate = <ore:plateIron>;
var quartz = <minecraft:quartz>;


recipes.addShaped(baseWorktable, 
  [[<ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <ore:plankWood>]]);

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>]])
  .addOutput(baseWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[plank,plank,plank],
    [plank,baseWorktable,plank],
    [plank,plank,plank]])
  .addOutput(woodWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[cobblestone,cobblestone,cobblestone],
    [cobblestone,baseWorktable,cobblestone],
    [cobblestone,cobblestone,cobblestone]])
  .addOutput(stoneWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[oreDirt,oreDirt,oreDirt],
    [oreDirt,baseWorktable,oreDirt],
    [oreDirt,oreDirt,oreDirt]])
  .addOutput(dirtWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[oreWoodGear,oreWoodGear,oreWoodGear],
    [oreWoodGear,baseWorktable,oreWoodGear],
    [oreWoodGear,oreWoodGear,oreWoodGear]])
  .addOutput(engineerWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[quartz,quartz,quartz],
    [quartz,baseWorktable,quartz],
    [quartz,quartz,quartz]])
  .addOutput(jewelerWorktable)
  .create();

RecipeBuilder.get("basic")
  .setShaped(
    [[oreIronPlate,oreIronPlate,oreIronPlate],
    [oreIronPlate,baseWorktable,oreIronPlate],
    [oreIronPlate,oreIronPlate,oreIronPlate]])
  .addOutput(blacksmithWorktable)
  .create();
