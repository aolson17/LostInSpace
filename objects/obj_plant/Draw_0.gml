



draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)

draw_sprite(spr_plant_stem,0,x+(head_pos_x-x)*.5,y+(head_pos_y-y)*.5)
draw_sprite(spr_plant_stem,0,x+(head_pos_x-x)*.2,y+(head_pos_y-y)*.2)
draw_sprite(spr_plant_stem,0,x+(head_pos_x-x)*.7,y+(head_pos_y-y)*.7)

draw_sprite_ext(spr_plant_head,0,head_pos_x,head_pos_y,1,1,aim_dir+180,c_white,1)
