speed = vitesse
image_angle = direction
visible = true
set_scale((get_module_attaque_stats(13, "portee")-portee)/get_module_attaque_stats(13, "portee")*0.7)
set_effet(effet_elec)
portee --
if portee <= 0 {instance_destroy()}