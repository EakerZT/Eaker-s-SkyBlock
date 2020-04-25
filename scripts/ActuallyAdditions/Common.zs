import mods.artisanworktables.builder.RecipeBuilder;

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