---
layout: default
title: Changelog
lang: fr_FR
---

# Changelog

[Voir la dernière version](#tocAnchor-1-1-18)

## 2019-05-12

Première version stable

## 2019-05-13

- Amélioration du widget camera and ajout de la personnalisation de l'affichage (dans l'onglet _Affichage_ de la configuration avancée de l'équipement)
- Empêche la création des équipements inactifs: si vous avez des équipements inactifs dans Arlo, ils ne seront pas créés ni synchronisés avec Jeedom
- Amélioration de la compatibilité si plusieurs station de base existent sur le compte Arlo
- Fixe un crash du démon s'il n'y a pas de station de base (ex: si utilisé avec seulement des caméras Arlo Q)

## 2019-05-24

- Amélioration de la stabilité du démon
- Changement du port par défaut vers 55064 pour éviter les conflits avec le plugin _RfPlayer_

## 2019-05-29

Il est recommandé de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà _OK_.

- Ajout du support des Arlo Q
- Adaption de l'état de chargement sur le widget lorsque la caméra est branchée sur le secteur: affichage d'une prise au lieu d'une batterie
- Fixe des problèmes avec la compatibilité des dépendances
- Fixe un problème de compatibilité des dépendances sur _Debian Jessie_: si vous êtes sous Jessie, vous devez réinstaller les dépendances même si elles sont déjà _OK_
- réduction de la taille du plugin

## 2019-05-30

- Fixe l'image des Arlo Baby

## 2019-06-10

- Ajout d'une fonctionnalité d'envoi des captures via Telegram ou Mail (les plugins correspondant doivent être installés)
- Fixe taille des captures sur le widget mobile
- Fixe un bug au démarrage du démon si le mot de passe contient certains caractères spéciaux
- Amélioration du process heartbeat
- Optimisation interne du plugin pour préparer l'intégration de nouveaux équipements Arlo

## 2019-06-21

- Ajout du support des Arlo Lights
- Ajout du support des Arlo Doorbells

## 2019-06-26

- Ajout du support des Arlo Go
- Ajout des généric type sur les commandes pour préparer l'intégration avec l'app mobile de Jeedom

## 2019-07-19

- Ajout des commandes mode sur le widget des caméras Arlo Baby et Aro Q
- Ajout des commandes On/Off et statut sur les équipements caméras
- Amélioration de la bibliothèque: ajout d'un bouton pour supprimer une capture et affichage de la capture en taille réelle
- Fixe d'un problème avec le démon si le plugin n'est utilisé qu'avec une caméra Arlo Baby

## 2019-08-02

- Support de Jeedom V4 et PHP 7.3
- Fix: captures non-sauvés si Jeedom ne tourne pas dans /var/www/html/
- Fix: taille par défaut des widgets

## 2019-09-10

- sécurisation des accès aux captures en locals
- Mise à jour de l'API vers le domaine my.arlo.com suite aux changements effectués par Arlo

## 2019-09-17

- Ajout fonction d'enregistrement local
- Mise à jour vers font awesome 5 (pour Jeedom V4)
- Amélioration de la bibliothèque de média et ajout de la lecture vidéo
- Adaptation du widget
- Fixe pour les commandes on/off sur Arlo Baby

## 2019-09-26

- Ajout du streaming live
- suppression des commandes "startStream" et "streamURL"

## 2019-12-01

- Ajout d'une page santé spécifique listant un aperçu de tous les équipements Arlo
- Amélioration de l'intégration avec l'app mobile Jeedom
- La commande "Dernière image" retourne à présent le chemin relatif vers l'image

## 2019-12-27

- Ajout du support des Arlo Pro3
- Ajout du support de la sirène intégrée dans les Arlo Pro3 & Arlo Ultra

## 2019-12-28

- Fixe d'un problème de streaming avec les caméras Arlo Q et Arlo Qs

## 2020-01-22

- Fixe d'un problème sur les commandes on/off des caméras Arlo Q et Arlo Qs
- Fixe d'un problème de streaming sur Raspbian Buster

## 2020-02-06

- Ajout de la possibilité d'activé le mode 'Planning'
- Ajout d'une command "Envoyer une capture" sur les caméras permettant d'envoyer une capture depuis un scénario en choisissant la commande de notification à utiliser

# Documentation

[Documentation]({{site.baseurl}}/)
