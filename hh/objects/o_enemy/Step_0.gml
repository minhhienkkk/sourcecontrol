//move =sign(o_player.x-x)




vsp += grv


if place_meeting(x+hsp,y,oWall) 
 
 {
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x+=sign(hsp)	
	}
	hsp =0

}







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
	sprite_index = sEnemyA
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
sprite_index = sEnemy	
	}
	else
	{
	sprite_index = sEnemyR	
	
	}
 }
 
  if hsp != 0 {
  image_xscale = sign(hsp)	
  }	