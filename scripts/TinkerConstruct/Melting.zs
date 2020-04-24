import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;

var items = [
    <exnihilocreatio:item_ore_gold:2>,
    <exnihilocreatio:item_ore_iron:2>,
    <exnihilocreatio:item_ore_aluminium:2>,
    <exnihilocreatio:item_ore_ardite:2>,
    <exnihilocreatio:item_ore_cobalt:2>,
    <exnihilocreatio:item_ore_copper:2>,
    <exnihilocreatio:item_ore_lead:2>,
    <exnihilocreatio:item_ore_nickel:2>,
    <exnihilocreatio:item_ore_silver:2>,
    <exnihilocreatio:item_ore_tin:2>,
    <exnihilocreatio:item_ore_uranium:2>,
    <exnihilocreatio:item_ore_zinc:2>,
    <exnihilocreatio:item_ore_thorium:2>,
    <exnihilocreatio:item_ore_boron:2>,
    <exnihilocreatio:item_ore_lithium:2>,
    <exnihilocreatio:item_ore_magnesium:2>,
    <exnihilocreatio:item_ore_platinum:2>,
] as IItemStack[];

var liquids = [
    <liquid:gold>,
    <liquid:iron>,
    <liquid:aluminum>,
    <liquid:ardite>,
    <liquid:cobalt>,
    <liquid:copper>,
    <liquid:lead>,
    <liquid:nickel>,
    <liquid:silver>,
    <liquid:tin>,
    <liquid:uranium>,
    <liquid:zinc>,
    <liquid:thorium>,
    <liquid:boron>,
    <liquid:lithium>,
    <liquid:magnesium>,
    <liquid:platinum>,
] as ILiquidStack[];

for i in 0 to items.length {
    Melting.removeRecipe(liquids[i], items[i]);
}

