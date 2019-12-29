sprite_index = spr_player_run
mask_index = spr_player_mask
image_speed = (run_image_speed_factor*xsp)*face

if prev_state != state{
	image_index = 0
}
prev_state = state

if !place_meeting(x,y+1,par_solid){ // If in air
	if ysp <= 0{
		state = jump
	}else{
		state = fall
	}
}else{ // If on ground
	
	if (xsp = 0 && move = 0){
		state = stand
	}
	
	prev_face = face
	
	image_xscale = face
}






