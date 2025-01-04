import socket, csv, os, datetime, random, time
import sys
from colorama import *
from select import *
from threading import Thread, RLock
#os.chdir("D:/Gabriel/programmation/Game_maker_studio_2/projet_jeu_multi/serveur")
a = open("logs/erreurs_serveur.txt", "w")                            # debug
sys.stderr = a

def log(texte):
    a = open("logs/log_serveur.txt", "a")
    a.write(str(datetime.datetime.now())[0:-7] + "> " + texte + "\n")


init()

nom_colonnes = "pseudo,mdp,classement,xp,pieces,objets,defis,amis,config,admin,ban".split(",")
def lecture_csv():
    liste = []
    with open('data.csv', 'r') as f:
        obj = csv.DictReader(f)
        for ligne in obj:
            liste.append(ligne)
    
    return liste

def ecriture_csv(liste):
    global nom_colonnes
    with open('data.csv', 'w', newline='') as f:
        obj = csv.DictWriter(f, fieldnames=nom_colonnes)
        obj.writeheader()
        for contenu in liste:
            obj.writerow(contenu)
    
    f = open('data.csv', 'r')
    f2 = f.read()[0:-1]
    f.close()
    f = open('data.csv', 'w')
    f.write(f2)
    f.close()

def envoi_msg(client_cible, envoi_message):
    try:
        client_cible.send((envoi_message + "|").encode())
    except:
        print(af_debug + "erreur d'envoi du message")

if os.path.exists("data.csv"):
    liste_compte = lecture_csv()
else:
    a = open("data.csv", "w")
    a.write(",".join(nom_colonnes))
    a.close()


version_client_GM = "1.0"
message_debut = "-"                     #  mettre "-" si le message est vide
port = 15001
host = ""

clients_connectes = []
clients_connectes_infos = []
new_msg = []
liste_attente = []
programme = True
af_serv = Fore.YELLOW +  "  [server]: "
af_client = Fore.GREEN + "    [client]: "
af_debug = Fore.RED +    "       [debug]: "
locker1 = RLock()
locker2 = RLock()
locker3 = RLock()

def maj_affichage(socket_msg):
    global af_client
    af_client = Fore.GREEN + "    [client " + str(clients_connectes_infos[clients_connectes.index(socket_msg)]) + " ]: "

print(Fore.YELLOW + "                                                 Lancement du serveur")
print("Port: " + str(port) + "             host: local" + host)
print("\n***********************************************************************************************************************\n")
log("\n\n       LANCEMENT SERVEUR \n")


server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((host, port))
server.listen(5)


