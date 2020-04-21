import mods.modularmachinery.RecipeBuilder;

val recipe = RecipeBuilder.newBuilder("saf_bronze", "steam_alloy_furnace", 1000, 0);
recipe.addFluidInput(<liquid:steam> *  1000)
    .addItemInput(<ore:ingotCopper>, 3)
    .addItemInput(<ore:ingotTin>)
    .addItemOutput(<thermalfoundation:material:163> * 4)
    .build();