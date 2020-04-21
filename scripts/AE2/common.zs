import crafttweaker.item.IItemStack;

var removeItem = [
    <appliedenergistics2:material:40>
] as IItemStack[];

for i in removeItem {
    recipes.remove(i);
    mods.jei.JEI.removeAndHide(i);
}