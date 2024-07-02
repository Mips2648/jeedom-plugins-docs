---
layout: default
title: Changelog Vaillant multiMATIC
lang: fr_FR
pluginId: vaillantmultimatic
---

> **Attention**
>
> Ce plugin n'est plus compatible avec le système vaillantMULTIMATIC mais uniquement myVaillant. Si vous n'avez pas encore migré sur myVaillant, n'installez pas cette version du plugin.

# Beta

## 2024-07-03

- Mise à jour de dépendances

# Stable

## 2024-06-11

- Modification interne du démon
- Mise à jour de dépendances

## 2024-04-15

- Fix migration des zones si plusieurs zones existent

## 2024-04-08

- Ajout compatibilité avec myVaillant et retire la compatibilité avec vaillantMULTIMATIC: beaucoup de changements, n'oubliez de reconfigurer le plugin. Vos équipements seront migrés pour la plupart, il peut y avoir des cas pour lesquels ce n'est pas encore géré. Voir également [ce sujet sur community](https://community.jeedom.com/t/nouvelle-app-myvaillant/123431)
- Optimisation de la taille des backups
- Ajout des icônes des pièces
- Ajout d'info sur le contrôleur

> **Attention**
>
> Cette version nécessite de réinstaller les dépendances même si elles étaient déjà OK.
> L'installation des dépendances peut prendre du temps selon la puissance de votre machine (jusqu'à 1h) et de votre version de Debian (très rapide sous Debian 12)

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
