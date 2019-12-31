

if prev_dialogue_stage != dialogue_stage{ // If the dialogue was changed
	
}
prev_dialogue_stage = dialogue_stage

if !global.in_dialogue && global.dialogue_ready{
	if point_distance(x,y,obj_player.x,obj_player.y) < obj_dialogue.range{
		if keyboard_check_pressed(obj_dialogue.talk_key){
			if dialogue_stage = 0{ // If this is the first time talking
				
				scr_dialogue(spr_portrait,global.font,"Hello! This is some example text, long enough to show making a new line. Blah bed apsuhd juiosdf moasd wa blah. I have spoken.")
				scr_dialogue(spr_portrait,global.font,"This is another page of text!")
		
			}else if dialogue_stage >= 2{
				scr_dialogue(spr_portrait,global.font,"Hello again. New text can appear on consecutive conversations with the same object")
			}
		}
	}
}

if global.in_dialogue || dialogue_stage > 2{
	image_speed = 0
}else{
	image_speed = 1
}
