import mods.artisanworktables.builder.RecipeBuilder;
import mods.tconstruct.Casting;

// 木板
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plankWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(odItemMap['plateWood'])
  .create();

// 木螺丝
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:stickWood>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['boltWood'])
  .create();

// 木齿轮
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <minecraft:stick>, null],
    [<minecraft:stick>, <techreborn:plates:3>, <minecraft:stick>],
    [null, <minecraft:stick>, null]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['gearWood'])
  .create();

var materialNames = [
    "Iron",
    "Gold",
    "Aluminum",
    "Bronze", 
    "Constantan", 
    "Copper",
    "Electrum",
    "Invar",
    "Lead",
    "Nickel",
    "Platinum",
    "Iridium",
    "Silver",
    "Steel",
    "Tin", 
    "Signalum",
    "Lumium",
    "Enderium",
] as string[];

for name in materialNames {
  var oreIngot = oreDict["ingot"+name];
  var orePlate = oreDict["plate"+name];
  var orePlateItem = odItemMap["plate"+name];
  var oreStick = oreDict["stick"+name];
  var oreStickItem = odItemMap["stick"+name];
  var oreBolt = oreDict["bolt"+name];
  var oreBoltItem = odItemMap["bolt"+name];
  var oreGear = oreDict["gear"+name];
  var oreGearItem = odItemMap["gear"+name];
  // 板
  RecipeBuilder.get("blacksmith")
    .setShaped([[oreIngot],[oreIngot]])
    .addTool(<ore:artisansHammer>, 4)
    .addOutput(orePlateItem)
    .create();

  // 棒
  RecipeBuilder.get("blacksmith")
    .setShapeless([oreIngot])
    .addTool(<ore:artisansFile>, 4)
    .addOutput(oreStickItem)
    .create();

  // 螺丝
  RecipeBuilder.get("blacksmith")
    .setShapeless([oreStick])
    .addTool(<ore:artisansHandsaw>, 4)
    .addTool(<ore:artisansFile>, 4)
    .addOutput(oreBoltItem * 2)
    .create();

  // 齿轮
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, oreStick, null],
    [oreStick, orePlate, oreStick],
    [null, oreStick, null]])
  .addTool(<ore:artisansFile>, 4)
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(oreGearItem)
  .create();
}
// 石螺丝
RecipeBuilder.get("mason")
  .setShapeless([<ore:stickStone>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap['boltStone'])
  .create();

// 熔炼金 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:gold>, 288, true, 60);
// 熔炼黄铜 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:brass>, 144, true, 20);
// 熔炼铝黄铜 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:alubrass>, 144, true, 40);

