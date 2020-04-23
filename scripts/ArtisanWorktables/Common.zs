var woodWorktable = <artisanworktables:worktable:1>;
var stoneWorktable = <artisanworktables:worktable:2>;
var dirtWorktable = <artisanworktables:worktable:10>;
var engineerWorktable = <artisanworktables:worktable:6>;
var jewelerWorktable = <artisanworktables:worktable:4>;
var plank = <ore:plankWood>;
var cobblestone = <ore:cobblestone>;
var craftingTable = <minecraft:crafting_table>;
var oreDirt = <ore:dirt>;
var oreWoodGear = <ore:gearWood>;
var quartz = <minecraft:quartz>;

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

recipes.addShaped(
    dirtWorktable,
    [[oreDirt,oreDirt,oreDirt],
    [oreDirt,craftingTable,oreDirt],
    [oreDirt,oreDirt,oreDirt]]
);

recipes.addShaped(
    engineerWorktable,
    [[oreWoodGear, oreWoodGear, oreWoodGear],
    [oreWoodGear, craftingTable, oreWoodGear],
    [oreWoodGear, oreWoodGear, oreWoodGear]]);

recipes.addShaped(
    jewelerWorktable,
    [[quartz, quartz, quartz],
    [quartz, craftingTable, quartz],
    [quartz, quartz, quartz]]);
