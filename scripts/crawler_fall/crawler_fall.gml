sprite_index = spr_crawler
mask_index = spr_crawler
image_speed = 0

if prev_state != state{
	image_index = 0
}
prev_state = state

if place_meeting(x,y+1,par_solid){ // If on ground
	if xsp = 0{
		state = crawler_stand
	}else{
		state = crawler_run
	}
	
	image_xscale = face
}

