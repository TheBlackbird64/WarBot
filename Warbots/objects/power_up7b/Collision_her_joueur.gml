equipe = _parent.equipe
if not (other.equipe == equipe)
{
	with (other) {set_effet(effet_inverse)}
	instance_destroy()
}