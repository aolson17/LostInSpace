
event_inherited()

if hp_alpha != .3 && hp > 0 && damaged{
	hp_alpha += .01
}else if (hp <= 0 || !damaged) && hp_alpha != 0{
	hp_alpha -= .01
}

if hp <= 0{
	state = crawler_die
}

// Turn at walls and ledges
if !direction_cooldown && (!place_meeting(x-sprite_width-face*5,y+sprite_height/2+2,par_solid) || place_meeting(x+xsp+face*-5,y,par_solid)){
	target_direction*=-1
	direction_cooldown = true
	alarm[2] = direction_cooldown_time
}

if state != crawler_die{
	move = target_direction
}else{
	move = 0
}

if place_meeting(x,y+1,par_solid){
	move_speed = run_speed
	max_move_speed = max_run_speed
}else{
	move_speed = air_move_factor*run_speed
	max_move_speed = max_run_speed
}

if move = sign(xsp){ // If trying to move in the same direction as momentum
	if abs(xsp) <= max_move_speed{ // If not already over limit
		xsp += move * move_speed
	}
}else{
	xsp += move * move_speed
}


if !place_meeting(x,y+1,par_solid) && state != crawler_die{ // Apply gravity
	ysp += grav_speed
}else{ // If on ground
	if move != sign(xsp) || abs(xsp) > max_move_speed{ // Apply friction
		if xsp > 0{
			if xsp - move_friction > 0{
				xsp -= move_friction
			}else{
				xsp = 0
			}
		}else if xsp < 0{
			if xsp + move_friction < 0{
				xsp += move_friction
			}else{
				xsp = 0
			}
		}
		if move = 1 && xsp > 0{
			xsp = max_move_speed
		}else if move = -1 && xsp < 0{
			xsp = -max_move_speed
		}
	}
}

script_execute(state) // Manage which state is active

if move != 0 && place_meeting(x,y+1,par_solid){
	face = -move
}

if instance_number(obj_dialogue) = 0 || !global.in_dialogue{
	scr_collision()
}



