



if distance_to_object(instance_nearest(x,y,obj_bullet)) < 5{
	with instance_nearest(x,y,obj_bullet){
		xsp = 0
		ysp = 0
		sprite_index = spr_spark
		image_speed = 1
	}
	obj_player.ore_purple++
	instance_destroy()
}


