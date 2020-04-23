import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

var items = [
  <minecraft:planks:5>,<minecraft:log2:1>,
  <minecraft:planks:4>,<minecraft:log2>,
  <minecraft:planks:2>,<minecraft:log:2>,
  <integrateddynamics:menril_planks>,<integrateddynamics:menril_log>,
  <minecraft:planks>,<minecraft:log>,
  <minecraft:planks:1>,<minecraft:log:1>,
  <minecraft:planks:3>,<minecraft:log:3>,
] as IItemStack[];

for i in 0 to (items.length/2) {
  var i1 as IItemStack = items[i*2];
  var i2 as IItemStack = items[i*2+1];
  recipes.remove(i1);
  recipes.addShaped(i1*2, [[i2]]);

  RecipeBuilder.get("carpenter")
    .setShapeless([i2])
    .addTool(<ore:artisansHatchet>, 4)
    .addOutput(i1*4)
    .create();
}

RecipeBuilder.get("carpenter")
  .setShapeless([<ore:plankWood>])
  .addTool(<ore:artisansHandsaw>, 4)
  .addOutput(odItemMap['plateWood'])
  .create();
