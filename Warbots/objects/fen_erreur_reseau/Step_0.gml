compteur ++
if compteur > 100
{
	compteur = 0
	if instance_exists(client_reseau)
	{
		with (client_reseau) {event_user(1)}
	}
}