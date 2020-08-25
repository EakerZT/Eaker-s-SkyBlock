import mods.immersiveengineering.Blueprint;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<immersiveengineering:blueprint>);



// 蓝图
mods.chisel.Carving.addGroup("im_blueprint");
mods.chisel.Carving.addVariation("im_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "components"}));
mods.chisel.Carving.addVariation("im_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
mods.chisel.Carving.addVariation("im_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "electrode"}));
mods.inworldcrafting.FluidToItem.transform(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), <liquid:menrilresin>, [<minecraft:paper> * 8], true);

// 螺丝冲压模具
Blueprint.addRecipe("molds", <contenttweaker:mold_bolt>, [<ore:plateSteel>, <ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>, <immersiveengineering:tool:1>]);

// 电路板
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [<ore:paneGlassColorless>, <ore:electronTube>,<ore:plateGold>,<ore:plateCopper>]);
