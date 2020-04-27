import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

var removeItem = [
    <enderio:item_material:9>,
    <enderio:item_material:10>
] as IItemStack[];

for item in removeItem {
    JEI.removeAndHide(item);
}

// 导管胚料
recipes.remove(<enderio:item_material:22>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:gravel>, <minecraft:clay_ball>, <minecraft:gravel>],
    [<ore:sand>, <minecraft:gravel>, <ore:sand>],
    [<minecraft:gravel>, <minecraft:clay_ball>, <minecraft:gravel>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<enderio:item_material:22> * 8)
  .create();
