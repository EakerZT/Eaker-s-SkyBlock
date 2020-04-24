import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var items = [
    <chisel:chisel_iron>,
    <chisel:chisel_diamond>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
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
