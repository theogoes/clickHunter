#region CONTROLES
key_right = keyboard_check(ord("D")) //direita
key_left = keyboard_check(ord("A")) //esquerda
key_up = keyboard_check(ord("W")) //pulo
#endregion
#region DIRECTION CHECK
if(key_left) direcao = 180;
if(key_right) direcao = 0;
#endregion

#region MOVIMENTOS 
var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv

if (hspd != 0) image_xscale = sign(hspd)
if place_meeting(x+hspd,y,Obj_Grama)
{
while(!place_meeting(x+sign(hspd),y,Obj_Grama))	
{
x = x + sign(hspd);	
}	
hspd = 0;	
}
x = x + hspd;
if place_meeting(x,y+vspd,Obj_Grama)
{
while(!place_meeting(x,y+sign(vspd),Obj_Grama))	
{
y = y + sign(vspd);	
}	
vspd = 0;	
}
y = y + vspd;

if place_meeting(x,y+1,Obj_Grama) and key_up
{
vspd -=8;
}
#endregion

#region SPECIAL ANIMATION
if (global.currentSpecial >= 5 && global.currentSpecial <=9.9){
	show_debug_message("oi")
	sprite_index = Spr_Clicker_special_1;
}else if (global.currentSpecial >= 10){
	sprite_index = Spr_Clicker_special_2;
}else{
	sprite_index = Spr_Clicker;
}

#endregion



