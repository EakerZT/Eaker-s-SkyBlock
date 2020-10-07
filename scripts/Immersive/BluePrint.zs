import mods.immersiveengineering.Blueprint;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<immersiveengineering:blueprint>);

extrautilities2.Tweaker.IMachineRegistry.getMachine('blueprint_generator')
    .addRecipe(
        {
            'slot1':<artisanworktables:design_pattern>.withTag({}),
            'slot2':<ore:plateSteel>
        },{
            'slot3':<immersiveengineering:blueprint>.withTag({blueprint: "molds"})
        }, 20000, 200);

extrautilities2.Tweaker.IMachineRegistry.getMachine('blueprint_generator')
    .addRecipe(
        {
            'slot1':<artisanworktables:design_pattern>.withTag({}),
            'slot2':<ore:plateIron>
        },{
            'slot3':<immersiveengineering:blueprint>.withTag({blueprint: "components"})
        }, 20000, 200);

extrautilities2.Tweaker.IMachineRegistry.getMachine('blueprint_generator')
    .addRecipe(
        {
            'slot1':<artisanworktables:design_pattern>.withTag({}),
            'slot2':<immersiveengineering:graphite_electrode>
        },{
            'slot3':<immersiveengineering:blueprint>.withTag({blueprint: "electrode"})
        }, 20000, 200);

extrautilities2.Tweaker.IMachineRegistry.getMachine('blueprint_generator')
    .addRecipe(
        {
            'slot1':<artisanworktables:design_pattern>.withTag({}),
            'slot2':<minecraft:piston>
        },{
            'slot3':<immersiveengineering:blueprint>.withTag({blueprint: "decoration"})
        }, 20000, 200);

// 螺丝冲压模具
Blueprint.addRecipe("molds", <contenttweaker:mold_bolt>, [<ore:plateSteel>, <ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>, <immersiveengineering:tool:1>]);

// 电路板
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [<ore:paneGlassColorless>, <ore:electronTube>,<ore:plateGold>,<ore:plateCopper>]);
