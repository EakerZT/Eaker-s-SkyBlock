import crafttweaker.item.IItemStack;

var removeItem = [
] as IItemStack[];

for i in removeItem {
    recipes.remove(i);
    mods.jei.JEI.removeAndHide(i);
}