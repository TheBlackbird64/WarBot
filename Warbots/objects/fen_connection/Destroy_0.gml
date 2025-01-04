global.focus_boutons -= 1
if global.pseudo == "  -  "
{
	instance_destroy(client_reseau)
	start_game()
}