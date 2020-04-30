import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

var toolName = [
    "cutters", // 剪刀
    "hammer", // 铁匠锤
    "framing_hammer", // 木匠锤
    "handsaw", //木匠锯
    "cutting_board", // 砧板
    "pan", // 平底锅
    "beaker", // 烧杯
    "burner", // 加热器
    "pencil", // 铅笔
    "tsquare", // 丁字尺
    "driver", // 工程师起子
    "spanner", // 扳手
    "lens", // 透镜
    "sifter", // 筛子
    "gemcutter",// 抛光工具
    "pliers", // 珠宝钳
    "athame", // 法师匕首
    "grimoire", // 法师宝典
    "chisel", // 木匠凿
    "trowel", // 石匠抹子
    "carver", // 刻刀
    "razor", // 刮刀
    "compass", // 圆规
    "quill", // 鹅毛笔
    "needle", // 裁缝线
    "shears", // 裁缝剪
    "punch", // 打孔器
    "groover", // 开槽器
    "mortar", // 研钵
    "knife", // 刀
    "hatchet", // 木匠手斧
    "file", // 锉刀
    "solderer" //电洛铁
] as string[];

var materialNames = [
    "Iron", // 铁
    "Gold", // 金
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

// 手斧
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>, <minecraft:stick>],
    [null, <minecraft:stick>]])
  .addOutput(<artisanworktables:artisans_hatchet_flint>)
  .create();
for i in <ore:artisansHatchet>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var orePlate = oreDict["plate"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [orePlate, orePlate, null],
                [orePlate, <ore:stickWood>, null],
                [null, <ore:stickWood>, null]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
// 锉刀
RecipeBuilder.get("carpenter")
  .setShaped([
    [<minecraft:flint>],
    [<minecraft:flint>],
    [<minecraft:stick>]])
  .addOutput(<artisanworktables:artisans_file_flint>)
  .create();
for i in <ore:artisansFile>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var orePlate = oreDict["plate"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                  [orePlate],
                  [orePlate],
                  [<minecraft:stick>]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
// 锯子
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <minecraft:flint>, <minecraft:stick>],
    [<minecraft:flint>, <minecraft:stick>, null],
    [<minecraft:stick>, null, null]])
  .addOutput(<artisanworktables:artisans_handsaw_flint>)
  .create();
for i in <ore:artisansHandsaw>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var orePlate = oreDict["plate"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [null, orePlate, <minecraft:stick>],
                [orePlate, <minecraft:stick>, null],
                [<minecraft:stick>, null, null]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
// 起子
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, null, <minecraft:flint>],
    [null, <ore:stickWood>, null],
    [<ore:plankWood>, null, null]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<artisanworktables:artisans_driver_flint>)
  .create();
for i in <ore:artisansDriver>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var oreStick = oreDict["stick"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [null, null, oreStick],
                [null, <ore:stickWood>, null],
                [<ore:plankWood>, null, null]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
// 扳手
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:flint>, <minecraft:flint>],
    [null, <ore:stickWood>, <minecraft:flint>],
    [<ore:stickWood>, null, null]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<artisanworktables:artisans_spanner_flint>)
  .create();
for i in <ore:artisansSpanner>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var oreStick = oreDict["stick"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [null, oreStick, oreStick],
                [null, <ore:stickWood>, oreStick],
                [<ore:stickWood>, null, null]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
// 铁匠锤
JEI.removeAndHide(<artisanworktables:artisans_hammer_flint>);
for i in <ore:artisansHammer>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var orePlate = oreDict["plate"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [orePlate, <ore:plankWood>, orePlate],
                [null, <ore:stickWood>, null],
                [null, <ore:stickWood>, null]])
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
  
// 铁匠剪
JEI.removeAndHide(<artisanworktables:artisans_cutters_flint>);
for i in <ore:artisansCutters>.items {
    var toolId = i.definition.id;
    for name in materialNames {
        if( toolId in name.toLowerCase()) {
            var oreStick = oreDict["stick"+name];
            var oreGear = oreDict["gear"+name];
            RecipeBuilder.get("blacksmith")
              .setShaped([
                [oreStick, null, oreStick],
                [null, oreGear, null],
                [<ore:stickWood>, null, <ore:stickWood>]])
              .addTool(<ore:artisansFile>, 4)
              .addOutput(i.definition.makeStack(0))
              .create();
            break;
        }
    }
}
