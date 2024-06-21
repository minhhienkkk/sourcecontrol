

        
    vsp += grv
    
    
    if place_meeting(x+hsp,y,oWall)
        {
        while(!place_meeting(x+sign(hsp),y,oWall))
        {
        x+=sign(hsp)	
        }
     hsp = 0
    }
    
    
    x+= hsp
    if place_meeting(x,y+vsp,oWall)
        { 
        while(!place_meeting(x,y+sign(vsp),oWall))
        {
        y+=sign(vsp)	
        }
        
        vsp= 0
     hsp = lerp(hsp, 0 ,0.08)
         image_index = 1	
		 if (snLand) 
		 {
			 audio_sound_pitch(landing11,random_range(0.5,1.5))
			 audio_play_sound(landing11,10,false)
			 snLand = false
			 }
    }
    y+=vsp
     
     
        


