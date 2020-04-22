import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
    <enderio:item_material:9>,
    <enderio:item_material:10>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}