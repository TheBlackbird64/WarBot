if not instance_exists(_parent) {instance_destroy()}
if variable_instance_exists(_parent, "vie") {if _parent.vie <= 0 {instance_destroy()}}


x = _parent.x
y = _parent.y

if compteur <= 0 {instance_destroy()}
else {compteur--}

