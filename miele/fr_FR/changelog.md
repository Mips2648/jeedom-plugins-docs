---
layout: default
title: Changelog Miele
lang: fr_FR
pluginId: miele
---

# Beta

> **Attention**
>
> Refonte importante du plugin, toute l'implémentation de l'API Miele@Home a été réécrite en Python et le plugin utilise à présent un démon au lieu de cron. Il sera nécessaire de refaire le lien entre Jeedom et Miele@Home et de vous identifier à nouveau via la page de configuration du plugin après cette mise à jour.

- Refonte du plugin : implémentation d'un démon Python pour se connecter à l'API Miele@Home et suppression des crons
- Retour d'état en temps réel (précédemment il fallait attendre le cron minute)
- Ajout d'une commande action **Mode** sur les appareils compatibles (réfrigérateur, congélateur, armoire à vin)
- Ajout d'une commande action **Démarrer programme** sur les appareils compatibles (machine à laver, sèche-linge, lave-vaisselle, four, machine à café, robot aspirateur)
- Ajout d'une commande **Etat** binaire qui donne l'information si l'appareil est allumé ou non. Les commandes **On** et **Off** y sont liés
- Renommage de l'ancienne commande **Etat** en **Description statut** pour éviter le conflit avec la nouvelle commande et mieux correspondre à son contenu réel
- Adaptation des commandes **Temps restant**, **Démarrage dans** et **Temps écoulé**, voir documentation
- Mise à jour des dépendances
- Python 3.11 requis, il sera installé automatiquement si nécessaire.

# Stable

## 2025-04-18

- Amélioration pour ne créer, si possible, que les commandes pertinentes pour le type d'équipement
- Mise à jour des dépendances
- Mise à jour de l'icône
- Jeedom v4.4 requis

## 2024-09-16

- Traduction du plugin en anglais, allemand, espagnol, italien, portugais
- Version Debian 11 minimum requise

## 2024-06-11

- Ajout de commandes infos température additionnelles pour les équipements ayant plus d'une sonde de température (ex : les appareils combinés)

## 2024-04-10

- Modification interne de la gestion des dépendances pour compatibilité Jeedom v4.4
- Mise à jour des dépendances

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-03-10

- Correction d'un crash lors de la synchronisation des informations de consommation suite à un changement de comportement de l'API Miele@Home

## 2022-02-22

- Ajout des commandes **Consommation eau** et **Consommation énergie** sur les appareils supportant cette fonctionnalité (voir documentation), il faut créer les commandes manquantes sur l'équipement si vous souhaitez avoir ces nouvelles commandes

## 2021-12-20

- Ajout des commandes **Définir niveau de ventilation** et **Définir couleurs** sur les hôtes
- Ajout des commandes **Allumer** et **Éteindre** sur les appareils supportant cette fonctionnalité (il faut créer les commandes manquantes sur l'équipement si vous souhaitez avoir ces nouvelles commandes)
- Correction due à un changement de comportement de l'API Miele@Home

## 2021-11-13

- Mise à jour de l'API Miele@Home
- Ajout d'une commande info **Nom du programme** qui retournera le nom du programme en cours sur les appareils supportant cette fonctionnalité (il faut créer les commandes manquantes sur l'équipement si vous souhaitez avoir cette nouvelle commande)
- Changement du mode d'authentification pour plus de sécurité
- Nouvelle présentation de la liste des objets dans la configuration de l'équipement
- Amélioration de la mise en page de la configuration de l'équipement et des commandes
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2020-08-24

- Nettoyage de la mise en page pour la V4

## 2020-05-04

- Correction d'un problème de dépendances sur Jeedom Smart

## 2020-04-13

- Ajout du statut de l'authentification dans la configuration du plugin ainsi que la gestion de la connexion
- Ajout du résumé de santé dans la page santé de Jeedom
- Ajout d'une page santé spécifique listant un aperçu de tous les équipements

## 2020-04-06

- Ajout des icônes par défaut sur certaines commandes actions
- Affichage des unités dans l'écran des commandes
- Ajout de la possibilité d'inverser les valeurs binaires

## 2020-04-03

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
