speed = vitesse
image_angle = direction
portee --
if portee <= 0 {instance_destroy()}

part_particles_create(global.effet_part_sys, x, y, part_arme2, 1)