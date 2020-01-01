sprite_index = spr_crawler
mask_index = spr_crawler
image_speed = 1

if prev_state != state{
	image_index = 0
}
prev_state = state

if !place_meeting(x,y+1,par_solid){ // If in air
	state = crawler_fall
}else{ // If on ground
	
	if xsp = 0 && move = 0{
		state = crawler_stand
	}
	
	
	prev_face = face
	
	image_xscale = face
}






