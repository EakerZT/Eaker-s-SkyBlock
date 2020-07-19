#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;


global getModItemByODName as function(string,string)IItemStack = function(modName as string,odName as string) as IItemStack {
  var itemStack = null;
  var od as IOreDictEntry = oreDict[odName];
  for i in od.items{
    var name = i.definition.id;
    if(name in modName) {
        return i;
    }
  }
  print(odName + " Not Found In " + modName);
  return null;
};

global getCTItemByODName as function(string)IItemStack = function(odName as string) as IItemStack {
  return getModItemByODName('contenttweaker',odName);
};

global getJAOPCAItemByODName as function(string)IItemStack = function(odName as string) as IItemStack {
  return getModItemByODName('jaopca',odName);
};

global getTEItemByODName as function(string)IItemStack = function(odName as string) as IItemStack {
  return getModItemByODName('thermalfoundation',odName);
};

global removeAndHideItemList as function(IItemStack[])void = function(items as IItemStack[]) as void {
  for item in items {
    JEI.removeAndHide(item);
  }
};

global removeOreDictItemsRecipes as function(IOreDictEntry)void = function(oreName as IOreDictEntry) as void {
  for i in oreName.items {
    recipes.remove(i);
  }
};

