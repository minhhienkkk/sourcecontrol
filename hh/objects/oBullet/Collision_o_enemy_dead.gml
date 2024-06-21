 
   with(other)
    {
    direction = other.direction
    hsp = lengthdir_x(3,direction)
    vsp = lengthdir_y(3,direction)
    image_xscale = sign(hsp)
	    audio_play_sound(hit,5,0)
    }
    instance_destroy()