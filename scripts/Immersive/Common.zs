import mods.artisanworktables.builder.RecipeBuilder;
import mods.immersiveengineering.Blueprint;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var removeItems = [
  <immersiveengineering:metal:0>,
  <immersiveengineering:metal:1>,
  <immersiveengineering:metal:2>,
  <immersiveengineering:metal:3>,
  <immersiveengineering:metal:4>,
  // <immersiveengineering:metal:5>,
  <immersiveengineering:metal:6>,
  <immersiveengineering:metal:7>,
  <immersiveengineering:metal:8>,
  <immersiveengineering:metal:9>,
  <immersiveengineering:metal:10>,
  <immersiveengineering:metal:11>,
  <immersiveengineering:metal:12>,
  <immersiveengineering:metal:13>,
  // <immersiveengineering:metal:14>,
  <immersiveengineering:metal:15>,
  <immersiveengineering:metal:16>,
  <immersiveengineering:metal:17>,
  <immersiveengineering:metal:18>,
  <immersiveengineering:metal:19>,
  <immersiveengineering:metal:20>,
  <immersiveengineering:metal:21>,
  <immersiveengineering:metal:22>,
  <immersiveengineering:metal:23>,
  <immersiveengineering:metal:24>,
  // <immersiveengineering:metal:25>,
  <immersiveengineering:metal:26>,
  <immersiveengineering:metal:27>,
  <immersiveengineering:metal:28>,
  <immersiveengineering:metal:29>,
  <immersiveengineering:metal:30>,
  <immersiveengineering:metal:31>,
  <immersiveengineering:metal:32>,
  <immersiveengineering:metal:33>,
  <immersiveengineering:metal:34>,
  // <immersiveengineering:metal:35>,
  <immersiveengineering:metal:36>,
  <immersiveengineering:metal:37>,
  <immersiveengineering:metal:38>,
  <immersiveengineering:metal:39>,
  <immersiveengineering:metal:40>,
  
  <immersiveengineering:ore>,
  <immersiveengineering:ore:1>,
  <immersiveengineering:ore:2>,
  <immersiveengineering:ore:3>,
  <immersiveengineering:ore:4>

] as IItemStack[];

removeAndHideItemList(removeItems);

// 工程师装配台
recipes.remove(<immersiveengineering:wooden_device0:2>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <artisanworktables:workstation:5>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
  .addOutput(<immersiveengineering:wooden_device0:2>)
  .create();

// 机械零件
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:9>);

// 防腐木
recipes.remove(<immersiveengineering:treated_wood>);
recipes.remove(<immersiveengineering:treated_wood:1>);
recipes.remove(<immersiveengineering:treated_wood:2>);
mods.inworldcrafting.FluidToItem.transform(<immersiveengineering:treated_wood> * 8, <liquid:creosote>, [<ore:plankWood> * 8], true);

// 防腐木棍
recipes.remove(<immersiveengineering:material>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>]])
  .addTool(<ore:artisansHatchet>, 4)
  .addOutput(<immersiveengineering:material> * 4)
  .create();

// 防腐木珊栏
recipes.remove(<immersiveengineering:wooden_decoration>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>]])
  .addOutput(<immersiveengineering:wooden_decoration> * 2)
  .create();

// 防腐木脚手架
recipes.remove(<immersiveengineering:wooden_decoration:1>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>],
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
    [<ore:plankTreatedWood>, <immersiveengineering:material>, <ore:plankTreatedWood>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:wooden_decoration:1> * 4)
  .create();

