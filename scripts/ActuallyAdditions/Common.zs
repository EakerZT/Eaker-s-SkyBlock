import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;

// var removeItems = [
//   <actuallyadditions:item_dust>
// ] as IItemStack[];

// removeAndHideItemList(removeItems);


// 木质外壳
recipes.remove(<actuallyadditions:block_misc:4>);
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:boltWood>, <ore:plateWood>, <ore:boltWood>],
    [<ore:plateWood>, null, <ore:plateWood>],
    [<ore:boltWood>, <ore:plateWood>, <ore:boltWood>]])
  .addTool(<ore:artisansDriver>, 4)
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<actuallyadditions:block_misc:4>)
  .create();