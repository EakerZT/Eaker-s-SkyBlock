import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var removeItem = [
    <appliedenergistics2:material:40>
] as IItemStack[];

for item in removeItem {
    JEI.removeAndHide(item);
}