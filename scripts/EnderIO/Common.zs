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