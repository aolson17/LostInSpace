
draw_set_color(c_white)


draw_set_color(c_black)
draw_set_alpha(1-dead_time/dead_time_max)
draw_rectangle(0,0,view_wport[0],view_hport[0],false)
draw_set_alpha(1)


/*draw_set_font(-1)
draw_text(10,10,"aim_dir: "+string(aim_dir))
draw_text(10,30,"aim_dir: "+string(angle_difference(aim_dir,180)))
/*draw_text(10,30,"x: "+string(mouse_x))
draw_text(10,50,"y: "+string(mouse_y))
draw_text(10,70,"w: "+string(view_wport[0]))
draw_text(10,90,"h: "+string(view_hport[0]))
/*draw_text(10,10,"x: "+string(x))
draw_text(10,30,"y: "+string(y))
draw_text(10,50,"xsp: "+string(xsp))
draw_text(10,70,"ysp: "+string(ysp))
draw_text(10,90,"max move speed: "+string(max_move_speed))
draw_text(10,110,"state: "+string(script_get_name(state)))
draw_text(10,130,"combo stage: "+string(combo_stage))
draw_text(10,150,"next combo stage: "+string(next_combo_stage))
draw_text(10,170,"air_attacked: "+string(air_attacked))
draw_text(10,190,"coyote_jump: "+string(coyote_jump))

