global.focus_boutons += 1
x = 683
y = 384
set_scale(0.6)
create_widget(b_connection, x, y-50, image_xscale)
create_widget(b_creer_compte, x, y+50, image_xscale)


if file_exists("autoconnect.txt")
{
	var f = file_text_open_read("autoconnect.txt")
	var msg_temp = file_text_read_string(f)
	send_message_server(msg_temp)
	file_text_close(f)
}