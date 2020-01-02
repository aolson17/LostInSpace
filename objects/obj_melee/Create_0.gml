

state = melee_stand

dead_state = melee_die
stagger_state = melee_stagger

hit_mask = spr_melee_mask

shield = instance_create_layer(x,y,layer,obj_melee_shield)

event_inherited()

xsp = 0
ysp = 0

max_hp = 15
hp = max_hp

hp_width = 30

attack_distance = 15

run_speed = .02
max_run_speed = 3

air_move_factor = .2

max_stair_speed = max_run_speed*.5

step_size = 4

grav_speed = .3

move_friction = .05

run_image_speed_factor = .4

invincibility_frames = 15

sight_range = 500
sight_up = 110
sight_down = 20

invincible = false

damaged_time = 200 // How many frames to have an opaque bar
damaged = false // Make hp bar opaque when damaged

face = -1

target = noone

hp_alpha = 0

prev_state = state
prev_face = face