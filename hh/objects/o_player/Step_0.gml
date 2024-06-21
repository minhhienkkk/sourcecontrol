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


canJump--
if (_jump) && (canJump>0)
{
vsp = -jsp	

if(audio_is_playing(jump) == false) {
    audio_play_sound(jump, 10, false);
}
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
  
  if !place_meeting(x,y+1,oWall) //fly in air
   {
	sprite_index = sJump
	image_speed = 0
		if (sign(vsp) > 0)  
		{ 
			image_index = 1
			}
		else {
			image_index = 0
			}
		 }
 else
  {
	  if (sprite_index == sJump)
	  {
		  audio_sound_pitch(landing11,random_range(0.5,1.5))
		    audio_play_sound(landing11 ,10,0)  
	  }
	  
	canJump = 10 
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