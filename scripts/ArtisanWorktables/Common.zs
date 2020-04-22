var woodWorktable = <artisanworktables:worktable:1>;
var stoneWorktable = <artisanworktables:worktable:2>;
var plank = <ore:plankWood>;
var cobblestone = <ore:cobblestone>;
var craftingTable = <minecraft:crafting_table>;

recipes.addShaped(
    woodWorktable,
    [[plank,plank,plank],
    [plank,craftingTable,plank],
    [plank,plank,plank]]
);

recipes.addShaped(
    stoneWorktable,
    [[cobblestone,cobblestone,cobblestone],
    [cobblestone,craftingTable,cobblestone],
    [cobblestone,cobblestone,cobblestone]]
);