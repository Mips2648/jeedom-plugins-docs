---
layout: default
title: Changelog Arlo
lang: fr_FR
pluginId: arlo
---

# Beta

- Limite à 1 jour la récupération des vidéos/captures de la bibliothèque depuis le cloud
- Mise à jour de dépendances
- Compatibilité PHP 8.4

# Stable

## 2025-02-24

- Amélioration sur le processus de login et suppression de warning dans le log
- Fix sur l'enregistrement & le streaming local

## 2025-02-13

- Stop le démon si la connexion avec Arlo n'est pas possible
- Mise à jour des headers utilisés lors de l'authentification

## 2025-02-06

- Ajout du support de la Arlo Pro 5
- Mise à jour de dépendances
- Fix en urgence pour contourner un blocage de la connexion arrivé dans le nuit du 05/02 au 06/02

## 2024-12-25

- Ajout du support de la Video Doorbell HD & 2k
- Correction d'un bug sur la commande **Etat Planning**
- Mise à jour de dépendances
- Mise à jour de l'icône

## 2024-11-16

- Amélioration du support des modèles Arlo Essential
- Fix un possible blocage du démon en cas d'échec d'actualisation du mode
- Limite la version d'une dépendance (cryptography) pour garder la compatibilité avec les pi3 installé en 32bits. Attention, la compatibilité avec les systèmes 32bits sera supprimée lors d'une prochaine version!
- Mise à jour de dépendances
- Jeedom v4.4 requis

## 2024-09-23

- Correction d'un bug sur la commande **Etat Planning**
- Correction d'un crash démon si le nom d'utilisateur mail n'est pas une adresse email

## 2024-09-16

