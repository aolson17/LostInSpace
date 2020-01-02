

if prev_dialogue_stage != dialogue_stage{ // If the dialogue was changed
	
}
prev_dialogue_stage = dialogue_stage

if !global.in_dialogue && global.dialogue_ready{
	if point_distance(x,y,obj_player.x,obj_player.y) < obj_dialogue.range{
		if keyboard_check_pressed(obj_dialogue.talk_key){
			var sound = audio_play_sound(snd_menu,0,0)
			audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
			if dialogue_stage >= 0{ // If this is the first time talking
				
				scr_dialogue(spr_portrait,global.font,"Yo player wassap.")
				scr_dialogue(spr_player_portrait,global.font,"I am lost in space! Where are we?")
				scr_dialogue(spr_portrait,global.font,"How would I know? Go build a radio with random minerals or something.")
		
			}
		}
	}
}

if global.in_dialogue || dialogue_stage > 1{
	image_speed = 0
}else{
	image_speed = 1
}
