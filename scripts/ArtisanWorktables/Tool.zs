import mods.artisanworktables.builder.RecipeBuilder;

var materialName = [
    // "Wood", // 木头
    // "Stone", // 石头
    "Iron", // 铁
    "Gold", // 金
    // "Diamond", // 钻石
    // "Flint", // 燧石
    // "Bone", // 骨
    "Aluminum", // 铝
    "Bronze", // 青铜
    "Constantan", // 康铜
    "Copper", // 铜
    "Electrum", // 琥珀金
    "Invar", // 殷钢
    "Lead", // 铅
    "Nickel", // 镍
    "Platinum", // 铂
    "Silver", // 银
    "Steel", // 钢
    "Tin" // 锡
] as string[];

RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:flint>, <minecraft:flint>],
    [null, <minecraft:stick>],
    [null, <minecraft:stick>]])
  .addOutput(<artisanworktables:artisans_hatchet_flint>)
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:flint>],
    [<minecraft:flint>],
    [<minecraft:stick>]])
  .addOutput(<artisanworktables:artisans_file_flint>)
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <minecraft:flint>, <minecraft:stick>],
    [<minecraft:flint>, <minecraft:stick>, null],
    [<minecraft:stick>, null, null]])
  .addOutput(<artisanworktables:artisans_handsaw_flint>)
  .create();

RecipeBuilder.get("carpenter")
  .setShaped([
    [null, null, <minecraft:flint>],
    [null, <ore:stickWood>, null],
    [<ore:plankWood>, null, null]])
  .addTool(<ore:artisansFile>, 1)
  .addOutput(<artisanworktables:artisans_driver_flint>)
  .create();