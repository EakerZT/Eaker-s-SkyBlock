#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function getCTItemByODName(od as IOreDictEntry) as IItemStack {
    var itemStack = null;
    for i in od.items{
        var name = i.definition.id;
        if(name in 'contenttweaker') {
            return i;
        }
    }
    return null;
}