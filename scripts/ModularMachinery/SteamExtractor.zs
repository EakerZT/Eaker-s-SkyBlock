import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;


RecipeBuilder.newBuilder("se_leaves", "steam_extractor", 500, 0)
  .addFluidInput(<liquid:steam> *  1000)
  .addItemInput(<ore:treeLeaves>, 16)
  .addItemOutput(<techreborn:rubber_sapling>)
  .setChance(0.1)
  .addItemOutput(<integrateddynamics:menril_sapling>)
  .setChance(0.1)
  .addItemOutput(<tconstruct:slime_sapling>)
  .setChance(0.1)
  .addItemOutput(<tconstruct:slime_sapling:1>)
  .setChance(0.1)
  .addItemOutput(<tconstruct:slime_sapling:2>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling:1>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling:2>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling:3>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling:4>)
  .setChance(0.1)
  .addItemOutput(<minecraft:sapling:5>)
  .setChance(0.1)
  .build();

RecipeBuilder.newBuilder("se_sap", "steam_extractor", 500, 0)
  .addFluidInput(<liquid:steam> *  1000)
  .addItemInput(<techreborn:rubber_log>)
  .addItemOutput(<techreborn:part:31> * 2)
  .build();

RecipeBuilder.newBuilder("se_rubber", "steam_extractor", 500, 0)
  .addFluidInput(<liquid:steam> *  1000)
  .addItemInput(<techreborn:part:31>)
  .addItemOutput(<techreborn:part:32> * 2)
  .build();
