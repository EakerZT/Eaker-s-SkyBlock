import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

var removeItems = [
    <chisel:chisel_iron>,
    <chisel:chisel_diamond>
] as IItemStack[];

for item in removeItems {
    JEI.removeAndHide(item);
}
recipes.remove(<chisel:chisel_hitech>);

function removeOreItemRecipes(oreName as IOreDictEntry) {
  for i in oreName.items {
    recipes.remove(i);
  }
}

removeOreItemRecipes(<ore:paneGlass>);

removeOreItemRecipes(<ore:sandstone>);

removeOreItemRecipes(<ore:sand>);
