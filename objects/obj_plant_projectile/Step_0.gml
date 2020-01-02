


if !global.in_dialogue{
	x += xsp
	y += ysp
}

var temp_xsp = xsp
var temp_ysp = ysp

var collided = false
var col_1 = instance_place(x+xsp,y,par_solid)
var col_2 = instance_place(x+xsp*.2,y,par_solid)
var col_3 = instance_place(x+xsp*.6,y,par_solid)
if col_1 != noone || col_2 != noone || col_3 != noone{
	while(!place_meeting(x+sign(xsp),y,par_solid) && abs(xsp) > 1){
		x += sign(xsp)
		xsp--
	}
	xsp = 0
	collided = true
	
	col = col_1
	if col_2 != noone && object_is_ancestor(col_2.object_index, par_player){
		col = col_2
	}else if col_3 != noone && object_is_ancestor(col_3.object_index, par_player){
		col = col_3
	}
	if col != noone && object_is_ancestor(col.object_index, par_player) && !obj_player.invincible{
		if sprite_index = spr_plant_projectile{
			sprite_index = spr_blood
			
			obj_player.xsp = sign(temp_xsp)*knockback
			obj_player.ysp = -knockback
			obj_camera.shake += 10
			obj_player.hp -= damage
			obj_player.invincible = true
			obj_player.alarm[0] = obj_player.invincibility_frames
			
			xsp = 0
			ysp = 0
		}
	}
}

var collided = false
var col_1 = instance_place(x,y+ysp,par_solid)
var col_2 = instance_place(x,y+ysp*.2,par_solid)
var col_3 = instance_place(x,y+ysp*.6,par_solid)
if col_1 != noone || col_2 != noone || col_3 != noone{
	while(!place_meeting(x,y+sign(ysp),par_solid) && abs(ysp) > 1){
		y += sign(ysp)
		ysp--
	}
	ysp = 0
	collided = true
	
	col = col_1
	if col_2 != noone && object_is_ancestor(col_2.object_index, par_player){
		col = col_2
	}else if col_3 != noone && object_is_ancestor(col_3.object_index, par_player){
		col = col_3
	}
	if col != noone && col.object_index = obj_player && !obj_player.invincible{
		if sprite_index = spr_plant_projectile{
			sprite_index = spr_blood
			
			obj_player.xsp = sign(temp_xsp)*knockback
			obj_player.ysp = -sign(temp_ysp)*knockback
			obj_camera.shake += 10
			obj_player.hp -= damage
			obj_player.invincible = true
			obj_player.alarm[0] = obj_player.invincibility_frames
			
			xsp = 0
			ysp = 0
		}
	}
}

if sprite_index = spr_plant_projectile{
	ysp += .05
}

if collided{
	xsp = 0
	ysp = 0
	sprite_index = spr_spark
	image_speed = 1
	var sound = audio_play_sound(snd_laser_hit_enemy,0,0)
	audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
}