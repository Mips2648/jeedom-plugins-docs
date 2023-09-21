---
layout: default
title: Changelog iRobot
lang: fr_FR
pluginId: kroomba
---

# Beta

n/a

# Stable

## 2023-08-30

- Mise à jour des commandes régions/pièces dans le cas où les identifiants de cartes sont modifiés par iRobot. Lorsque cela se produit il faut relancer un nettoyage manuel de la pièce pour que le plugin mette à jour la commande.

## 2023-08-21

- Ajout de la gestion du nettoyage par pièce
- Ajout des commandes infos suivantes sur les Braava: **Type de lingette**, **Couvercle ouvert**, **Réservoir présent**, **Niveau réservoir**
- Ajout des commandes pour configurer les préférences de nettoyage (sur les modèles compatibles, testé sur Braava jet m6):
  - **Quantité de liquide** par défaut: *Eco*, *Standard*, *Ultra*
  - **Chevauchement** du chemin de lavage par défaut: *Un peu*, *Plus*, *Beaucoup*
- Amélioration: le démon ne se connectera plus aux robots dont l'équipement correspondant est désactivé dans Jeedom
- Nettoyage de code et suppression de dépendances inutiles

## 2023-05-20

- Compatibilité Jeedom v4.4
- Fix crash démon si le nom du robot contenait un caractère spécial

## 2023-03-26

- Fix & optimisations mineures

## 2022-11-21

> **Important**
>
> Il est nécessaire de relancer l'installation des dépendances après l'installation de cette mise à jour même si elles sont déjà *OK*.
>
> Après l'installation de cette nouvelle version, il faudra refaire une découverte de vos robots (voir documentation) et un nouvel équipement sera créé pour chaque robot.
> Utilisez le nouvel outils présent sur Jeedom v4.3 pour migrer vos commandes ou faites le manuellement ensuite les anciens équipements peuvent être supprimés, il ne serviront plus.

- Reprise du plugin par @Mips et refonte complète du plugin, voir <https://community.jeedom.com/t/nouvelle-version-du-plugin-roomba-cherche-testeurs-volontaires/86743> pour plus de détails
- Jeedom v4.2 minimum requis
- Plugin *MQTT Manager* (MQTT2) requis
- Implémentation d'un démon pour garder la connexion avec le robot
- Communication via MQTT entre le démon et Jeedom
- Découverte et configuration des robots automatiques (accès cloud iRobot requis pendant la configuration)
- Mise à jour de la présentation des commandes pour Jeedom v4.3
- Ajout d'un bouton pour recréer les commandes manquantes selon la configuration (fait automatiquement lors de l'update du plugin)
- Ajout de la commande **Vidange** (ne fonctionne que sur les modèles compatibles)
- Ajout de la commande info **Réservoir** (ne fonctionne que sur les modèles laveurs compatibles)
- Ajout des commandes info: **Nombre de tâches de nettoyage**, **Nombre de tâches réussies**, **Nombre de tâches échouées**, **Nombre de vidages automatiques**, **Nombre de détections de saleté**, **Nombre de blocages**, **Nombre de tâches annulées**
- Ajout des commandes info **Erreur** et **Sécurité enfant**

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
