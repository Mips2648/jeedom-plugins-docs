---
layout: default
title: Changelog
lang: fr_FR
---

# Changelog

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
