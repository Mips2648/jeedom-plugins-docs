---
layout: default
title: Changelog NotificationQueue
lang: fr_FR
pluginId: notificationqueue
---

# Beta

- Dorénavant les messages expirés seront supprimés de la queue au fur et à mesure (et pas uniquement si une condition est vrai).
- Mise à jour de la présentation des commandes pour Jeedom v4.3

# Stable

## 2020-11-29

- Ajout de la gestion de la génération du texte aléatoire (même système que dans les interactions, voir documentation)
- Ajout de la gestion du texte conditionnel via un opérateur ternaire (voir documentation)
- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-09-14

- Ajout d'une gestion de (non-)répétition servant à supprimer une notification en double déjà envoyée lors des x dernières minutes

## 2020-06-16

- Ajout d'une option pour configurer un délai pendant lequel la notification sera gardée dans la file même si la condition est vrai
- Ajout d'une commande pour déclencher manuellement la vérification de la condition et l'envoi des messages si celle-ci est valide
- Ajout d'une commande pour forcer l'envoi immédiat de tous les messages sans tenir compte de la condition (mais en tenant compte du délai d'envoi)

## 2020-05-03

- Ajout du bouton "Dupliquer" un équipement

## 2020-03-30

- Déplacement de la documentation

## 2020-03-07

- Ajout de la gestion des déclenchements sur les conditions: la file sera traitée dès que la condition sera vrai.

## 2020-02-22

- Ajout d'une option pour calculer le temps de pause dynamiquement en fonction de la longueur du message (pour les notifications TTS)
- Ajout de la possibilité de configurer un délai d'expiration des messages par file d'attente

## 2020-01-11

- Ajout d'une option pour gérer les notifications en doublon

## 2020-01-04

- Ajout d'une commande pour vider la file
- Ajout d'une commande info pour connaître le nombre de message dans la file
- Ajout du support du ask pour les notifications

## 2020-01-01

- Ajout d'un délai configurable entre chaque évaluation de la condition d'une file (appliqué entre chaque message de la file)
- Ajout de la gestion de multiple commande de notification (séparez les commandes par && dans la configuration)

## 2019-10-05

- Réécriture du plugin pour avoir une file par équipement au lieu de une par commande. La migration de vos anciens équipements est effectuée lors de la mise à jour mais vous devrez corriger vos scénarios.
- Amélioration du comportement pour les notifications TTS, vous devriez inclure le statut TTS dans la condition pour que cela fonctionne correctement.

## 2019-09-18

- Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
