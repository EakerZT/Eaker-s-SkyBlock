import mods.artisanworktables.builder.RecipeBuilder;

// 机械外壳
recipes.remove(<modularmachinery:blockcasing>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>],
    [<ore:plateBronze>, null, <ore:plateBronze>],
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<modularmachinery:blockcasing> * 2)
  .create();

// 燃烧室外壳
recipes.remove(<modularmachinery:blockcasing:2>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <ore:stickBronze>, <ore:plateBronze>],
    [<ore:stickBronze>, null, <ore:stickBronze>],
    [<ore:plateBronze>, <ore:stickBronze>, <ore:plateBronze>]])
  .addOutput(<modularmachinery:blockcasing:2>)
  .create();

// 机械控制器
recipes.remove(<modularmachinery:blockcontroller>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>],
    [<ore:plateBronze>, <modularmachinery:blockcasing>, <ore:plateBronze>],
    [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansSpanner>, 4)
  .addOutput(<modularmachinery:blockcontroller>)
  .create();

// 小型物品输入
recipes.remove(<modularmachinery:blockinputbus>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:chest>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<modularmachinery:blockinputbus>)
  .create();

// 微型物品输出
recipes.remove(<modularmachinery:blockoutputbus>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:chest>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<modularmachinery:blockoutputbus>)
  .create();

// 小型流体输入
recipes.remove(<modularmachinery:blockfluidinputhatch>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:bucket>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<modularmachinery:blockfluidinputhatch>)
  .create();

// 小型流体输出
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <ore:plaplateBronzete>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:bucket>, <ore:plateBronze>],
    [<ore:plateBronze>, <minecraft:hopper>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<modularmachinery:blockfluidoutputhatch>)
  .create();

// 螺丝箱
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>],
    [<ore:plateBronze>, <ore:gearBronze>, <ore:plateBronze>],
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<modularmachinery:blockcasing:3>)
  .create();

// 通风口
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
    [<ore:stickBronze>, <ore:stickBronze>, <ore:stickBronze>],
    [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<modularmachinery:blockcasing:1>)
  .create();
