x = o_player.x
y = o_player.y+10

image_angle = point_direction(x,y,mouse_x,mouse_y)
if delay > -1
{
delay -=1   
}
recoil = max(0,recoil-1)
show_debug_message(delay)
if (mouse_check_button(mb_left)) && (delay <0)
 {
	 recoil = 4
	 delay = 10
	with instance_create_layer(x,y,"bullets",oBullet)	
	{ 
		speed = 25
		direction = other.image_angle
		image_angle = direction
	}

}
 
recoil_x = lengthdir_x(recoil,image_angle)
recoil_y =  lengthdir_y(recoil ,image_angle)
x -= recoil_x
y -= recoil_y

if (mouse_x > x)
	{
		image_yscale = 1
	}
else
	{
		image_yscale = -1	
	}