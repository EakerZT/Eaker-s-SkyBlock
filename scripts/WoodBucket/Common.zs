import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

function addWoodBucket(bucket as IItemStack,plank as IItemStack) {
    var stringV = <minecraft:string>;
    recipes.remove(bucket);
    RecipeBuilder.get("carpenter")
        .setShaped([
            [null,null,null],
            [plank,null,plank],
            [stringV,plank,stringV]])
        .addTool(<ore:artisansHandsaw>, 1)
        .addOutput(bucket)
        .create();
}

var oakBucket = <vefluids:vebucket:0>;
var oakPlank = <minecraft:planks:0>;
var acaciaBucket = <vefluids:vebucket:1>;
var acaciaPlank = <minecraft:planks:4>;
var brichBucket = <vefluids:vebucket:2>;
var brichPlank = <minecraft:planks:2>;
var jungleBucket = <vefluids:vebucket:3>;
var junglePlank = <minecraft:planks:3>;
var spurceBucket = <vefluids:vebucket:4>;
var spurcePlank = <minecraft:planks:1>;
var bigOakBucket = <vefluids:vebucket:5>;
var bigOakPlank = <minecraft:planks:5>;

addWoodBucket(oakBucket,oakPlank);
addWoodBucket(acaciaBucket,acaciaPlank);
addWoodBucket(brichBucket,brichBucket);
addWoodBucket(jungleBucket,junglePlank);
addWoodBucket(spurceBucket,spurcePlank);
addWoodBucket(bigOakBucket,bigOakPlank);
