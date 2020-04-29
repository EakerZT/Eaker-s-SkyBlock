import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

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