class Serveur(Thread):
    
    def __init__(self, num):
        Thread.__init__(self)
        self.num = num
    
    def run(self):
        with locker1:
            print(af_serv + "Thread " + str(self.num) + " lancé")
        global programme
        global clients_connectes
        global liste_compte
        global liste_attente
        msg_lire = ""
        num_client = 0
        id_groupe = 0
        while programme:
            msg_print = True # on le met à false quand on veut pas que le print s'affiche
            time.sleep(0.001)
            with locker3:
                requetes, wlist, xlist = select([server], [], [], 0)
                for req in requetes:
                    connection_clients, infos = req.accept()
                    clients_connectes.append(connection_clients)
                    num_client += 1
                    clients_connectes_infos.append(num_client)
                    print(af_serv + "(thread " + str(self.num) + ")" + " La connection a été établie " + str(infos))
                    log(" La connection a été établie " + str(infos))
            
            
            # Messages reçus
            if len(clients_connectes) >= 1:
                with locker2:
                    new_msg, wlist, xlist = select(clients_connectes, [], [], 0)
                    liste_msg = []
                    for msg in new_msg:
                        try:
                            liste_msg.append([msg, msg.recv(1024).decode()])
                        except ConnectionResetError:
                            print(af_serv + "(thread " + str(self.num) + ")" + " La connection a été interrompue. (client " + str(clients_connectes_infos[clients_connectes.index(msg)]) + ")")
                            log(" La connection a été interrompue. (client " + str(clients_connectes_infos[clients_connectes.index(msg)]) + ")")
                            
                            del clients_connectes_infos[clients_connectes.index(msg)]
                            clients_connectes.remove(msg)
                        except ConnectionAbortedError:
                            print(Fore.RED + "  Erreur: ConnectionAbortedError")
                            log("  Erreur: ConnectionAbortedError")
                        except UnicodeDecodeError:
                            print(Fore.RED + "  Erreur: UnicodeDecodeError")
                            log("  Erreur: UnicodeDecodeError")
                
                # traitement messages clients 
                # le socket du client: socket_client
                for msg in liste_msg:
                    socket_client = msg[0]
                    
                    for msg_lire2 in msg[1].split("|"):
                        
                        maj_affichage(socket_client)
                        if msg_lire2 != "":
                            msg_lire = msg_lire2.split(",")
                            
                            if True:
                                if msg_lire[0] == "connection":                                                             # CONNECTION
                                    reponse = ","
                                    for a in liste_compte:
                                        if a["pseudo"] == msg_lire[1] and a["mdp"] == msg_lire[2]:
                                            for b in a.values():
                                                reponse += b + ","
                                    
                                    if reponse != ",":
                                        envoi_msg(socket_client, "connection,valide" + reponse)
                                    else:
                                        envoi_msg(socket_client, "connection,erreur,erreur: compte inexistant ou mot de passe incorrect.")
                                elif msg_lire[0] == "creer_compte":                                                           # CREER COMPTE
                                    valide = True
                                    for a in liste_compte:
                                        if a["pseudo"] == msg_lire[1] or msg_lire[1] == "" or msg_lire[2] == "":
                                            valide = False
                                    
                                    if valide:
                                        liste_compte.append({})
                                        
                                        liste_compte[len(liste_compte)-1]["pseudo"] = msg_lire[1]
                                        liste_compte[len(liste_compte)-1]["mdp"] = msg_lire[2]
                                        liste_compte[len(liste_compte)-1]["classement"] = "0"
                                        liste_compte[len(liste_compte)-1]["xp"] = "0"
                                        liste_compte[len(liste_compte)-1]["pieces"] = "0"
                                        liste_compte[len(liste_compte)-1]["objets"] = ";4:1;1:1"
                                        liste_compte[len(liste_compte)-1]["defis"] = ";"
                                        liste_compte[len(liste_compte)-1]["amis"] = ";"
                                        liste_compte[len(liste_compte)-1]["config"] = ";.1.;.;.;.1.;.;"
                                        liste_compte[len(liste_compte)-1]["admin"] = "false"
                                        liste_compte[len(liste_compte)-1]["ban"] = "false"
                                        ecriture_csv(liste_compte)
                                        envoi_msg(socket_client, "creer_compte,valide")
                                    else:
                                        if msg_lire[2] == "":
                                            envoi_msg(socket_client, "creer_compte,erreur,erreur: le mot de passe doit faire un moins un caractere.")
                                        else:
                                            envoi_msg(socket_client, "creer_compte,erreur,erreur: pseudo deja pris.")
                                elif msg_lire[0] == "ch_pseudo":                                                           # CHANGER PSEUDO
                                    valide = True
                                    for a in liste_compte:
                                        if a["pseudo"] == msg_lire[2]:
                                            valide = False
                                    
                                    if msg_lire[2] != "" and valide:
                                        rep = ""
                                        for a in liste_compte:
                                            if a["pseudo"] == msg_lire[1]:
                                                a["pseudo"] = msg_lire[2]
                                                rep = msg_lire[2] + "," + a["mdp"]
                                        ecriture_csv(liste_compte)
                                        envoi_msg(socket_client, "ch_pseudo,valide," + rep)
                                    else:
                                        envoi_msg(socket_client, "ch_pseudo,erreur")
                                elif msg_lire[0] == "ch_mdp":                                                           # CHANGER MDP
                                    
                                    if msg_lire[2] != "":
                                        for a in liste_compte:
                                            if a["pseudo"] == msg_lire[1]:
                                                a["mdp"] = msg_lire[2]
                                        ecriture_csv(liste_compte)
                                        envoi_msg(socket_client, "ch_mdp,valide")
                                    else:
                                        envoi_msg(socket_client, "ch_mdp,erreur")
                                elif msg_lire[0] == "jouer":                                                                  # LANCER UNE GAME
                                    if len(liste_attente) >= 1:
                                        attaque = random.randint(1, 2)
                                        id_groupe += 1
                                        envoi_msg(socket_client, "partie_trouvee," + str(id_groupe) + "," + str(attaque))
                                        if attaque == 2:
                                            attaque = 1
                                        else:
                                            attaque = 2
                                        envoi_msg(liste_attente[0], "partie_trouvee," + str(id_groupe) + "," + str(attaque))
                                        del liste_attente[0]
                                    else:
                                        liste_attente.append(socket_client)
                                elif msg_lire[0] == "annuler_jouer":                                                           # ANNULER UNE GAME
                                    for a in liste_attente:
                                        if a == socket_client:
                                            liste_attente.remove(a)
                                elif msg_lire[0] == "envoi_groupe":                                                           # COMMUNIQUER AVEC LE GROUPE
                                    msg_print = False
                                    for cl in clients_connectes:
                                        if cl != socket_client:
                                            envoi_msg(cl, "recu_groupe," + msg_lire[1] + "," + msg_lire[2])
                                    if msg_lire[2][0:5] == "robot":
                                        msg_print = True
                                elif msg_lire[0] == "ping":                                                                    # PING
                                    msg_print = False
                                    envoi_msg(socket_client, "ping," + msg_lire[1])
                                elif msg_lire[0] == "save":                                                                   # SAUVEGARDER LE COMPTE
                                    for a in liste_compte:
                                        if a["pseudo"] == msg_lire[1]:
                                            a["classement"] = msg_lire[2]
                                            a["xp"] = msg_lire[3]
                                            a["pieces"] = msg_lire[4]
                                            a["objets"] = msg_lire[5]
                                            a["defis"] = msg_lire[6]
                                            a["amis"] = msg_lire[7]
                                            a["config"] = msg_lire[8]
                                            a["admin"] = msg_lire[9]
                                            a["ban"] = msg_lire[10]
                                            ecriture_csv(liste_compte)
                                elif msg_lire[0] == "boutique":                                                                # ENVOI DU CONTENU DE LA BOUTIQUE
                                    f = open("boutique.txt", "r")
                                    contenu = f.read()
                                    f.close()
                                    contenu2 = []
                                    for a in contenu.split("\n"):
                                        contenu2.append(a.split(":"))
                                    
                                    for a in contenu2:
                                        if a[0] == msg_lire[1]:
                                            envoi_msg(socket_client, "boutique," + a[0] + "," + a[1])
                                elif msg_lire[0] == "version":                                                                # VERIFICATION DE LA VERSION
                                    envoi_msg(socket_client, "version," + version_client_GM)
                                elif msg_lire[0] == "message":                                                                # MESSAGE DEBUT
                                    envoi_msg(socket_client, "message," + message_debut)
                                elif msg_lire[0] == "classement":                                                                # CLASSEMENT
                                    rep = ""
                                    for comptes in liste_compte:
                                        for elements in comptes.values():
                                            rep += elements + "!"
                                        rep = rep[0:-1]
                                        rep += "*"
                                    rep = rep[0:-1]
                                    envoi_msg(socket_client, "classement," + rep)
                                else:
                                    envoi_msg(socket_client, "message non compris")
                            
                            
                            if msg_print:
                                print(af_client + "(thread " + str(self.num) + ")" + str(datetime.datetime.now())[0:-7] + " >" + ",".join(msg_lire))
                                log(",".join(msg_lire))

liste_serveurs = []
for a in range(0, 1):
    liste_serveurs.append(Serveur(a+1))

for a in liste_serveurs:
    a.start()

