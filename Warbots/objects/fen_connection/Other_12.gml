b = create_widget(b_valider, x, y+160, image_xscale)
txt1 = create_widget(champ_texte, x, y-80, 1)
txt1.texte = "pseudo"
txt2 = create_widget(champ_texte, x, y+10, 1)
txt2.texte = "mot de passe"
case_c = create_widget(case_cocher, x-70, y+80, image_xscale)
create_widget(croix_fermer, x+240, y-170, 0.3)