function start_game()
{
	global.version = "1.0"
	global.temps = 0
	global.temps_total_secondes = 60*5
	global.tab_nv = [40, 100, 250, 400, 550, 750, 950, 1000, 1030, 1060, 1090, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1200, 1200, 1200, 1200, 2000]
	global.focus_boutons = 0
	global.id_groupe = 0
	global.attaque = 0
	global.pseudo_adv = "unknow"
	global.classement_adv = 0
	global.liste_joueurs = []
	global.degats_multipli = []
	
	global.touche_droite = ord("D")
	global.touche_gauche = ord("Q")
	global.touche_haut = ord("Z")
	global.touche_bas = ord("S")
	
	// variables de compte
	global.pseudo = "  -  "
	global.classement = 0
	global.xp = 0
	global.pieces = 0
	global.objets = []
	global.defis = []
	global.amis = []
	global.config = []
	global.admin = "false"
	global.ban = "false"
	
	var a = instance_create_depth(0, 0, -1, client_reseau)
	with (a) {event_user(1)}
}

function get_xp(niv, ifstr, nb_xp)
{
	var tab_val = global.tab_nv
	var nv = array_length(tab_val)
	var reste = "niveau max."
	if not ifstr {reste = 0}
	var xp = nb_xp
	var effectue = false
	
	for (var i = 0; array_length(tab_val) > i; i++)
	{
		if not effectue{
			if xp < tab_val[i]
			{
				effectue = true
				if not ifstr {reste = xp}
				else {reste = string(xp) + "/" + string(tab_val[i])}
				nv = i+1
			}
			else
			{
				xp -= tab_val[i]
			}
		}
	}
	
	if niv {return nv}
	else {return reste}
}

function transition_room(_room)
{
	var inst = instance_create_depth(683, 384, -1000, transition)
	inst._room = _room
}

function room_debut_game()
{
	global.temps = date_current_datetime()
	part_particles_clear(global.part_sys)
	var tab = [[1575, 2609], [4000, 2609]]
	instance_create_depth(tab[int64(global.attaque)-1][0], tab[int64(global.attaque)-1][1], -50, player_2)
	if global.attaque == "1" {global.attaque = "2"}
	else {global.attaque = "1"}
	instance_create_depth(tab[int64(global.attaque)-1][0], tab[int64(global.attaque)-1][1], -50, player)

	instance_create_depth(0, 0, -100, chat)
	instance_create_depth(0, 0, -100, menu_modules)
	var a = instance_create_depth(0, 0, -100, menu_modules)
	a.image_index = 1
}

// code pour gagner du temps

function set_scale(taille)
{
	image_xscale = taille
	image_yscale = image_xscale
}

function find_index_array(array, value)
{
	var result = -1
	for (var i = 0; array_length(array) > i; i++)
	{
		if array[i] == value {result = i}
	}
	return result
}

function find_index_array_2d(array, index, value)
{
	var result = -1
	
	if index != -1
	{
		for (var i = 0; array_length(array) > i; i++)
		{
			if array[i][index] == value {result = i}
		}
	}
	/*else
	{
		for (var i = 0; array_length(array) > i; i++)
		{
			for (var j = 0; array_length(array[i]) > j; j++)
			{
				if array[i][j] == value {result = i}
			}
		}
	}*/
	return result
}

function set_direction(dir)
{
	var result = dir
	while not (result > 0 and result < 359) {
		result = 360-abs(result)
	}
	
	direction = result
	return result
}

function power_up_active(nom, equipe)
{
	var result = false
	for (var i = 0; instance_number(nom) > i; i++)
	{
		if instance_find(nom, i).equipe == equipe
		{
			result = true
		}
	}
	return result
}

function texte_debug(condition)
{
	if condition {return "on"}
	else {return "off"}
}

function type_to_str(type)
{
	if type == -1 {return "indéfini"}
	if type == 0 {return "feu"}
	if type == 1 {return "électrique"}
	if type == 2 {return "matière"}
}


// organisation des données

function regrouper(tab, caractere)
{
	var a = 0
	var b = ""
	while a < array_length(tab)
	{
		b += string(tab[a]) + caractere
		a++
	}
	b = string_copy(b, 1, string_length(b)-string_length(caractere))
	
	if array_length(tab) == 0 {return caractere}
	else {return b}
}

function regrouper_2d(tab_2d, carac_1, carac_2)
{
	var temp_tab = []
	for (var i = 0; array_length(tab_2d) > i; i++)
	{
		array_push(temp_tab, regrouper(tab_2d[i], carac_2))
	}
	
	return regrouper(temp_tab, carac_1)
}

function separer(str, caractere)
{
	if string_char_at(str, 1) != caractere {str = caractere + str}
	if string_char_at(str, string_length(str)) != caractere {str += caractere}
	
	var _debug_ = 0
	var tab = []
	var contenu_liste = str
	while (string_length(contenu_liste) > 2) {
		contenu_liste = string_copy(contenu_liste, string_pos(caractere, contenu_liste)+1, string_length(contenu_liste))
		array_push(tab, string_copy(contenu_liste, 1, string_pos(caractere, contenu_liste)-1))
		if (string_copy(contenu_liste, 1, string_pos(caractere, contenu_liste)-1) == "")
		{
			array_delete(tab, array_length(tab)-1, 1)
		}
		_debug_ ++
		//if _debug_ > 1000 {show_message("+ de 1000 tours dans 'separer'")}
	}
	
	return tab
}

function liste_vers_tab(liste)
{
	var tab = []
	for (var i = 0; ds_list_size(liste) > i; i++)
	{
		array_push(tab, ds_list_find_value(liste, i))
	}
	return tab
}

function saut_ligne_str(str, nb_carac)
{
	var num = 0
	var liste_mots = separer(str, " ")
	for (var i = 0; array_length(liste_mots) > i; i++)
	{
		if string_length(liste_mots[i]) < nb_carac
		{
			if num + string_length(liste_mots[i]) > nb_carac
			{
				liste_mots[i] = "\n" + liste_mots[i]
				num = string_length(liste_mots[i])+1
			}
			else
			{
				num += string_length(liste_mots[i])+1
			}
		}
	}
	return regrouper(liste_mots, " ")
}