---
layout: default
title: Changelog Vaillant multiMATIC
lang: fr_FR
pluginId: vaillantmultimatic
---

# Beta

n/a

# Stable

## 2023-08-21

- Modification interne de la gestion de dépendances

## 2023-06-06

- Mise à jour de librairies internes

## 2023-05-20

- Amélioration des champs password
- Compatibilité Jeedom v4.4
- Ajout des liens vers la documentation en beta

## 2023-01-25

- Mise à jour de librairies internes

## 2022-11-21

- Fix problème de connexion du démon au cloud Vaillant

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-08-17

- Mise à jour de librairies internes

## 2022-03-18

- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2
- Fix installation des dépendances

## 2022-01-25

- Ajout des commandes actions et infos **Vitesse jour** et **Vitesse nuit** sur les équipements de type *Ventilation*
- Ajout d'une commande **Durée mode forcé** sur les équipements de type *Pièce* permettant de définir, par pièce, la durée du mode forcé lors de la prochaine activation de ce mode.

## 2021-12-11

- Simplification de la gestion de la consigne sur les pièces: le plugin adaptera automatiquement la consigne forcée ou la consigne manuelle en fonction du mode en actuel de la pièce
- Amélioration sur le retour d'état en cas d'exécution d'une commande: seul l'équipement impacté est rafraîchi ce qui permet un retour plus rapide
- Ajout d'une commande action **Rafraichir** sur les équipements le supportant

## 2021-11-04

- Correction des types génériques
- Remontée des information de batterie sur les équipements de type *Vanne* et *Thermostat* (voir documentation)

## 2021-10-17

- Fix message d'erreur dans le log en cas d'échec de connexion
- Suppression de la commande *Mode vacances On* qui n'aurait pas dû exister (elle ne faisait aucune action). Il faut utiliser les commandes *Définir dates vacances* et *Définir consigne vacances* pour activer le mode vacances
- Amélioration de la vérification des dépendances

## 2021-09-26

- Ajout de la possibilité de configurer la fréquence de mise à jour

## 2021-09-20

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