// 防腐木台阶
mods.chisel.Carving.addGroup("treated_wood_slab");
mods.chisel.Carving.addVariation("treated_wood_slab", <immersiveengineering:treated_wood_slab>);
mods.chisel.Carving.addVariation("treated_wood_slab", <immersiveengineering:treated_wood_slab:1>);
mods.chisel.Carving.addVariation("treated_wood_slab", <immersiveengineering:treated_wood_slab:2>);
recipes.remove(<immersiveengineering:treated_wood_slab>);
recipes.remove(<immersiveengineering:treated_wood_slab:1>);
recipes.remove(<immersiveengineering:treated_wood_slab:2>);
RecipeBuilder.get("carpenter")
  .setShapeless([<immersiveengineering:treated_wood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_slab> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<immersiveengineering:treated_wood:1>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_slab:1> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<immersiveengineering:treated_wood:2>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_slab:2> * 2)
  .create();

// 防腐木楼梯
mods.chisel.Carving.addGroup("treated_wood_stair");
mods.chisel.Carving.addVariation("treated_wood_stair", <immersiveengineering:treated_wood_stairs0>);
mods.chisel.Carving.addVariation("treated_wood_stair", <immersiveengineering:treated_wood_stairs1>);
mods.chisel.Carving.addVariation("treated_wood_stair", <immersiveengineering:treated_wood_stairs2>);
recipes.remove(<immersiveengineering:treated_wood_stairs0>);
recipes.remove(<immersiveengineering:treated_wood_stairs1>);
recipes.remove(<immersiveengineering:treated_wood_stairs2>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<immersiveengineering:treated_wood>, null, null],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, null],
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_stairs0> * 4)
  .create();
RecipeBuilder.get("carpenter")
  .setShaped([
    [<immersiveengineering:treated_wood:1>, null, null],
    [<immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>, null],
    [<immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_stairs1> * 4)
  .create();
RecipeBuilder.get("carpenter")
  .setShaped([
    [<immersiveengineering:treated_wood:2>, null, null],
    [<immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>, null],
    [<immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:treated_wood_stairs2> * 4)
  .create();

// 工程师锤
recipes.remove(<immersiveengineering:tool>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:plateIron>, <ore:plankWood>],
    [null, <ore:stickWood>, <ore:plateIron>],
    [<ore:stickWood>, null, null]])
  .addOutput(<immersiveengineering:tool>)
  .create();

// 铁棒
recipes.remove(<immersiveengineering:material:1>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:ingotIron>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(odItemMap["stickIron"])
  .create();

// 窑砖
recipes.remove(<immersiveengineering:stone_decoration:10>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <ore:sandstone>, <tconstruct:soil>],
    [<ore:sandstone>, <tconstruct:soil>, <ore:sandstone>],
    [<tconstruct:soil>, <ore:sandstone>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration:10>)
  .create();

// 焦炉砖
recipes.remove(<immersiveengineering:stone_decoration>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>],
    [<minecraft:brick>, <tconstruct:soil>, <minecraft:brick>],
    [<tconstruct:soil>, <minecraft:brick>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration>)
  .create();
  
// 强化焦炉砖
recipes.remove(<immersivetech:stone_decoration>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:plateSteel>, <immersiveengineering:stone_decoration>, <ore:plateSteel>],
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]])
  .addOutput(<immersivetech:stone_decoration>)
  .create();

// 高炉砖
recipes.remove(<immersiveengineering:stone_decoration:1>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<tconstruct:soil>, <minecraft:netherbrick>, <tconstruct:soil>],
    [<minecraft:netherbrick>, <tconstruct:soil>, <minecraft:netherbrick>],
    [<tconstruct:soil>, <minecraft:netherbrick>, <tconstruct:soil>]])
  .addOutput(<immersiveengineering:stone_decoration:1>)
  .create();

// 强化高炉砖
recipes.remove(<immersiveengineering:stone_decoration:2>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:plateSteel>, <immersiveengineering:stone_decoration:1>, <ore:plateSteel>],
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<immersiveengineering:stone_decoration:2>)
  .create();

// 红石工程块
recipes.remove(<immersiveengineering:metal_decoration0:3>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>,<immersiveengineering:material:8>, <ore:plateIron>],
    [<ore:boltIron>, <immersiveengineering:material:27>, <ore:boltIron>],
    [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<immersiveengineering:metal_decoration0:3>)
  .create();
