



if distance_to_object(instance_nearest(x,y,obj_bullet)) < 5{
	if obj_player.gun = guns.shotgun{
		with instance_nearest(x,y,obj_bullet){
			xsp = 0
			ysp = 0
			sprite_index = spr_spark
			image_speed = 1
		}
		obj_player.ore_purple++
		instance_destroy()
		instance_create_layer(x,y,layer,obj_explosion)
		var sound = audio_play_sound(snd_laser_hit_break,0,0)
		audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
	}
}


