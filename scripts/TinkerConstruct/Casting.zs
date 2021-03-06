import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;

var plateCast = <tconstruct:cast_custom:3>;
var gearCast = <tconstruct:cast_custom:4>;
var gearWood = odItemMap['gearWood'];
var gearStone = odItemMap['gearStone'];
var plateStone = odItemMap['plateStone'];

// 焦黑视窗
recipes.remove(<tconstruct:seared_tank:2>);
Casting.addBasinRecipe(<tconstruct:seared_tank:2>, <tconstruct:seared_glass>, <liquid:stone>, 288, true, 100);

// 木齿轮 -> 石齿轮
Casting.addTableRecipe(gearStone, gearWood, <liquid:stone>, 288, true, 100);
// 熔炼石头 -> 石齿轮
Casting.addTableRecipe(gearStone, gearCast, <liquid:stone>, 288, false, 20);
// 熔炼金 石齿轮 齿轮模板
Casting.addTableRecipe(gearCast, gearStone, <liquid:gold>, 288, true, 60);
// 熔炼黄铜 石齿轮 齿轮模板
Casting.addTableRecipe(gearCast, gearStone, <liquid:brass>, 144, true, 20);
// 熔炼铝黄铜 石齿轮 齿轮模板
Casting.addTableRecipe(gearCast, gearStone, <liquid:alubrass>, 144, true, 40);
// 熔炼石头 石板 板模板
Casting.addTableRecipe(plateStone, plateCast, <liquid:stone>, 288, false, 20);

// 熔炼金 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:gold>, 288, true, 60);
// 熔炼黄铜 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:brass>, 144, true, 20);
// 熔炼铝黄铜 石螺丝 螺丝模板
Casting.addTableRecipe(<contenttweaker:cast_bolt>, odItemMap['boltStone'], <liquid:alubrass>, 144, true, 40);

var materialNames = [
  "Iron",
  "Gold",
  "Copper",
  "Tin",
  "Silver",
  "Lead",
  "Aluminum",
  "Nickel",
  "Platinum",
  "Iridium",
  "Steel",
  "Electrum",
  "Invar",
  "Bronze",
  "Constantan",
  "Signalum",
  "Lumium",
  "Enderium",
] as string[];

var liquids = [
  <liquid:iron>,
  <liquid:gold>,
  <liquid:copper>,
  <liquid:tin>,
  <liquid:silver>,
  <liquid:lead>,
  <liquid:aluminum>,
  <liquid:nickel>,
  <liquid:platinum>,
  <liquid:iridium>,
  <liquid:steel>,
  <liquid:electrum>,
  <liquid:invar>,
  <liquid:bronze>,
  <liquid:constantan>,
  <liquid:signalum>,
  <liquid:lumium>,
  <liquid:enderium>,
] as ILiquidStack[];

for i in 0 to materialNames.length {
  Casting.addTableRecipe(odItemMap['bolt'+materialNames[i]], <contenttweaker:cast_bolt>, liquids[i], 72, false, 40);
}
