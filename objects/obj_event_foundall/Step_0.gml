

if prev_dialogue_stage != dialogue_stage{ // If the dialogue was changed
	
}
prev_dialogue_stage = dialogue_stage

if !global.in_dialogue && global.dialogue_ready{
	if point_distance(x,y,obj_player.x,obj_player.y) < obj_dialogue.range{
		if keyboard_check_pressed(obj_dialogue.talk_key){
			var sound = audio_play_sound(snd_menu,0,0)
			audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
			if dialogue_stage = 0{ // If this is the first time talking
				// Each time scr_dialogue or one of the other dialogue types are ran dialogue stage increases by one
				scr_dialogue(spr_player_portrait,global.font,"OK, that should be all of them. Gotta go back to my shuttle now.")
		
			}
		}
	}
}

var last_dialogue_stage = 2 // Set this to whatever you want the last dialgue to be before the animation pauses
if global.in_dialogue || dialogue_stage > last_dialogue_stage{ // This will pause the moving excalmation mark animation after all of the dialogue is scene
	image_speed = 0
}else{
	image_speed = 1
}
