if not active {texte = "Appuyez sur 't' pour chatter."}
else
{
	keyboard_string = string_copy(keyboard_string, 1, 25)
	texte = keyboard_string
}
if keyboard_check_pressed(ord("T")) and not active
{
	active = true
	keyboard_string = ""
}


if keyboard_check_pressed(vk_escape) {active = false}

if keyboard_check_pressed(vk_enter) and active
{
	texte = "[" + global.pseudo + "]: " + texte
	envoi_grp(["message_chat", texte])
	array_push(tab_msg, [texte, true])
	active = false
}

if array_length(tab_msg) > 5 {array_delete(tab_msg, 0, 1)}