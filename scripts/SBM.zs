import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

function addSBMItem(bucket as IItemStack,shear as IItemStack,plank as IItemStack) {
  var stringV = <minecraft:string>;
  recipes.remove(bucket);
  RecipeBuilder.get("carpenter")
    .setShaped([
      [null,null,null],
      [plank,null,plank],
      [stringV,plank,stringV]])
    .addTool(<ore:artisansHandsaw>, 4)
    .addOutput(bucket)
    .create();
  recipes.remove(shear);
  RecipeBuilder.get("carpenter")
    .setShaped([
      [<minecraft:stick>, null, <minecraft:stick>],
      [null, plank, null],
      [<minecraft:stick>, null, <minecraft:stick>]])
    .addOutput(shear)
    .create();
}

var oakBucket = <vefluids:vebucket:0>;
var oakShear = <woodenshears:wshears>.withTag({mType: 0});
var oakPlank = <minecraft:planks:0>;
var acaciaBucket = <vefluids:vebucket:1>;
var acaciaShear = <woodenshears:wshears>.withTag({mType: 1});
var acaciaPlank = <minecraft:planks:4>;
var brichBucket = <vefluids:vebucket:2>;
var brichShear = <woodenshears:wshears>.withTag({mType: 2});
var brichPlank = <minecraft:planks:2>;
var jungleBucket = <vefluids:vebucket:3>;
var jungleShear = <woodenshears:wshears>.withTag({mType: 3});
var junglePlank = <minecraft:planks:3>;
var spurceBucket = <vefluids:vebucket:4>;
var spurceShear = <woodenshears:wshears>.withTag({mType: 4});
var spurcePlank = <minecraft:planks:1>;
var bigOakBucket = <vefluids:vebucket:5>;
var bigOakShear = <woodenshears:wshears>.withTag({mType: 5});
var bigOakPlank = <minecraft:planks:5>;

addSBMItem(oakBucket,oakShear,oakPlank);
addSBMItem(acaciaBucket,acaciaShear,acaciaPlank);
addSBMItem(brichBucket,brichShear,brichPlank);
addSBMItem(jungleBucket,jungleShear,junglePlank);
addSBMItem(spurceBucket,spurceShear,spurcePlank);
addSBMItem(bigOakBucket,bigOakShear,bigOakPlank);