Blueprint.addRecipe(
  "decoration",
   <immersiveengineering:metal_decoration0:3>,
   [<ore:plateIron>, <ore:boltIron>, <immersiveengineering:material:8>, <immersiveengineering:material:27>]);

// 轻型工程块
recipes.remove(<immersiveengineering:metal_decoration0:4>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>],
    [<ore:boltIron>, <ore:ingotBronze>, <ore:boltIron>],
    [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<immersiveengineering:metal_decoration0:4>)
  .create();
Blueprint.addRecipe(
  "decoration",
   <immersiveengineering:metal_decoration0:4>,
   [<ore:plateIron>, <ore:boltIron>, <immersiveengineering:material:8>, <ore:ingotBronze>]);

// 重型工程快
recipes.remove(<immersiveengineering:metal_decoration0:5>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>],
    [<ore:boltSteel>, <minecraft:piston>, <ore:boltSteel>],
    [<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>]])
  .addTool(<ore:artisansDriver>, 4)
  .addOutput(<immersiveengineering:metal_decoration0:5>)
  .create();
Blueprint.addRecipe(
  "decoration",
   <immersiveengineering:metal_decoration0:5>,
   [<ore:plateSteel>, <ore:boltSteel>, <immersiveengineering:material:9>, <minecraft:piston>]);

// 坚韧布料
recipes.remove(<immersiveengineering:material:5>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>],
    [<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>],
    [<immersiveengineering:material>, <immersiveengineering:material:4>, <immersiveengineering:material:4>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:material:5>)
  .create();

// 风车叶片
recipes.remove(<immersiveengineering:material:11>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <ore:boltWood>, <ore:stickTreatedWood>],
    [null, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null, null]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:material:11>)
  .create();

// 风车
recipes.remove(<immersiveengineering:wooden_device1:1>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>],
    [<immersiveengineering:material:11>, <ore:stickSteel>, <immersiveengineering:material:11>],
    [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:wooden_device1:1>)
  .create();

// 水车部件
recipes.remove(<immersiveengineering:material:10>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <ore:stickTreatedWood>, null],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [null, <ore:stickTreatedWood>, null]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:material:10>)
  .create();

// 水车
recipes.remove(<immersiveengineering:wooden_device1>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>],
    [<immersiveengineering:material:10>, <ore:stickSteel>, <immersiveengineering:material:10>],
    [<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>]])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:wooden_device1>)
  .create();

// 改良风车叶片
recipes.remove(<immersiveengineering:material:12>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>],
    [<immersiveengineering:material>, <immersiveengineering:material:5>, <immersiveengineering:material:5>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:material:12>)
  .create();

// 铜线
recipes.remove(<immersiveengineering:material:20>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stickCopper>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:material:20>)
  .create();

// 琥珀金线
recipes.remove(<immersiveengineering:material:21>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<moreplates:electrum_stick>])
  .addTool(<ore:artisansFile>, 1)
  .addOutput(<immersiveengineering:material:21>)
  .create();

// 铝线
recipes.remove(<immersiveengineering:material:22>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stickAluminum>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:material:22>)
  .create();

// 钢线
recipes.remove(<immersiveengineering:material:23>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stickSteel>])
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<immersiveengineering:material:23>)
  .create();

// 低压线圈
recipes.remove(<immersiveengineering:wirecoil>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:20>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:20>]])
  .addOutput(<immersiveengineering:wirecoil>)
  .create();

// 中压线圈
recipes.remove(<immersiveengineering:wirecoil:1>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:21>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:21>]])
  .addOutput(<immersiveengineering:wirecoil:1>)
  .create();

// 高压线圈
recipes.remove(<immersiveengineering:wirecoil:2>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:23>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:22>]])
  .addOutput(<immersiveengineering:wirecoil:2>)
  .create();

// 麻绳线圈
recipes.remove(<immersiveengineering:wirecoil:3>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:4>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:4>]])
  .addOutput(<immersiveengineering:wirecoil:3>)
  .create();

// 钢线圈
recipes.remove(<immersiveengineering:wirecoil:4>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:23>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:23>]])
  .addOutput(<immersiveengineering:wirecoil:4>)
  .create();

