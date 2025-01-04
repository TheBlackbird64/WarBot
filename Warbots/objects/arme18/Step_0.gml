speed = vitesse
image_angle = direction
part_type_direction(part_arme18, direction-5, direction+5, 0, 0)
part_type_speed(part_arme18, speed-3, speed-0.5, -0.03, 0)
part_particles_create(global.effet_part_sys, x, y, part_arme18, 1)
portee --
if portee <= 0 {instance_destroy()}

set_effet(effet_elec)