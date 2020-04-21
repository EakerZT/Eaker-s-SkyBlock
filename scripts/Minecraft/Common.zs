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
