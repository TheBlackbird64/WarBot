set_scale(0.8)
global.focus_boutons += 1
x = 683
y = 384
create_widget(b_ok, x, y+sprite_height/2-60, 0.5)

liste_comptes = ""
send_message_server("classement")