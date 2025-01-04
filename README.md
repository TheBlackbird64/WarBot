# WarBot
WarBot est un jeu multijoueur 2d conçu sur Gamemaker dont le but est de battre son adversaire dans un duel tout en concevant votre robot de manière stratégique à l'avance.

Ce projet date de septembre 2021, donc le code n'est pas très qualitatif, il faut regarder que le résultat si possible..
De plus à cause d'une mise à jour du moteur de jeu le jeu contient de nombreux bugs, désolé d'avance.

Le serveur n'est pas hébergé, mais vous pouvez le faire en local pour tester (voir la section: "Essayer le jeu")

## Gameplay 

Vous devez choisir un robot, des armes, des défenses et différents autres modules, en gardant à l'esprit que chaque objet a ses avantages et ses inconvénients.
Le but est donc de trouver le meilleur équilibre possible.

Chaque élément a un certain nombre de caractéristiques, par exemple : 
**Pour les robots:** Energie max, vie max, nombre de défenses, d'attaques, ..
**Pour les modules:** Energie dépensée, temps de recharge, ...

Une fois que vous avez fait votre composition vous pouvez lancer un combat.
Un combat gagné fait monter dans le classement et rapporte des pièces, ce qui permet d'acheter des modules.

## Essayer le jeu

Pour essayer le jeu:
- Téléchargez le serveur (vous aurez besoin de python).
- Téléchargez le client sur au moins 2 machines
- Allez dans le dossier Appdata et ouvrez le fichier config.txt
- Mettez sur la 1ere ligne l'adresse du serveur et en 2eme le port du serveur

Si vous voulez tester tous les modules sans les acheter utilisez le compte id: admin et mdp: admin
qui est disponible dans la bdd du serveur (fichier data.csv)

Pour changer l'adresse ip du serveur, modifiez la dans le code.
