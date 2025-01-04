if equipe != other.equipe
{
	set_degats(degats, type, other)
	with (other) {set_effet(effet_elec)}
	instance_destroy()
}