// 红石线圈
recipes.remove(<immersiveengineering:wirecoil:5>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:redstone>, null, null],
    [null, <immersiveengineering:material>, null],
    [null, null, <immersiveengineering:material:22>]])
  .addOutput(<immersiveengineering:wirecoil:5>)
  .create();

// 绝缘低压线圈
recipes.remove(<immersiveengineering:wirecoil:6>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:20>, null, null],
    [<immersiveengineering:material:5>, <immersiveengineering:material>, <immersiveengineering:material:5>],
    [null, null, <immersiveengineering:material:20>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:wirecoil:6>)
  .create();

// 绝缘中压线圈
recipes.remove(<immersiveengineering:wirecoil:7>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:material:21>, null, null],
    [<immersiveengineering:material:5>, <immersiveengineering:material>, <immersiveengineering:material:5>],
    [null, null, <immersiveengineering:material:21>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:wirecoil:7>)
  .create();

// 铜线圈
recipes.remove(<immersiveengineering:metal_decoration0>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
    [<immersiveengineering:wirecoil>, <ore:stickIron>, <immersiveengineering:wirecoil>],
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]])
  .addOutput(<immersiveengineering:metal_decoration0>)
  .create();

// 琥珀金线圈
recipes.remove(<immersiveengineering:metal_decoration0:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
    [<immersiveengineering:wirecoil:1>, <ore:stickIron>, <immersiveengineering:wirecoil:1>],
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]])
  .addOutput(<immersiveengineering:metal_decoration0:1>)
  .create();

// 钢线圈
recipes.remove(<immersiveengineering:metal_decoration0:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <ore:stickIron>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]])
  .addOutput(<immersiveengineering:metal_decoration0:2>)
  .create();

// 动能发电机
recipes.remove(<immersiveengineering:metal_device1:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, <immersiveengineering:metal_decoration0>, <ore:plateIron>],
    [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>],
    [<ore:plateIron>, <immersiveengineering:metal_decoration0>, <ore:plateIron>]])
  .addOutput(<immersiveengineering:metal_device1:2>)
  .create();

// 低压电容
recipes.remove(<immersiveengineering:metal_device0>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <immersiveengineering:wirecoil>, null],
    [<ore:plateTin>, <minecraft:redstone>, <ore:plateTin>],
    [<ore:plateTin>, <minecraft:redstone>, <ore:plateTin>]])
  .addOutput(<immersiveengineering:metal_device0>)
  .create();

// 中压电容
recipes.remove(<immersiveengineering:metal_device0:1>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <immersiveengineering:wirecoil:1>, null],
    [<ore:plateElectrum>, <immersiveengineering:metal_device0>, <ore:plateElectrum>],
    [<ore:plateElectrum>, <immersiveengineering:metal_device0>, <ore:plateElectrum>]])
  .addOutput(<immersiveengineering:metal_device0:1>)
  .create();

// 高压电容
recipes.remove(<immersiveengineering:metal_device0:2>);
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <immersiveengineering:wirecoil:2>, null],
    [<ore:plateAluminum>, <immersiveengineering:metal_device0:1>, <ore:plateAluminum>],
    [<ore:plateSteel>, <immersiveengineering:metal_device0:1>, <ore:plateSteel>]])
  .addOutput(<immersiveengineering:metal_device0:2>)
  .create();

// 钢脚手架
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.remove(<immersiveengineering:metal_decoration1:2>);
recipes.remove(<immersiveengineering:metal_decoration1:3>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>],
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]])
  .addTool(<artisanworktables:artisans_driver_flint>, 4)
  .addOutput(<immersiveengineering:metal_decoration1:1>)
  .create();

