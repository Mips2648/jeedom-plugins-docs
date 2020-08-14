---
layout: default
title: Changelog Arlo
lang: fr_FR
pluginId: arlo
---

# 2020-08-xx

- Force la configuration de la clé API en mode localhost

# 2020-08-02

- Fix les fonctionnalités de streaming et d'enregistrements locaux cassés suite à un changent d'Arlo (leur nouveau système semble plus lent qu'avant)
- Fix urgent dû à un changement d'url chez Arlo effectué dans la nuit du 31 juillet au 01 août: si vous ne faite pas cette mise à jour le démon ne pourra plus se connecter.

# 2020-07-08

- Fix démon si seulement une vidéo doorbell existe (sans base)

# 2020-06-18

- Ajout des commandes modes sur le widget pour la Video Doorbell (quand elle n'est pas liée à une base)
- Ajout des commandes info _IP_, _Luminosité_, _Température_, _Humidité_ et _Qualité de l'air_ sur la Arlo Baby
- Ajout de la gestion de la veilleuse de la Arlo Baby: on/off, minuterie, luminosité, couleur, température des couleurs et mode (voir documentation)
- Ajout de la gestion de la berceuse de la Arlo Baby: Play/Pause/Suivant, minuterie, Playlist, Volume, Mode répétition et aléatoire (voir documentation)
- Optimisation sur le widget
- Fix sur la gestion des modes sur la Arlo Baby qui ne remontaient pas toujours correctement
- Fix des tooltips sur le widget camera en v4

# 2020-06-4

- Fix urgent dû à un changement d'url chez Arlo effectué dans la nuit du 3 au 4 juin: si vous ne faite pas cette mise à jour le démon ne recevra plus les événements (même s'il est _OK_) et il ne pourra probablement plus du tout se connecter prochainement.

# 2020-05-24

Il est nécessaire de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà _OK_.

- Migration du démon en python3
- Adaptation des permissions: les utilisateurs non-admin peuvent voir le streaming et la bibliothèque des médias.
- Meilleur gestion des options de visibilités des commandes (principalement batterie, mouvement...) sur le widget des caméras
- Ajout du support de la Arlo Video Doorbell
- Optimisations des dépendances.

# 2020-03-30

- Déplacement de la documentation
- Optimisation: ne réinstalle plus ffmpeg si la bonne version a déjà été installée

# 2020-03-21

- Ajout de la vérification de version ffmpeg dans le check des dépendances
- Fixe erreur http 403 au démarrage du démon causé par un changement introduit par Arlo au login

# 2020-02-19

- Fixe un problème de streaming pouvant se produit sur Raspbian Stretch: force l'usage de ffmpeg 4.2.1 car version 4.2.2 semble corrompue (réinstallation des dépendances nécessaires si vous êtes dans le cas)

# 2020-02-14

- Fixe un problème d'affichage sur le mode 'Planning'
- Support des plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) en plus de Mail et Telegram pour l'envoi des notifications

# 2020-02-06

- Ajout de la possibilité d'activé le mode 'Planning'
- Ajout d'une command "Envoyer une capture" sur les caméras permettant d'envoyer une capture depuis un scénario en choisissant la commande de notification à utiliser

# 2020-01-22

- Fixe d'un problème sur les commandes on/off des caméras Arlo Q et Arlo Qs
- Fixe d'un problème de streaming sur Raspbian Buster

# 2019-12-28

- Fixe d'un problème de streaming avec les caméras Arlo Q et Arlo Qs
- Ajout du support des Arlo Pro3
- Ajout du support de la sirène intégrée dans les Arlo Pro3 & Arlo Ultra

# 2019-12-01

- Ajout d'une page santé spécifique listant un aperçu de tous les équipements Arlo
- Amélioration de l'intégration avec l'app mobile Jeedom
- La commande "Dernière image" retourne à présent le chemin relatif vers l'image

# 2019-09-26

- Ajout du streaming live
- suppression des commandes "startStream" et "streamURL"

# 2019-09-17

- Ajout fonction d'enregistrement local
- Mise à jour vers font awesome 5 (pour Jeedom V4)
- Amélioration de la bibliothèque de média et ajout de la lecture vidéo
- Adaptation du widget
- Fixe pour les commandes on/off sur Arlo Baby

# 2019-09-10

- sécurisation des accès aux captures en locals
- Mise à jour de l'API vers le domaine my.arlo.com suite aux changements effectués par Arlo

# 2019-08-02

- Support de Jeedom V4 et PHP 7.3
- Fix: captures non-sauvés si Jeedom ne tourne pas dans /var/www/html/
- Fix: taille par défaut des widgets

# 2019-07-19

- Ajout des commandes mode sur le widget des caméras Arlo Baby et Aro Q
- Ajout des commandes On/Off et statut sur les équipements caméras
- Amélioration de la bibliothèque: ajout d'un bouton pour supprimer une capture et affichage de la capture en taille réelle
- Fixe d'un problème avec le démon si le plugin n'est utilisé qu'avec une caméra Arlo Baby

# 2019-06-26

- Ajout du support des Arlo Go
- Ajout des généric type sur les commandes pour préparer l'intégration avec l'app mobile de Jeedom

# 2019-06-21

- Ajout du support des Arlo Lights
- Ajout du support des Arlo Doorbells

# 2019-06-10

- Ajout d'une fonctionnalité d'envoi des captures via Telegram ou Mail (les plugins correspondant doivent être installés)
- Fixe taille des captures sur le widget mobile
- Fixe un bug au démarrage du démon si le mot de passe contient certains caractères spéciaux
- Amélioration du process heartbeat
- Optimisation interne du plugin pour préparer l'intégration de nouveaux équipements Arlo

# 2019-05-30

Il est recommandé de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà _OK_.

- Ajout du support des Arlo Q
- Adaption de l'état de chargement sur le widget lorsque la caméra est branchée sur le secteur: affichage d'une prise au lieu d'une batterie
- Fixe des problèmes avec la compatibilité des dépendances
- Fixe un problème de compatibilité des dépendances sur _Debian Jessie_: si vous êtes sous Jessie, vous devez réinstaller les dépendances même si elles sont déjà _OK_
- réduction de la taille du plugin
- Fixe l'image des Arlo Baby

# 2019-05-24

- Amélioration de la stabilité du démon
- Changement du port par défaut vers 55064 pour éviter les conflits avec le plugin _RfPlayer_

# 2019-05-13

- Amélioration du widget camera and ajout de la personnalisation de l'affichage (dans l'onglet _Affichage_ de la configuration avancée de l'équipement)
- Empêche la création des équipements inactifs: si vous avez des équipements inactifs dans Arlo, ils ne seront pas créés ni synchronisés avec Jeedom
- Amélioration de la compatibilité si plusieurs station de base existent sur le compte Arlo
- Fixe un crash du démon s'il n'y a pas de station de base (ex: si utilisé avec seulement des caméras Arlo Q)

# 2019-05-12

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
