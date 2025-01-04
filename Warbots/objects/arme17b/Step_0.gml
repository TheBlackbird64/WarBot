if (portee <= 0) or (not instance_exists(_parent)) {instance_destroy()}
speed = 0
if portee < get_module_attaque_stats("l'autre 17", "portee") {speed = vitesse}
else {
	x = _parent.x+lengthdir_x(300, dir)
	y = _parent.y+lengthdir_y(300, dir)
}
portee --
image_angle += 15