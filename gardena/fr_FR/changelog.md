---
layout: default
title: Changelog Gardena-Husqvarna
lang: fr_FR
pluginId: gardena
---

# Beta

n/a

# Stable

## 2024-06-11

- Importante réécriture du code du démon: il devrait être encore **plus stable**, **plus rapide** et consommer un peu **moins de ressources** en moyenne
- Ajout de commande info & action **Durée par défaut** sur tous les équipements (Gardena & Husqvarna) qui ont des commandes actions permettant de spécifier une durée: précédemment la durée par défaut était codé en dur si non précisée lors de l'utilisation d'une de ces commandes, à présent le plugin prendra la valeur de cette nouvelle commande **Durée par défaut**
- Pour les tondeuses *Husqvarna*: ajout de commandes action **Démarrage zone xxx** (une par zone existante)
- Pour les tondeuses *Husqvarna*: ajout **gestion des zones d'exclusions**. Par zone, un switch "actif/inactif" sera créé, donc 3 commandes, une info binaire et 2 actions (on/off)
- Ajout d'une tâche de rafraîchissement automatique des tondeuses *Husqvarna* supportant la fonction **zones d'exclusions**
- Mise à jour de dépendances interne
- Cette version **nécessite la mise à jour des dépendances**, en principe cela sera fait automatiquement lors de l'update

## 2024-04-08

- Fix sur la vérification des dépendances

## 2024-03-28

- Petite modification pour garder la compatibilité Debian 10 => Planifiez une migration vers Debian 11

## 2024-02-26

- Amélioration: distinction entre les 2 modèles de *Smart Sensor*: l'image & la liste des commandes créés sont adaptées en fonction du modèle.
- Optimisation de la taille des backups

## 2023-10-02

- Ajout des descriptions pour des nouveaux codes d'erreur pour les robots Husqvarna

## 2023-08-21

- Amélioration du log du démon
- Fix les commandes **Démarrage mode manuel** & **Retour à la base** pour les robots Husqvarna: la durée reçue en paramètre de la commande était interprétée en heures au lieu de minutes
- Modification interne de la gestion de dépendances

## 2023-06-30

- Fix un crash du démon avec les tondeuses Husqvarna sans module GPS

## 2023-05-24

- Modification sur la gestion des dépendances pour éviter des conflits potentiels avec d'autres plugins

## 2023-04-05

- Ajout des commandes infos statistiques pour les robots Husqvarna (voir documentation pour la liste)
- Fix mineur: évite un double re-démarrage du démon dans certains cas lorsque la connexion socket a été interrompue

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-06-30

- Fix un crash possible du démon lors du renouvellement de la connexion

## 2022-06-11

- Changement sur la méthode d'authentification dû à un changement effectué par Gardena / Husqvarna, il est nécessaire de refaire la configuration du plugin: l'email et le mot de passe ne sont plus nécessaire par contre l'application secret est requis à présent.

## 2022-05-22

- Fix: commandes action/messages pour les robots Husqvarna ne fonctionnaient pas.
- Fix: la commande info **Durée restante** pour les robots Husqvarna ne se mettait jamais à jour.

## 2022-04-30

- Mise à jour des infos pour les robots Husqvarna en temps réel et par conséquent suppression du cron de mise à jour qui n'est plus nécessaire. Il n'y a donc plus de limite sur le nombre de mise à jour.
- Ajout des commandes suivantes pour les robots Husqvarna:
  - **Hauteur de coupe** permettant de connaître et définir la hauteur de coupe
  - **Phare** permettant de connaître et définir le mode d'allumage des phare
  - **Heure dernier rapport** et **Heure prochain départ**
  - **Restriction programmation** donnant la raison de l'exception sur la programmation normale
  - **Positions** contenant l'historique des 50 dernières positions du robot (les commandes **Dernière position**, **Latitude** et **Longitude** existent toujours et indiquent la dernière position connue)
- Ajout d'un widget pour l'affichage de l'historique des positions sur une carte à appliquer sur la commande **Positions** (voir documentation) (contribution de @t0urista)

## 2022-03-12

- Fix vérification des dépendances

## 2022-02-11

- Changements mineurs de présentation des écrans de configuration

## 2021-10-04

- Ajout de 3 commandes donnant la position GPS sur la tondeuse Husqvarna: **Latitude**, **Longitude** et **Position**
- Mise à jour des dépendances: cette mise à jour nécessite de réinstaller les dépendances: cela devrait être fait automatiquement lors de la mise à jour du plugin.

## 2021-08-22

- Ajout d'une commande **Durée restante** sur les Gardena Smart Mower
- Ajout de la mise à jour de l'info **Durée restante** pour les Husqvarna Automower (calculé en interne par le plugin) seulement lors de l'utilisation des commandes **Démarrage mode manuel** ou **Retour à la base**
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2021-07-12

- Ajout d'un cron configurable pour l'actualisation des tondeuses Husqvarna dans la config du plugin.
- Ajout de la possibilité de choisir le temps de pause (en minute) avec la commande *Pause programmation*. Pour avoir cette option il faut supprimer la commande existante sur l'équipement (ne pas supprimer l'équipement), sauver et ensuite utiliser la fonction *Créer les commandes manquantes* pour que la commande soit recréé avec la bonne configuration. Il faudra adapter les scénarios avec la nouvelle commande.
- Déplacement du plugin dans la catégorie "Nature".

## 2021-03-14

- Fix la version d'une dépendance dû à un bug dans la dernière version de celle-ci (voir <https://github.com/websocket-client/websocket-client/commit/3112b7d75b1e5d65cb8fdfca7801606649044ed1#commitcomment-48226116>). Si vous avez installé le plugin et ses dépendances après le 3 mars, vous devez probablement relancer l'installation des dépendances; si tout fonctionne bien pour vous cela n'est pas nécessaire.
- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-10-24

- Fix un problème avec les Smart Irrigation Control qui empêchait le démon de démarrer correctement
- Augmentation de la limite maximum de durée (de 1h à 6h) pour le démarrage manuel des Tondeuses Gardena.

## 2020-08-29

- Ajout d'une commande **Dernière erreur** sur les Gardena Smart Socket, Water Control et Irrigation Control: Veuillez utiliser le bouton *Créer les commandes manquantes* sur la page de l'équipement pour la rajouter
- Ajout de l'info *Dernière erreur* dans la page santé
- Fix un problème de démarrage du démon avec les tondeuses Husqvarna Automower

## 2020-08-27

- Ajout d'une commande **Dernière erreur** sur les Gardena Smart Mower
- Suppression de la commande "Durée restante" sur les Gardena Smart Mower car l'information n'est pas disponible
- Fix un problème sur la commande "Activité" des Gardena Smart Mower qui ne se mettait pas à jour
- Fix un problème de lien d'image incorrecte dans la page de configuration des Gardena Smart Mower

## 2020-08-22

- Amélioration du processus de reconnexion en cas de coupure réseau ou de déconnexion de l'API par Gardena
- Nettoyage de la mise en page pour la V4
- Fix un problème de dépendance sur certaines installations

## 2020-08-16

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
