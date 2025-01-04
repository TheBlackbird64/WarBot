event_inherited()

v_acceleration = 0
h_acceleration = 0
coef_acceleration = 0.05
coef_ralentissement = 0.05
vitesse_rotation = 180
get_module_robot_stats(global.config[3][0], "setup")
var inst = instance_create_depth(x, y, depth, get_module_robot_sprite(global.config[3][0], false))
inst._parent = id

sprite_index = get_module_robot_sprite(global.config[3][0], true)
set_scale(inst.image_xscale)

image_alpha = 0

vie = vie_max
energie = energie_max
tab_defense = []
paralyse = false

instance_create_depth(x, y, -200, draw_interface)

compteur_req_ping = 0
ping = 0
ping_reel = 0

