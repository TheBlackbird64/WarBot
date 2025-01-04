image_angle = abs(compteur)-25
image_xscale = abs(compteur2)
image_yscale = image_xscale
compteur ++
compteur2 += 0.025
if compteur > 50 {compteur = -50}
if compteur2 > 0.5 {compteur2 = - compteur2}
if compteur2 > -0.2 {compteur2 = abs(compteur2)}