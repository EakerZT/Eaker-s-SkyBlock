import mods.immersiveengineering.Blueprint;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<immersiveengineering:blueprint>);

RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>],
    [<minecraft:paper>]])
  .addOutput(<immersiveengineering:blueprint>.withTag({blueprint: "components"}))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<integrateddynamics:crystalized_menril_chunk>, <minecraft:paper>]])
  .addOutput(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:paper>, <integrateddynamics:crystalized_menril_chunk>]])
  .addOutput(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}))
  .create();

// 螺丝冲压模具
Blueprint.addRecipe("molds", <contenttweaker:mold_bolt>, [<ore:plateSteel>, <ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>, <immersiveengineering:tool:1>]);
