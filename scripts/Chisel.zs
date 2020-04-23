import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


function removeOreItemRecipes(oreName as IOreDictEntry) {
  for i in oreName.items {
 recipes.remove(i);
  }
}

removeOreItemRecipes(<ore:paneGlass>);
