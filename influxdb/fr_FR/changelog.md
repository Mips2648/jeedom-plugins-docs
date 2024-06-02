---
layout: default
title: Changelog InfluxDB
lang: fr_FR
pluginId: influxdb
---

# Beta

## 2024-05-22

- Amélioration des champs password

# Stable

## 2024-04-10

- Modification interne de la gestion de dépendances pour compatibilité Jeedom v4.4
- Jeedom v4.2 minimum requis
- Mise à jour de dépendances

## 2023-02-06

- Ajout d'un nouveau mode d'export: *Historique* qui permet d'exporter chaque nuit tout l'historique de la veille
- Mise à jour de la présentation des commandes pour Jeedom v4.3
- Fix: le cron n'était pas correctement supprimé lors de la désinstallation du plugin

## 2022-02-09

- Ajout d'une nouvelle option pour le choix de la valeur du timestamp envoyé, 3 options possibles: heure d'envoi, heure collecte Jeedom, heure valeur Jeedom (voir documentation)
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2022-01-25

- Refonte du "moteur" du plugin pour effectuer toutes les tâches dans des processus dédiés de façon asynchrone pour ne pas impacter les autres processus sur votre Jeedom ni la navigation dans le dashboard
- Ajout de l'export de l'historique vers InfluxDB (qui bénéficie de la refonte expliquée ci-dessus)
- Ajout d'une commande **Envoyer tout** pour forcer l'envoi de la valeur actuelle de toutes les commandes sélectionnées dans l'équipement
- Ajout de plusieurs commandes info pour connaître l'état de santé du connecteur: **Statut**, **Dernière erreur**... (voir documentation)
- Ajout de l'information de santé des connecteurs dans la page santé générale
- Ajout de commandes compteurs totaux et journalier du nombre de mesures envoyées par équipement
- Ajout de configuration avancée pour définir les timeouts et le nombre de tentatives d'envoi
- Tri des équipements et des commandes dans les écrans de sélection par objet/pièce
- Dorénavant les mesures seront envoyées avec comme timestamp leur date valeur de Jeedom au lieu de l'heure d'envoi
- Fix: Dans la sélection d'équipement par objet il n'était pas possible de chercher/sélectionner les équipements sans objet/pièce

## 2021-10-26

- Fix: le point n'était pas envoyé à influx lorsqu'il avait la valeur *0*

## 2021-10-04

- Adaptation des timeouts de connexions sur influxDb v2

## 2021-08-22

- Refonte complète de la sélection des commandes, interface beaucoup plus réactive même avec un très grand nombre (+15.000) de commandes à afficher:
  - Ajout de la possibilité de recherche et d'ajout de commande individuelle
  - Ajout de la possibilité de recherche et d'ajout de commande par objet/pièce
  - Et refonte de la recherche et d'ajout de commandes via la liste complète des commandes
  - Ajout de zone de rechercher/filtre sur toutes les listes
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2021-02-04

- Ajout du support https pour InfluxDb v1.x
- Ajout du support de InfluxDb v2.x (voir documentation)
- Nouvelle présentation de la liste des objets

## 2020-09-04

- Nettoyage de la mise en page pour la V4
- Optimisation des configs

## 2020-08-15

- Fix: l'envoi en temps réel ne fonctionnait pas après une désactivation et réactivation du plugin (sauf en re-sauvant l'équipement correspondant)

## 2020-08-09

- Ajout de la possibilité de définir un nom de mesure et de clé personnalisé pour chaque commande (à configurer dans la liste des commandes)
- Ajout d'une configuration sur l'équipement permettant de choisir les tags à envoyer avec chaque point
- Ajout des tags (en option) "Nom de la commande" (*CommandName*) et "Type générique de la commande" (*GenericType*)

## 2020-05-03

- Ajout du bouton "Dupliquer" un équipement

## 2020-04-23

- Fix un problème de tri sur la colonne "Envoyé" dans l'écran de configuration des commandes

## 2020-04-16

- Fix un problème de dépendances sur Jeedom Smart

## 2020-04-12

- Ajout de la programmation personnalisée dans le mode "auto-actualisation" (par défaut chaque minute)

## 2020-04-06

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
