

damage = 8

state = crawler_run

dead_state = crawler_die
stagger_state = crawler_run

hit_mask = spr_crawler_mask_hit

target_direction = choose(-1,1) // Start moving left or right
direction_cooldown = false
direction_cooldown_time = 30

event_inherited()

xsp = 0
ysp = 0

max_hp = 10
hp = max_hp

hp_width = 25

attack_distance = 35

run_speed = .05
max_run_speed = 1

air_move_factor = .2

max_stair_speed = max_run_speed*.5

step_size = 4

grav_speed = .3

move_friction = .3

run_image_speed_factor = .4

invincibility_frames = 15

sight_range = 500
sight_up = 110
sight_down = 20

invincible = false

damaged_time = 200 // How many frames to have an opaque bar
damaged = false // Make hp bar opaque when damaged

face = -1

hp_alpha = 0

prev_state = state
prev_face = face