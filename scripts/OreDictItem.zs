
#priority 9999
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

global odItemMap as IItemStack[string] = {
  ingotCopper : <thermalfoundation:material:128>,
  ingotTin : <thermalfoundation:material:129>,
  ingotSilver : <thermalfoundation:material:130>,
  ingotLead : <thermalfoundation:material:131>,
  ingotAluminum : <thermalfoundation:material:132>,
  ingotNickel : <thermalfoundation:material:133>,
  ingotPlatinum : <thermalfoundation:material:134>,
  ingotIridium : <thermalfoundation:material:135>,
  ingotSteel : <thermalfoundation:material:160>,
  ingotElectrum : <thermalfoundation:material:161>,
  ingotInvar : <thermalfoundation:material:162>,
  ingotBronze : <thermalfoundation:material:163>,
  ingotConstantan : <thermalfoundation:material:164>,
  ingotSignalum : <thermalfoundation:material:165>,
  ingotLumium : <thermalfoundation:material:166>,
  ingotEnderium : <thermalfoundation:material:167>,
  plateWood : <techreborn:plates:3>,
  plateStone : scripts.GlobalFunction.getCTItemByODName(<ore:plateStone>),
  plateQuartz : <moreplates:nether_quartz_plate>,
  boltWood : scripts.GlobalFunction.getCTItemByODName(<ore:boltWood>),
  gearWood : <thermalfoundation:material:22>,
  gearStone : <thermalfoundation:material:23>,
  gearIron : <thermalfoundation:material:24>,
  gearGold : <thermalfoundation:material:25>,
  gearDiamond : <thermalfoundation:material:26>,
  gearEmerald : <thermalfoundation:material:27>,
  gearQuartz : <moreplates:nether_quartz_gear>
} as IItemStack[string];
