import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder as mRecipeBuilder;
import moretweaker.railcraft.BlastFurnace;

var refinedIron = <techreborn:ingot:19>;

furnace.remove(refinedIron);

var removeItems = [
    <techreborn:bronzesword>,
    <techreborn:bronzepickaxe>,
    <techreborn:bronzespade>,
    <techreborn:bronzeaxe>,
    <techreborn:bronzehoe>,
    <techreborn:bronzehelmet>,
    <techreborn:bronzechestplate>,
    <techreborn:bronzeleggings>,
    <techreborn:bronzeboots>,
    <techreborn:rubysword>,
    <techreborn:rubypickaxe>,
    <techreborn:rubyspade>,
    <techreborn:rubyaxe>,
    <techreborn:rubyhoe>,
    <techreborn:rubyhelmet>,
    <techreborn:rubychestplate>,
    <techreborn:rubyleggings>,
    <techreborn:rubyboots>,
    <techreborn:sapphiresword>,
    <techreborn:sapphirepickaxe>,
    <techreborn:sapphirespade>,
    <techreborn:sapphireaxe>,
    <techreborn:sapphirehoe>,
    <techreborn:sapphirehelmet>,
    <techreborn:sapphirechestplate>,
    <techreborn:sapphireleggings>,
    <techreborn:sapphireboots>,
    <techreborn:peridotsword>,
    <techreborn:peridotpickaxe>,
    <techreborn:peridotspade>,
    <techreborn:peridotaxe>,
    <techreborn:peridothoe>,
    <techreborn:peridothelmet>,
    <techreborn:peridotchestplate>,
    <techreborn:peridotleggings>,
    <techreborn:peridotboots>
] as IItemStack[];

removeAndHideItemList(removeItems);

recipes.remove(<techreborn:treetap>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<buildcrafttransport:pipe_wood_item>, <buildcrafttransport:pipe_wood_item>, <buildcrafttransport:pipe_wood_item>],
    [null, <buildcrafttransport:waterproof>, <buildcrafttransport:pipe_wood_item>]])
  .addTool(<ore:artisansHandsaw>, 4)
  .addTool(<ore:artisansFile>, 4)
  .addOutput(<techreborn:treetap>)
  .create();

// 精炼铁
BlastFurnace.add(odItemMap["ingotRefinedIron"], <ore:ingotSteel>, 64 * 20, 1);

// 精炼铁板
mRecipeBuilder.newBuilder("sc_plate_refined_iron", "steam_compressor", 500, 0)
  .addFluidInput(<liquid:steam> *  500)
  .addItemInput(odItemMap["ingotRefinedIron"])
  .addItemOutput(odItemMap["plateRefinedIron"])
  .build();

// 铜导线
recipes.remove(<techreborn:cable>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateCopper>]])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<techreborn:cable> * 3)
  .create();

// 锡导线
recipes.remove(<techreborn:cable:1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateTin>]])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<techreborn:cable:1> * 3)
  .create();

// 金导线
recipes.remove(<techreborn:cable:1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateGold>]])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<techreborn:cable:2> * 3)
  .create();

// 高压导线
recipes.remove(<techreborn:cable:1>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateRefinedIron>]])
  .addTool(<ore:artisansCutters>, 4)
  .addOutput(<techreborn:cable:3> * 3)
  .create();

// 绝缘铜导线
recipes.remove(<techreborn:cable:5>);
RecipeBuilder.get("basic")
  .setShapeless([<techreborn:cable>, <techreborn:part:32>])
  .addOutput(<techreborn:cable:5>)
  .create();

// 绝缘锡导线
recipes.remove(<techreborn:cable:6>);
RecipeBuilder.get("basic")
  .setShapeless([<techreborn:cable:1>, <techreborn:part:32>])
  .addOutput(<techreborn:cable:6>)
  .create();
// 绝缘锡导线
recipes.remove(<techreborn:cable:7>);
RecipeBuilder.get("basic")
  .setShapeless([<techreborn:cable:2>, <techreborn:part:32>, <techreborn:part:32>])
  .addOutput(<techreborn:cable:7>)
  .create();
// 空白电路板
RecipeBuilder.get("engineer")
  .setShaped([
    [<techreborn:cable>, <techreborn:cable>, <techreborn:cable>],
    [<minecraft:redstone>, <ore:plateRefinedIron>, <minecraft:redstone>],
    [<techreborn:cable>, <techreborn:cable>, <techreborn:cable>]])
  .addOutput(<techreborn:part:40>)
  .create();
// 电路板
recipes.remove(<techreborn:part:29>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<techreborn:cable:5>, <techreborn:part:40>, <techreborn:cable:5>]])
  .addOutput(<techreborn:part:29>)
  .create();
