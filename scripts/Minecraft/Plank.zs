import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
  <minecraft:planks:5>,<minecraft:log2:1>,<minecraft:wooden_slab:5>,
  <minecraft:planks:4>,<minecraft:log2>,<minecraft:wooden_slab:4>,
  <minecraft:planks:2>,<minecraft:log:2>,<minecraft:wooden_slab:2>,
  <minecraft:planks>,<minecraft:log>,<minecraft:wooden_slab>,
  <minecraft:planks:1>,<minecraft:log:1>,<minecraft:wooden_slab:1>,
  <minecraft:planks:3>,<minecraft:log:3>,<minecraft:wooden_slab:3>
] as IItemStack[];

// <integrateddynamics:menril_planks>,<integrateddynamics:menril_log>,

for i in 0 to (items.length/3) {
  var plank as IItemStack = items[i*3];
  var wood as IItemStack = items[i*3+1];
  var slab as IItemStack = items[i*3+2];
  recipes.remove(plank);
  recipes.remove(slab);
  recipes.addShaped(plank*2, [[wood]]);

  RecipeBuilder.get("basic")
    .setShapeless([wood])
    .addOutput(plank*2)
    .create();

  RecipeBuilder.get("carpenter")
    .setShapeless([wood])
    .addOutput(plank*2)
    .create();

  RecipeBuilder.get("carpenter")
    .setShapeless([wood])
    .addTool(<ore:artisansHatchet>, 4)
    .addOutput(plank*4)
    .create();

  RecipeBuilder.get("carpenter")
    .setShaped([[plank,plank,plank]])
    .addTool(<ore:artisansHandsaw>, 4)
    .addOutput(slab*6)
    .create();
}
