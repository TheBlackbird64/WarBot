visible = active
var a = 0
if _parent.sprite_width > _parent.sprite_height {a = _parent.sprite_width}
if _parent.sprite_width <= _parent.sprite_height {a = _parent.sprite_height}
var _x = a * 1.6
var _y = a * 1.6
if active {
	part_charge = false
	part_emitter_region(global.effet_part_sys, part_emit, x-_x, x+_x, y-_y, y+_y, ps_shape_ellipse, ps_distr_invgaussian)
	part_emitter_burst(global.effet_part_sys, part_emit, part_defense, 20)
}
if part_charge
{
	part_emitter_region(global.effet_part_sys, part_emit, x-_x, x+_x, y-_y, y+_y, ps_shape_ellipse, ps_distr_invgaussian)
	part_emitter_burst(global.effet_part_sys, part_emit, part_defense, -2)
}
if vie > 0 and active {vie --}


compteur_animation ++
if compteur_animation > 200 {compteur_animation = -200}