- Cette nouvelle version revoit complètement l'intégration avec Arlo pour compatibilité avec l'interface "Arlo V4" (en beta depuis 6 mois).
Voir également [ce sujet sur community](https://community.jeedom.com/t/nouvelle-version-pour-la-compatibilite-arlo-v4/119611)
- Ajout du support de la Arlo Essential Indoor 2
- Ajout du support de la Video Doorbell 2
- Ajout du support de la Arlo Essential XL
- Amélioration du support de la Arlo Essential XL
- Traduction du plugin en anglais, allemand, espagnol, italien, portugais
- Réduction de la taille du plugin
- Optimisation de la taille des backups
- Version Debian 11 minimum requise

## 2024-01-20

- Modification de la vérification des dépendances pour compatibilité Debian 12
- Permet l'affichage des commandes **On** et **Off** sur le widget caméra

## 2023-08-21

- Modification interne de la gestion de dépendances
- Adaptation de l'url dernière capture lors de la première synchro pour éviter un problème d'accès (CSP)
- Bloque le démon dans le cas où aucun serveur d'authentification Arlo n'est trouvé

## 2023-07-19

- Fix pour l'enregistrement cloud qui démarre plus lentement qu'avant (dû au cloud Arlo)
- Fix l'enregistrement & le streaming local
- Fix l'option de durée ne s'affichait pas sur la commande "Enregistrement" dans les scénarios
- Fix un problème de dépendance sur pi3 sous Buster

## 2023-07-03

- Adaptation de la bibliothèque de média pour la navigation sur mobile
- Refonte & amélioration importante de l'authentification à Arlo:
  - Sauvegarde de la session pour réutilisation lors d'une reconnexion: à présent la reconnexion à Arlo lors d'un redémarrage du démon sera quasi instantanée (si la session précédente était toujours valide) car il n'y aura plus besoin de s'authentifier (donc on ne doit plus attendre le code unique par mail, on ne doit plus passer par cloudflare etc)
  - Ajout de méthodes de connexions alternatives dans le cas ou la connexion est bloquée par cloudflare (mais cela ne fonctionne pas à 100%)

## 2023-05-22

- Fix enregistrement cloud

## 2023-05-17

- Fix sur changement de mode de la Arlo Baby suite à un changement de comportement chez Arlo
- Amélioration des champs password
- Compatibilité Jeedom v4.4
- Exclusion des captures & vidéos sauvées localement du backup Jeedom pour réduire la taille de ceux-ci
- Mise à jour des dépendances pour résoudre un blocage lors de la connexion au démarrage du démon
- Modification sur la gestion des dépendances pour éviter des conflits potentiels avec d'autres plugins

> En principe les dépendances seront réinstallées automatiquement lors de la mise à jour du plugin. Si ce n'est pas le cas veuillez les relancer manuellement.

## 2022-11-11

- Fix mineur concernant les Audio Doorbells

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-10-06

- Amélioration de l'intégration de la Arlo Floodlight: gestion de plus de modèle, ajout de la gestion personnalisée des événements si pas de base (voir doc)
- Fix mineur sur le widget caméra pour Jeedom v4 et suppression de la compatibilité avec Jeedom v3; la version minimum requise de Jeedom est maintenant la 4.0

## 2022-08-17

- Fix: le widget caméra pour les utilisateurs non-admin n'affichait pas la dernière capture

## 2022-05-17

- Support du modèle VMC4041P (Arlo Pro4)
- Ajout des commandes **Activer gestion des événements**, **Désactiver gestion des événements** et **Etat gestion des événements** sur la Arlo doorbell wire free & Arlo Go

## 2022-02-11

- Ajout de la commande **Etat bouclier** sur la Arlo Essential Indoor
- Ajout des commandes **Etat Sirène**, **Sirène On** et **Sirène Off** sur la Arlo Essential
- Amélioration: permet, en option, l'affichage de toutes les commandes actions existantes sur le widget caméra
- Ajout d'un bouton dans la bibliothèque pour télécharger les enregistrements
- Désactivation par défaut de la gestion des événements sur la Arlo Essential lorsqu'aucun hub n'est connecté car cela draine la batterie de ce modèle trop rapidement
- Ajout de nouvelles commandes pour activer la gestion des événements à la demande sur la Arlo Essential: **Activer gestion des événements**, **Désactiver gestion des événements** et **Etat gestion des événements**
- Fix: le nom de l'objet/pièce était toujours visible sur le widget caméra
- Suppression de l'installation de la version custom de ffmpeg qui était nécessaire sous  Debian Stretch.

## 2021-10-31

- Mise à jour des commandes audio lors du refresh manuel et automatique de la Arlo Baby
- Fix de l'enregistrement vidéo cloud

## 2021-09-22

- Meilleur intégration avec les plugins tiers comme [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) ([Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) pour plus d'informations)
  - Ajout d'une commande *URL dernière capture* sur les caméras, cette commande peut-être utilisée dans la config *Commande Url Snapshot* du widget caméra de Jeedom Connect
  - Ajout d'un lien facile à copier dans la page de configuration de la caméra, ce chemin peut être utilisé dans la config *Dossier des enregistrements* du widget caméra de Jeedom Connect
- Restauration de plusieurs fonctionnalités pour la Arlo Video doorbell wire-free (la gestion des événements est toujours désactivée), [Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) pour plus de détails
- Ajout du carillon Arlo Chimes 2 (AC2001)
- Fix du statut "Lecture" sur la Arlo Baby qui n'était pas toujours correct.

## 2021-08-22

- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2
- Amélioration: permet, en option, l'affichage des commandes suivantes sur le widget de la Arlo Baby: **Température**, **Humidité**, **Qualité d'air**, **Luminosité**
- Fix: la commande **Qualité d'air** retournait une valeur en pour mille au lieu de pourcent, la valeur est à nouveau en pourcent à présent.
- Fix un crash du démon dans le cas où une caméra (non connectée à une base) est hors ligne.

## 2021-07-28

- Prise en charge de la Arlo Essential Indoor
- Prise en charge de la Arlo Pro4
- Permet l'affichage en tableau des tuiles (excepté la tuile caméra qui est personnalisé par le plugin)
- Désactivation de la gestion des événements sur la Arlo Video doorbell wire-free (pas de soucis avec la Video doorbell classique) car cela draine la batterie de ce modèle trop rapidement
- Optimisation interne sur les processus d'heartbeat et de reconnexion
- Meilleur gestion des timeouts
- Amélioration: mise à jour du mode en tant réel si celui-ci est modifié en dehors du plugin (dans l'app Arlo donc); précédemment il fallait maximum 1 min. 30

## 2021-06-02

- Ajout d'une commande action *Envoyer un enregistrement* sur les Arlo VideoDoorbell
- Fix de l'extraction du code d'authentification en 2 étapes suite à un changement de format dans le mail envoyé par Arlo
- Refonte complète de la gestion de la connexion au système Arlo par le démon:
  - le démon tentera de se reconnecter automatiquement sans s'arrêter en cas de problème lors du login ou en cas de déconnexion forcée par Arlo,
  - le démon ré-exécutera le changement de mode demandé avant la déconnexion si besoin

## 2021-04-03

Il est nécessaire de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà *OK*.

- Prise en charge de la sonnette Arlo video doorbell Essential (Wire-Free) AVD2001
- Amélioration de la prise en charge de la gamme Arlo Essential et Arlo Go
- Refonte complète de la gestion des événements par le démon (réduction des déconnexions et réduction du nombre de requêtes sur les périphériques sur batterie tel que Arlo Essential et Arlo Go)
- Fix urgent suite à un changement chez Arlo effectué dans la nuit du 02 au 03 avril: si vous ne faites pas cette mise à jour le démon ne pourra plus se connecter

## 2021-01-11

- Amélioration du heartbeat du démon au démarrage
- Amélioration de l'intégration de la Arlo Essential
- Fix image pour la video doorbell modèle AVD1001A qui ne s'affichait pas
- Fix: depuis la dernière mise à jour, l'équipement sirène (intégrée à certaine base) avait par erreur les commandes suivantes: *Rafraichir*, *Connecté*, *Mode* , *Etat planning* qui ne fonctionnaient pas évidement. Ces commandes peuvent être supprimées sur cet équipement, elles ne seront plus créées par le plugin.
- Fix une erreur mineur qui pouvait s'afficher dans les logs (sans conséquence) lorsqu'une caméra n'était pas partagée avec Jeedom

## 2020-12-02

- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes
- Ajout du support de la Arlo Essential
- Fix démon sur video doorbell si connectée sans base

## 2020-09-21

- Ajout du support de l'authentification en 2 étapes ([Voir documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Ajout du support de l'éclairage sur les Arlo Pro3 et Arlo Ultra
- Ajout du support de la Arlo Pro3 Floodlight
- Fix d'un plantage du démon lorsqu'un équipement était hors ligne ou désactivé

## 2020-08-26

- Force la configuration de la clé API en mode localhost
- Rotation automatique de la clé API à chaque mise à jour
- Nettoyage de la mise en page pour la V4
- Suppression d'un log "error" de connexion qui n'était pas important (car le démon se reconnecte tout seul si nécessaire)
- Ajout d'un log si la double authentification est activée sur l'utilisateur du plugin car celle-ci n'est pas encore prise en charge

## 2020-08-02

- Fix les fonctionnalités de streaming et d'enregistrements locaux cassés suite à un changent d'Arlo (leur nouveau système semble plus lent qu'avant)
- Fix urgent dû à un changement d'url chez Arlo effectué dans la nuit du 31 juillet au 01 août: si vous ne faite pas cette mise à jour le démon ne pourra plus se connecter.

## 2020-07-08

- Fix démon si seulement une vidéo doorbell existe (sans base)

## 2020-06-18

- Ajout des commandes modes sur le widget pour la Video Doorbell (quand elle n'est pas liée à une base)
- Ajout des commandes info *IP*, *Luminosité*, *Température*, *Humidité* et *Qualité de l'air* sur la Arlo Baby
- Ajout de la gestion de la veilleuse de la Arlo Baby: on/off, minuterie, luminosité, couleur, température des couleurs et mode ([Voir documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Ajout de la gestion de la berceuse de la Arlo Baby: Play/Pause/Suivant, minuterie, Playlist, Volume, Mode répétition et aléatoire ([Voir documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Optimisation sur le widget
- Fix sur la gestion des modes sur la Arlo Baby qui ne remontaient pas toujours correctement
- Fix des tooltips sur le widget camera en v4

## 2020-06-4

- Fix urgent dû à un changement d'url chez Arlo effectué dans la nuit du 3 au 4 juin: si vous ne faite pas cette mise à jour le démon ne recevra plus les événements (même s'il est *OK*) et il ne pourra probablement plus du tout se connecter prochainement.

## 2020-05-24

Il est nécessaire de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà *OK*.

- Migration du démon en python3
- Adaptation des permissions: les utilisateurs non-admin peuvent voir le streaming et la bibliothèque des médias.
- Meilleur gestion des options de visibilités des commandes (principalement batterie, mouvement...) sur le widget des caméras
- Ajout du support de la Arlo Video Doorbell
- Optimisations des dépendances.

## 2020-03-30

- Déplacement de la documentation
- Optimisation: ne réinstalle plus ffmpeg si la bonne version a déjà été installée

## 2020-03-21

- Ajout de la vérification de version ffmpeg dans le check des dépendances
- Fixe erreur http 403 au démarrage du démon causé par un changement introduit par Arlo au login

## 2020-02-19

- Fixe un problème de streaming pouvant se produit sur Raspbian Stretch: force l'usage de ffmpeg 4.2.1 car version 4.2.2 semble corrompue (réinstallation des dépendances nécessaires si vous êtes dans le cas)

## 2020-02-14

- Fixe un problème d'affichage sur le mode 'Planning'
- Support des plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) en plus de Mail et Telegram pour l'envoi des notifications

## 2020-02-06

- Ajout de la possibilité d'activé le mode 'Planning'
- Ajout d'une command "Envoyer une capture" sur les caméras permettant d'envoyer une capture depuis un scénario en choisissant la commande de notification à utiliser

## 2020-01-22

- Fixe d'un problème sur les commandes on/off des caméras Arlo Q et Arlo Qs
- Fixe d'un problème de streaming sur Raspbian Buster

## 2019-12-28

- Fixe d'un problème de streaming avec les caméras Arlo Q et Arlo Qs
- Ajout du support des Arlo Pro3
- Ajout du support de la sirène intégrée dans les Arlo Pro3 & Arlo Ultra

## 2019-12-01

- Ajout d'une page santé spécifique listant un aperçu de tous les équipements Arlo
- Amélioration de l'intégration avec l'app mobile Jeedom
- La commande "Dernière image" retourne à présent le chemin relatif vers l'image

## 2019-09-26

- Ajout du streaming live
- suppression des commandes "startStream" et "streamURL"

## 2019-09-17

- Ajout fonction d'enregistrement local
- Mise à jour vers font awesome 5 (pour Jeedom V4)
- Amélioration de la bibliothèque de média et ajout de la lecture vidéo
- Adaptation du widget
- Fixe pour les commandes on/off sur Arlo Baby

## 2019-09-10

- sécurisation des accès aux captures en locals
- Mise à jour de l'API vers le domaine my.arlo.com suite aux changements effectués par Arlo

## 2019-08-02

- Support de Jeedom V4 et PHP 7.3
- Fix: captures non-sauvés si Jeedom ne tourne pas dans /var/www/html/
- Fix: taille par défaut des widgets

## 2019-07-19

- Ajout des commandes mode sur le widget des caméras Arlo Baby et Aro Q
- Ajout des commandes On/Off et statut sur les équipements caméras
- Amélioration de la bibliothèque: ajout d'un bouton pour supprimer une capture et affichage de la capture en taille réelle
- Fixe d'un problème avec le démon si le plugin n'est utilisé qu'avec une caméra Arlo Baby

## 2019-06-26

- Ajout du support des Arlo Go
- Ajout des types génériques sur les commandes pour préparer l'intégration avec l'app mobile de Jeedom

## 2019-06-21

- Ajout du support des Arlo Lights
- Ajout du support des Arlo Doorbells

## 2019-06-10

- Ajout d'une fonctionnalité d'envoi des captures via Telegram ou Mail (les plugins correspondant doivent être installés)
- Fixe taille des captures sur le widget mobile
- Fixe un bug au démarrage du démon si le mot de passe contient certains caractères spéciaux
- Amélioration du process heartbeat
- Optimisation interne du plugin pour préparer l'intégration de nouveaux équipements Arlo

## 2019-05-30

Il est recommandé de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà *OK*.

- Ajout du support des Arlo Q
- Adaption de l'état de chargement sur le widget lorsque la caméra est branchée sur le secteur: affichage d'une prise au lieu d'une batterie
- Fixe des problèmes avec la compatibilité des dépendances
- Fixe un problème de compatibilité des dépendances sur *Debian Jessie*: si vous êtes sous Jessie, vous devez réinstaller les dépendances même si elles sont déjà *OK*
- réduction de la taille du plugin
- Fixe l'image des Arlo Baby

## 2019-05-24

- Amélioration de la stabilité du démon
- Changement du port par défaut vers 55064 pour éviter les conflits avec le plugin *RfPlayer*

## 2019-05-13

- Amélioration du widget camera and ajout de la personnalisation de l'affichage (dans l'onglet *Affichage* de la configuration avancée de l'équipement)
- Empêche la création des équipements inactifs: si vous avez des équipements inactifs dans Arlo, ils ne seront pas créés ni synchronisés avec Jeedom
- Amélioration de la compatibilité si plusieurs station de base existent sur le compte Arlo
- Fixe un crash du démon s'il n'y a pas de station de base (ex: si utilisé avec seulement des caméras Arlo Q)

## 2019-05-12

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
