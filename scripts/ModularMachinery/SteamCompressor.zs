import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;



function initBusRecipes() {
  for i in 0 to 6 {
    recipes.remove(<modularmachinery:blockinputbus>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_ii"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockinputbus>.definition.makeStack(i) * 4)
      .addItemOutput(<modularmachinery:blockinputbus>.definition.makeStack(i + 1))
      .build();
    recipes.remove(<modularmachinery:blockoutputbus>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_io"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockoutputbus>.definition.makeStack(i) * 4)
      .addItemOutput(<modularmachinery:blockoutputbus>.definition.makeStack(i + 1))
      .build();
    recipes.remove(<modularmachinery:blockfluidinputhatch>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_fi"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockfluidinputhatch>.definition.makeStack(i) * 4)
      .addItemOutput(<modularmachinery:blockfluidinputhatch>.definition.makeStack(i + 1))
      .build();
    recipes.remove(<modularmachinery:blockfluidoutputhatch>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_fo"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockfluidoutputhatch>.definition.makeStack(i) * 4)
      .addItemOutput(<modularmachinery:blockfluidoutputhatch>.definition.makeStack(i + 1))
      .build();
    recipes.remove(<modularmachinery:blockenergyinputhatch>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_ei"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockenergyinputhatch>.definition.makeStack(i) * 4)
      .addItemOutput(<modularmachinery:blockenergyinputhatch>.definition.makeStack(i + 1))
      .build();
    recipes.remove(<modularmachinery:blockenergyoutputhatch>.definition.makeStack(i + 1));
    RecipeBuilder.newBuilder("sc_eo"  + i, "steam_compressor", 500, 0)
      .addFluidInput(<liquid:steam> *  1000)
      .addItemInput(<modularmachinery:blockenergyoutputhatch>.definition.makeStack(i) *  4)
      .addItemOutput(<modularmachinery:blockenergyoutputhatch>.definition.makeStack(i + 1))
      .build();
  }
}

initBusRecipes();