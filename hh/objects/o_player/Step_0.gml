 _left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
_jump = keyboard_check(ord("W")) 

move = _right - _left 

hsp = lerp(hsp, sp * move ,0.05)

vsp += grv


if place_meeting(x+hsp,y,oWall)
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x+=sign(hsp)	
	}
hsp= 0	
}



if (_jump && place_meeting(x,y+1,oWall))
{
vsp = -jsp	

}



x+= hsp
if place_meeting(x,y+vsp,oWall)
{ 
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	y+=sign(vsp)	
	}
	
vsp= 0	
}
y+=vsp
  

  
  
  //Animation
  
  if !place_meeting(x,y+1,oWall)
   {
	sprite_index = sJump
	image_speed = 0
	if (sign(vsp) > 0)  
	{ image_index = 1}
	else { image_index = 0}
  }
  else
  {
	image_speed = 1
	if hsp==0 || move==0
	{
sprite_index = sPlayer	
	}
	else
	{
	sprite_index = sRun	
	
	}
 }
 
  if hsp != 0 {
  image_xscale = sign(hsp)	
  }	