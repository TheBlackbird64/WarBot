compteur--
if compteur == 0 or not instance_exists(_parent) {instance_destroy()}
for (var i = 0; instance_number(bouton_module_attaque) > i; i++)
{
	if equipe == "E1" {
		var inst = instance_find(bouton_module_attaque, i)
		if inst.recharge + ajout_recharge > inst.recharge_max {inst.recharge = inst.recharge_max}
		else {inst.recharge += ajout_recharge}
	}
}

part_emitter_region(global.effet_part_sys, part_emit, _parent.x-100, _parent.x+100, _parent.y-100, _parent.y+100, ps_shape_ellipse, ps_distr_linear)
part_emitter_burst(global.effet_part_sys, part_emit, part_pw, 1)
part_emitter_burst(global.effet_part_sys, part_emit, part_pw2, -5)