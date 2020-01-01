



x += xsp
y += ysp

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
	if col_2 != noone && object_is_ancestor(col_2.object_index, par_enemy){
		col = col_2
	}else if col_3 != noone && object_is_ancestor(col_3.object_index, par_enemy){
		col = col_3
	}
	if col != noone && object_is_ancestor(col.object_index, par_enemy){
		if sprite_index = spr_laser{
			ds_list_add(obj_text.text,obj_player.gun_damage[obj_player.gun])
			ds_list_add(obj_text.text_x,x)
			ds_list_add(obj_text.text_y,y)
			ds_list_add(obj_text.text_life,0)
			ds_list_add(obj_text.text_color,c_white)
			ds_list_add(obj_text.text_dir,sign(xsp)*random(1))
			sprite_index = spr_blood
			xsp = 0
			ysp = 0
			col.hp -= obj_player.gun_damage[obj_player.gun]
			col.damaged = true
			col.alarm[1] = col.damaged_time
		}
	}
}

var col_1 = instance_place(x,y+ysp,par_solid)
var col_2 = instance_place(x,y+ysp*.2,par_solid)
var col_3 = instance_place(x,y+ysp*.6,par_solid)
if place_meeting(x,y+ysp,par_solid) || place_meeting(x,y+ysp*.3,par_solid) || place_meeting(x,y+ysp*.6,par_solid){
	while(!place_meeting(x,y+sign(ysp),par_solid) && abs(ysp) > 1){
		y += sign(ysp)
		ysp--
	}
	ysp = 0
	collided = true
	
	col = col_1
	if col_2 != noone && object_is_ancestor(col_2.object_index, par_enemy){
		col = col_2
	}else if col_3 != noone && object_is_ancestor(col_3.object_index, par_enemy){
		col = col_3
	}
	if col != noone && object_is_ancestor(col.object_index, par_enemy){
		if sprite_index = spr_laser{
			ds_list_add(obj_text.text,obj_player.gun_damage[obj_player.gun])
			ds_list_add(obj_text.text_x,x)
			ds_list_add(obj_text.text_y,y)
			ds_list_add(obj_text.text_life,0)
			ds_list_add(obj_text.text_color,c_white)
			ds_list_add(obj_text.text_dir,sign(xsp)*random(1))
			sprite_index = spr_blood
			xsp = 0
			ysp = 0
			col.hp -= obj_player.gun_damage[obj_player.gun]
			col.damaged = true
			col.alarm[1] = col.damaged_time
		}
	}
}

if collided{
	xsp = 0
	ysp = 0
	sprite_index = spr_spark
	image_speed = 1
}