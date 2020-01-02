
if instance_number(obj_player) > 0{
	can_win = true
	if obj_player.ore_orange = 0{
		can_win = false
	}
	if obj_player.ore_green = 0{
		can_win = false
	}
	if obj_player.ore_purple = 0{
		can_win = false
	}

	if !global.in_dialogue && global.dialogue_ready && can_win{
		if point_distance(x,y,obj_player.x,obj_player.y) < obj_dialogue.range{
			if keyboard_check_released(ord("E")){
				room_goto(End)
			}
		}
	}
}

