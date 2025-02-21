---
layout: default
title: Changelog SmartMeter P1
lang: fr_FR
pluginId: SmartMeterP1
---

# Beta

n/a

# Stable

## 2025-02-22

- Correction du décodage pour compatibilité avec les compteurs Suisse
- Ajout des codes 1.6.0 (maximum de la puissance moyenne prélevée sur un quart d’heure depuis le début du mois) & 2.6.0 (maximum de la puissance moyenne injectée sur un quart d’heure depuis le début du mois), cette dernière info ne sera pas présente pour tout le monde, cela dépend si le compteur la fourni ou pas.
- Migration du démon PHP vers un démon Python pour améliorer la performance
- Ajout d'un heartbeat interne au démon
- Mise à jour de dépendances
- Mise à jour de l'icône

## 2024-10-17

- Mise à jour de dépendances
- Jeedom v4.4 requis

## 2024-08-21

- Mise à jour de dépendances
- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais

## 2024-04-10

- Mise à jour de dépendances

## 2024-03-03

- Ajout d'une commande **Statut** donnant l'état de la connexion avec le module

## 2024-03-01

- Suppression du cron du plugin lors de la désinstallation

## 2024-02-26

- Ajout des puissances prélevées et injectées par phase
- Permet la modification des sous-types des commandes pour permettre de configurer une "formule de calcul" (nécessite core >=4.4)

## 2024-02-01

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
