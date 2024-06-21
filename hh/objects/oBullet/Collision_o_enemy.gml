 with (other)
{
	hp -= 1	
    flash = 3
    hitfrom = other.direction
    audio_play_sound(hit,5,0)
}

instance_destroy()