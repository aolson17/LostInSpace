
max_hp = 99
hp = max_hp

got_rifle = false
got_shotgun = false

checkpoint = noone
checkpoint_x = x
checkpoint_y = y

dead_time_max = 90
dead_time = dead_time_max
played_death_sound = false

run_speed = .2
sprint_speed = .2
max_run_speed = 3
max_sprint_speed = 6
crouch_walk_speed = .08
max_crouch_walk_speed = 1

move_friction = .5
slide_friction = .05
roll_friction = .25

step_size = 1 // How many pixels tall of steps the player can walk up

touch_knockback = 2

air_move_factor = .8

max_stair_speed = max_run_speed*.5

grav_speed = .25

roll_speed = 5 // How much speed gained from roll

jump_speed = 6
variable_jump_factor = .5

run_image_speed_factor = .4 // How much run speed effects the animation speed
crouch_image_speed_factor = .2 // How much crouch speed effects the animation speed
sprint_image_speed_factor = .1 // How much run speed effects the animation speed

invincibility_frames = 15
invincible = false

slide_cooldown_frames = 60
slide_cooldown = false

coyote_jump_frames = 5 // How many frames after falling off ground player can still jump
coyote_jump = false // If the player can jump despite not being on ground

queue_jump_frames = 5 // How many frames before landing can the player press the jump key and still jump after landing
queue_jump = false // If the player will jump after landing

muzzle_flash_frames = 1 // How many frames to show muzzle flash
flash = false

ore_green = 0
ore_purple = 0
ore_orange = 0

#region Gun Stats

enum guns{
	pistol,
	shotgun,
	rifle,
}
gun = guns.pistol
gun_length[guns.pistol] = 24
gun_damage[guns.pistol] = 1
gun_shots[guns.pistol] = 1
gun_auto[guns.pistol] = true
gun_fire_rate[guns.pistol] = 10
gun_accuracy[guns.pistol] = 10
gun_max_recoil[guns.pistol] = 35
gun_recoil[guns.pistol] = 5
gun_recoil_recovery[guns.pistol] = .3
gun_knockback[guns.pistol] = 2
gun_scope[guns.pistol] = false
gun_scope_power[guns.pistol] = 18
gun_backwards_accuracy_offset[guns.pistol] = 15
gun_bullet_speed[guns.pistol] = 25

gun_length[guns.shotgun] = 24
gun_damage[guns.shotgun] = .5
gun_shots[guns.shotgun] = 5
gun_auto[guns.shotgun] = false
gun_fire_rate[guns.shotgun] = 20
gun_accuracy[guns.shotgun] = 30
gun_max_recoil[guns.shotgun] = 20
gun_recoil[guns.shotgun] = 10
gun_recoil_recovery[guns.shotgun] = .3
gun_knockback[guns.shotgun] = 4
gun_scope[guns.shotgun] = false
gun_scope_power[guns.shotgun] = 18
gun_backwards_accuracy_offset[guns.shotgun] = 70
gun_bullet_speed[guns.shotgun] = 15

gun_length[guns.rifle] = 24
gun_damage[guns.rifle] = 4
gun_shots[guns.rifle] = 1
gun_auto[guns.rifle] = false
gun_fire_rate[guns.rifle] = 50
gun_accuracy[guns.rifle] = 1
gun_max_recoil[guns.rifle] = 100
gun_recoil[guns.rifle] = 35
gun_recoil_recovery[guns.rifle] = .6
gun_knockback[guns.rifle] = 5
gun_scope[guns.rifle] = true
gun_scope_power[guns.rifle] = 18
gun_backwards_accuracy_offset[guns.rifle] = 80
gun_bullet_speed[guns.rifle] = 50

#endregion

current_gun_backwards_accuracy_offset = 0

can_shoot = 0
current_recoil = 0

sheathed = true

state = stand

xsp = 0
ysp = 0

aim_dir = 0

face = 1 // 1 for right, -1 for left

prev_face = face
prev_ysp = ysp
prev_state = state

gamepad = false
down_pressed = false
up_pressed = false

arm_surf = surface_create(80,80)