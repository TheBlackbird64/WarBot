if not effectue 
{
	effectue = true
	if image_index = 0
	{
		for (var i = 0; array_length(global.config[0]) > i; i++) // modules attaque
		{
			var a = instance_create_depth(x, y, depth-10, bouton_module_attaque)
			a.num_module = i
			with (a) {event_user(1)}
		}
	}
	if image_index = 1
	{
		for (var i = 0; array_length(global.config[1]) > i; i++) //modules defense
		{
			var a = instance_create_depth(x, y, depth-10, bouton_module_defense)
			a.num_module = i
			with (a) {event_user(1)}
		}
		
		for (var i = 0; array_length(global.config[2]) > i; i++) //modules power ups
		{
			var a = instance_create_depth(x, y, depth-10, bouton_module_power_ups)
			a.num_module = i
			with (a) {event_user(1)}
		}
	}
}