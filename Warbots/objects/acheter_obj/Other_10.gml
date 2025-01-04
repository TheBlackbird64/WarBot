var tab_temp = [S_icone_attaque, S_icone_defense, S_icone_power_ups, S_icone_robots, S_icone_ameliorations]
var a = 0
if categorie_module == "attaque" {a = 1}
if categorie_module == "defense" {a = 2}
if categorie_module == "power_ups" {a = 3}
if categorie_module == "robot" {a = 4}
if categorie_module == "ameliorations" {a = 5}
categorie_module_int = a
sprite_index = tab_temp[a-1]
image_index = num_module