



draw_sprite(spr_hud,0,x-width/2,y-height/2)

var y_1 = y-height/2+height*.1
var x_1 = x-width/2+width*.2
var x_2 = x-width/2+width*.3
var x_3 = x-width/2+width*.4

switch(obj_player.gun){
	case guns.pistol:
		draw_sprite(spr_hud_pistol,1,x_1,y_1)
		draw_sprite(spr_hud_rifle,0,x_2,y_1)
		draw_sprite(spr_hud_shotgun,0,x_3,y_1)
		break
	case guns.shotgun:
		draw_sprite(spr_hud_pistol,0,x_1,y_1)
		draw_sprite(spr_hud_rifle,0,x_2,y_1)
		draw_sprite(spr_hud_shotgun,1,x_3,y_1)
		break
	case guns.rifle:
		draw_sprite(spr_hud_pistol,0,x_1,y_1)
		draw_sprite(spr_hud_rifle,1,x_2,y_1)
		draw_sprite(spr_hud_shotgun,0,x_3,y_1)
		break
}
