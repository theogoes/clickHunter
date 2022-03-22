/// @description Insert description here
// You can write your code in this editor

#region CONTROLLERS
space = keyboard_check(vk_space);
#endregion

#region SPECIAL CODE
if(space){
	current_special += rate;	
}else{
	if(current_special > 0) current_special -=rate;	
}

if(current_special >= target_special){
	current_special = target_special;	
}

#endregion