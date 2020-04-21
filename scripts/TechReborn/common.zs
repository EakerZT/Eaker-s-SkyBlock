import crafttweaker.item.IItemStack;


var refinedIron = <techreborn:ingot:19>;

furnace.remove(refinedIron);

var removeItem = [
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

for i in removeItem {
    recipes.remove(i);
    mods.jei.JEI.removeAndHide(i);
}

