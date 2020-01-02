sprite_index = spr_melee_walk
mask_index = spr_melee_mask
image_speed = .6

if prev_state != state{
	image_index = 0
}
prev_state = state

if place_meeting(x,y+1,par_solid){ // If on ground
	if xsp = 0{
		state = melee_stand
	}else{
		state = melee_run
	}
	
	image_xscale = face
}

