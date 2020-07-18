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
    [<minecraft:stick>, null, <minecraft:stick>],
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

