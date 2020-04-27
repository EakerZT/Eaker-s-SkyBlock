import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

var removeItems = [
    <chisel:chisel_iron>,
    <chisel:chisel_diamond>
] as IItemStack[];

removeAndHideItemList(removeItems);

removeOreDictItemsRecipes(<ore:paneGlass>);

removeOreDictItemsRecipes(<ore:sandstone>);

removeOreDictItemsRecipes(<ore:sand>);

recipes.remove(<chisel:chisel_hitech>);