// 钢脚手架台阶
recipes.remove(<immersiveengineering:metal_decoration1_slab:1>);
recipes.remove(<immersiveengineering:metal_decoration1_slab:2>);
recipes.remove(<immersiveengineering:metal_decoration1_slab:3>);
RecipeBuilder.get("blacksmith")
  .setShapeless([<immersiveengineering:metal_decoration1:1>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:metal_decoration1_slab:1>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShapeless([<immersiveengineering:metal_decoration1:2>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:metal_decoration1_slab:2>)
  .create();
RecipeBuilder.get("blacksmith")
  .setShapeless([<immersiveengineering:metal_decoration1:3>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:metal_decoration1_slab:3>)
  .create();

// 钢脚手架楼梯
recipes.remove(<immersiveengineering:steel_scaffolding_stairs0>);
recipes.remove(<immersiveengineering:steel_scaffolding_stairs1>);
recipes.remove(<immersiveengineering:steel_scaffolding_stairs2>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<immersiveengineering:metal_decoration1:1>, null, null],
    [<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration1:1>, null],
    [<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration1:1>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:steel_scaffolding_stairs0> * 8)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<immersiveengineering:metal_decoration1:2>, null, null],
    [<immersiveengineering:metal_decoration1:2>, <immersiveengineering:metal_decoration1:2>, null],
    [<immersiveengineering:metal_decoration1:2>, <immersiveengineering:metal_decoration1:2>, <immersiveengineering:metal_decoration1:2>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:steel_scaffolding_stairs1> * 8)
  .create();
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<immersiveengineering:metal_decoration1:3>, null, null],
    [<immersiveengineering:metal_decoration1:3>, <immersiveengineering:metal_decoration1:3>, null],
    [<immersiveengineering:metal_decoration1:3>, <immersiveengineering:metal_decoration1:3>, <immersiveengineering:metal_decoration1:3>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(<immersiveengineering:steel_scaffolding_stairs2> * 8)
  .create();

// 钢栅栏
recipes.remove(<immersiveengineering:metal_decoration1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>],
    [<ore:ingotSteel>, <ore:stickSteel>, <ore:ingotSteel>]])
  .addTool(<ore:artisansFile>, 1)
  .addOutput(<immersiveengineering:metal_decoration1>)
  .create();

// 散热器模块
recipes.remove(<immersiveengineering:metal_decoration0:7>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>],
    [<ore:stickSteel>, <ore:scaffoldingSteel>, <ore:stickSteel>],
    [<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>]])
  .addOutput(<immersiveengineering:metal_decoration0:7>)
  .create();

// 帘子
recipes.remove(<immersiveengineering:cloth_device:2>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:stickIron>],
    [<immersiveengineering:material:5>]])
  .addTool(<ore:artisansNeedle>, 1)
  .addOutput(<immersiveengineering:cloth_device:2>)
  .create();

// 传送带
recipes.remove(<immersiveengineering:conveyor>);
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:stickIron>, <immersiveengineering:material:5>, <ore:stickIron>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}))
  .create();
RecipeBuilder.get("tailor")
  .setShaped([
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}))
  .create();

// 忽略红石传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}))
  .create();

// 垂直传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:stickIron>],
    [<immersiveengineering:material:5>],
    [<ore:stickIron>]])
  .addTool(<ore:artisansNeedle>, 4)
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}))
  .create();

// 抽取传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:8>, <immersiveengineering:cloth_device:2>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}))
  .create();

// 卸货传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})],
    [<minecraft:hopper>]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}))
  .create();

// 分流传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <immersiveengineering:material:1>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}))
  .create();

// 绝缘传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:scaffoldingSteel>],
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}))
  .create();

// 绝缘卸货传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:scaffoldingSteel>],
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}))
  .create();

// 绝缘垂直传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:scaffoldingSteel>],
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}))
  .create();

// 绝缘抽取传送带
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:scaffoldingSteel>],
    [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"})]])
  .addOutput(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}))
  .create();

// 岩芯钻井
recipes.remove(<immersiveengineering:metal_device1:7>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:scaffoldingSteel>],
    [<ore:scaffoldingSteel>],
    [<immersiveengineering:metal_decoration0:5>]])
  .addOutput(<immersiveengineering:metal_device1:7>)
  .create();



