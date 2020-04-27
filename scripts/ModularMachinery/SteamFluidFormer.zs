import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var moldStick = <immersiveengineering:mold:2>;


function addBaseReceipes(receipeName as string,castItem as IItemStack,inputFluid as ILiquidStack,num as int,ouputItem as IItemStack) {
  RecipeBuilder.newBuilder(receipeName, "steam_fluid_foremer", 100, 0)
    .addFluidInput(<liquid:steam> *  500)
    .addFluidInput(inputFluid *  num)
    .addItemInput(castItem)
    .setChance(0)
    .addItemOutput(ouputItem)
    .build();
}


function addMaterialReceipes(materialName as string, liquid as ILiquidStack) {
  var castStick = <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"});
  var castIngot = <tconstruct:cast_custom:0>;
  var castPlate = <tconstruct:cast_custom:3>;
  var castGear = <tconstruct:cast_custom:4>;
  var castBolt = <contenttweaker:cast_bolt>;
  print(materialName);
  addBaseReceipes("sff_ingot" + materialName, castIngot, liquid, 144, odItemMap["ingot" + materialName]);
  addBaseReceipes("sff_stick" + materialName, castStick, liquid, 72, odItemMap["stick" + materialName]);
  addBaseReceipes("sff_plate" + materialName, castPlate, liquid, 144, odItemMap["plate" + materialName]);
  addBaseReceipes("sff_gear" + materialName, castGear, liquid, 576, odItemMap["gear" + materialName]);
  addBaseReceipes("sff_bolt" + materialName, castBolt, liquid, 72, odItemMap["bolt" + materialName]);
}

var materialName = [
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

for i in 0 to materialName.length {
  addMaterialReceipes(materialName[i],liquids[i]);
}
