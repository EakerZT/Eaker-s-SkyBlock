#loader preinit

import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;

var s1 = IMachineSlot.newItemStackSlot('slot1');
var s2 = IMachineSlot.newItemStackSlot('slot2');
var s3 = IMachineSlot.newItemStackSlot('slot3');

IMachineRegistry.createNewMachine(
	"blueprint_generator",
	1000,
	400,
	[s1,s2],
	[s3],
	"extrautils2:machine/crusher_off",
	"extrautils2:machine/crusher_on",
	0xffffff
);
