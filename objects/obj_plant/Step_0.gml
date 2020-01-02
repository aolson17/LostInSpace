
event_inherited()

if hp_alpha != .3 && hp > 0 && damaged{
	hp_alpha += .01
}else if (hp <= 0 || !damaged) && hp_alpha != 0{
	hp_alpha -= .01
}

if hp <= 0{
	image_speed = 0
	instance_create_layer(x,y,layer,obj_explosion)
	var sound = audio_play_sound(snd_laser_kill,0,0)
	audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
	instance_destroy()
}

if fire_time > 0 && !global.in_dialogue{
	fire_time--
}

if instance_number(obj_player)>0 && distance_to_object(obj_player) < sight_range{
	if fire_time = 0{
		fire_time = fire_rate
		var dis = 30
		var bullet = instance_create_layer(head_pos_x+lengthdir_x(dis,aim_dir),head_pos_y+lengthdir_y(dis,aim_dir),"Bullets",obj_plant_projectile)
		var dir_range = 10
		var dir_offset = random(dir_range)-(dir_range)/2
		bullet.xsp = lengthdir_x(10,aim_dir+dir_offset)
		bullet.ysp = lengthdir_y(10,aim_dir+dir_offset)
		bullet.damage = damage
		bullet.knockback = knockback
		bullet.image_angle = aim_dir+dir_offset
		var sound = audio_play_sound(snd_shotgun,0,0)
		audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
	}
	target_aim_dir = point_direction(x,y,obj_player.x,obj_player.y)
}

if angle_difference(aim_dir,target_aim_dir) > 0{
	aim_dir -= 1
}
if angle_difference(aim_dir,target_aim_dir) < 0{
	aim_dir += 1
}




