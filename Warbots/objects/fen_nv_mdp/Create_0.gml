global.focus_boutons += 1
image_index = 4
set_scale(0.5)
create_widget(croix_fermer, x+200, y-140, 0.3)
ch_txt = create_widget(champ_texte, x, y-60, 1)
ch_txt.texte = "Nouveau mot de passe"
create_widget(b_valider_nv_mdp, x, y+100, 0.6)