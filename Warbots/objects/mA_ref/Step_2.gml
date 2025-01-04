if not d_effectue
{
	d_effectue = true
	if power_up_active(power_up4, equipe)
	{
		var result = find_index_array_2d(global.degats_multipli, 0, equipe)
		if result != -1 {degats *= global.degats_multipli[result][1]}
	}
}