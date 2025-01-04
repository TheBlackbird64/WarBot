if 0 >= global.focus_boutons
{
	if mouse_wheel_up() { y -= 30 }
	if mouse_wheel_down() { y += 30 }
}
if y < 390 {y = 390}
if y > room_height-390 {y = room_height-390}