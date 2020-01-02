sprite_index = spr_melee_attack
image_speed = .2
mask_index = spr_melee_mask

if prev_state != state{
	image_index = 0
}
prev_state = state

if !place_meeting(x,y+1,par_solid){ // If in air
	state = melee_fall
}else{ // If on ground
	
	if image_index > image_number-1{
		state = melee_stand
	}
	
	image_xscale = face
}


