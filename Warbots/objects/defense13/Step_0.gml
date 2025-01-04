visible = active or part_charge

if active {
	part_charge = false
}
if part_charge or active
{
	part_system_position(part_sys_local, x, y)
	part_particles_create(part_sys_local, x, y, part_defense, 5)
}

if dr_taille > 359 {dr_taille = 0}
else {dr_taille += 2}

if vie > 0 and active {vie --}
