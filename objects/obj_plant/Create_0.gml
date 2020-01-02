

damage = 4
knockback = 3

fire_rate = 50
fire_time = fire_rate

mask_index = spr_plant_mask

event_inherited()

max_hp = 8
hp = max_hp

hp_width = 25

if instance_number(obj_player)>0{
	target_aim_dir = point_direction(x,y,obj_player.x,obj_player.y)
}else{
	target_aim_dir = 0
}
aim_dir = target_aim_dir

var neck_length = 20
head_pos_x = x+lengthdir_x(neck_length,image_angle+90)
head_pos_y = y+lengthdir_y(neck_length,image_angle+90)

sight_range = 300

damaged_time = 200 // How many frames to have an opaque bar
damaged = false // Make hp bar opaque when damaged

hp_alpha = 0
