/// @description anim chargement

part_charge = true

dr_compteur = 0
dr_tab_rand = []
for (var i = 0; 10 > i; i++)
{
	array_push(dr_tab_rand, [random_range(0.5, 3), choose(true, false), -1])
}