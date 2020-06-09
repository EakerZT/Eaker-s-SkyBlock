import mods.exnihilocreatio.Sieve;

// addStringMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.001);
// addFlintMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.01);
// addIronMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.1);
// addDiamondMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 1);

Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 0.1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:0>, 0.1);

Sieve.addStringMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.5);

Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceGold"], 0.5);
Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceSilver"], 0.5);
Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceCopper"], 0.5);
Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceIron"], 0.5);
Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceTin"], 0.5);
Sieve.addStringMeshRecipe(<ore:gravel>, odItemMap["pieceLead"], 0.5);

Sieve.addStringMeshRecipe(<ore:dust>, <minecraft:redstone>, 0.5);
Sieve.addStringMeshRecipe(<ore:dust>, <minecraft:glowstone_dust>, 0.5);
