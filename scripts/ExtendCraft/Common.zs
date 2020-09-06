import mods.artisanworktables.builder.RecipeBuilder;

// 基础工作台
recipes.remove(<extendedcrafting:table_basic>);
RecipeBuilder.get("carpenter")
  .setShaped([
    [<artisanworktables:workstation:1>, <artisanworktables:workstation>, <artisanworktables:workstation:2>],
    [<artisanworktables:workstation:3>, null, <artisanworktables:workstation:5>],
    [<artisanworktables:workstation:10>, <artisanworktables:workstation:4>, <artisanworktables:workstation:6>]])
  .addOutput(<extendedcrafting:table_basic>)
  .create();
