compteur --
if compteur > 0
{
	y += compteur/10
}
if compteur < -130
{
	y -= (abs(compteur)-130)/9
}
if compteur < -270
{
	instance_destroy()
}

if irandom_range(0, 2) == 1 and compteur > -130 {part_particles_create(global.effet_part_sys, x, y, part_anim_nv, 1)}
if compteur > -130 {part_particles_create(global.effet_part_sys, x, y, part_anim_nv2, 3)}