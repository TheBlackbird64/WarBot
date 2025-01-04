global.pieces -= int64(_parent._parent.prix)
array_push(global.objets, string(_parent._parent.categorie_module_int) + ":" + string(_parent._parent.num_module))
instance_destroy(_parent)