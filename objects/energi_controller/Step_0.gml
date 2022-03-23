/// @description Insert description here
// You can write your code in this editor

#region CONTROLLERS
space = keyboard_check(vk_space);
#endregion

#region SPECIAL CODE
if(space){
	global.currentSpecial += rate;	
}else{
	if(global.currentSpecial > 0) global.currentSpecial -=rate;	
}

if(global.currentSpecial >= target_special){
	global.currentSpecial = target_special;	
}

#endregion