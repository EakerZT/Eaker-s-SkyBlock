import crafttweaker.item.IItemStack;
var items = [
    <exnihilocreatio:hammer_wood>,
    <exnihilocreatio:hammer_iron>,
    <exnihilocreatio:hammer_diamond>,
    <exnihilocreatio:hammer_gold>,
    <exnihilocreatio:crook_andesite>,
    <exnihilocreatio:crook_blaze>,
    <exnihilocreatio:crook_bone>,
    <exnihilocreatio:crook_clay>,
    <exnihilocreatio:crook_clay_uncooked>,
    <exnihilocreatio:crook_diamond>,
    <exnihilocreatio:crook_diorite>,
    <exnihilocreatio:crook_gold>,
    <exnihilocreatio:crook_granite>,
    <exnihilocreatio:crook_iron>,
    <exnihilocreatio:crook_netherrack>,
    <exnihilocreatio:crook_prismarine>,
    <exnihilocreatio:crook_purpur>,
    <exnihilocreatio:crook_stone>
] as IItemStack[];

for item in items {
    mods.jei.JEI.hide(item);
    recipes.remove(item);
}
