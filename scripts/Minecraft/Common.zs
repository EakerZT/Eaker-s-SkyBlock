import mods.artisanworktables.builder.RecipeBuilder;

var flint = <minecraft:flint>;
var plankWood = <ore:plankWood>;
var bowl = <minecraft:bowl>;
var glassBottle = <minecraft:glass_bottle>;
var paneGlass = <ore:paneGlass>;

recipes.remove(glassBottle);
recipes.addShaped(glassBottle,
    [[plankWood,plankWood,plankWood],
    [paneGlass,flint,paneGlass],
    [paneGlass,paneGlass,paneGlass]]);

recipes.remove(<minecraft:stick>);
recipes.addShaped('minecraft_stick',<minecraft:stick> * 2,[[<ore:plankWood>],[<ore:plankWood>]]);

RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>],
    [<ore:plankWood>]])
  .addTool(<ore:artisansHatchet>, 1)
  .addOutput(<minecraft:stick>)
  .create();
