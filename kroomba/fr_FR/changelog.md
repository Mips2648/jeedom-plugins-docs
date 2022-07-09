---
layout: default
title: Changelog Design Image
lang: fr_FR
pluginId: kroomba
---

# Beta

## 2022-07-09

- Ajout des commandes info: **Nombre de tâches de nettoyage**, **Nombre de tâches réussies**, **Nombre de tâches échouées**, **Nombre de vidages automatiques**, **Nombre de détections de saleté**, **Nombre de blocages**

## 2022-07-05

- Correction page santé
- Ajout commande info **Erreur**
- Ajout d'un bouton pour recréer les commandes manquantes selon la configuration (fait automatiquement lors de l'update du plugin)
- Gestion de tous les états avec widget par défaut (excepté encore *Emptying* et *New Mission*)
- Fix modal de découverte des robots

## 2022-06-29

- Reprise du plugin par @Mips et refonte complète du plugin, voir <https://community.jeedom.com/t/nouvelle-version-du-plugin-roomba-cherche-testeurs-volontaires/86743> pour plus de détails
- Jeedom v4.2 minimum requis
- Plugin "MQTT Manager" (MQTT2) requis
- Implémentation d'un démon pour garder la connexion avec le robot
- Communication via MQTT entre le démon et Jeedom
- Découverte et configuration des robots automatiques (accès cloud iRobot requis pendant la configuration)

# Stable

## 2020-05-24 by @vedrine

- Nouvelles icônes pour les états par @kiboost.

## 2020-05-23 by @vedrine

- Nouveaux états hmMidMsn (Recharge nécessaire) et hmPostMsn (tâche achevée)

## 2019-09-21 by @vedrine

- Passage à Python 3
- Correction d'un problème dans les traductions
- Nouveau script bash d'installation des dépendances
- Templates pour Jeedom V4
- Compatibilité Jeedom V3 et V4

## 2019-08-13 by @vedrine

- Compatibilité php 7.3 et font awesome 5
- Version minimum de Jeedom requise : 3.3

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
