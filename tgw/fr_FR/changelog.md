---
layout: default
title: Changelog Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Beta

n/a

# Stable

## 2023-12-04

- Ajout d'une commande pour forcer le nettoyage des logs distant
- Fix pour gérer `localhost` dans la configuration (équivalent à `127.0.0.1`)
- Ajout de la configuration logrotate pour les logs des antennes distantes
- Ajout du bouton "Arrêter le service" dans la page de configuration de l'équipement (même fonction que la commande **Stop**)
- Ajout de boutons pour voir les logs de l'antenne directement depuis la page de configuration de l'équipement
- Fix sur la récupération de la liste des adaptateurs Bluetooth sur une antenne distante

## 2023-11-06

- Fix de la configuration de l'antenne lors de l'ajout d'un modèle à ignorer dont le nom était déjà dans une partie d'un nom de modèle déjà ignoré
- Fix de la configuration de l'antenne dans le cas où la liste des modèles à ignorer était vide
- Fix un bug d'affichage de la liste des modèle à ignorer

## 2023-11-02

- Ajout d'une option pour ajouter un message dans le centre de message lorsque l'antenne est hors ligne

## 2023-10-30

- Lors d'un changement de configuration, l'antenne sera redémarrée automatiquement si utile et possible et si elle était déjà démarrée

## 2023-10-23

- Mise à jour de dépendances

## 2023-10-20

- Modification de l'installation des antennes pour assurer la compatibilité avec Debian 12. Il n'est pas obligatoire de réinstaller immédiatement après la mise à jour du plugin les antennes existantes mais je vous conseille de prévoir cela lorsque c'est possible pour vous. Il suffit de cliquer sur le bouton "Installer l'antenne" et le plugin se chargera de nettoyer l'installation précédente et réinstaller l'antenne.

## 2023-10-15

- Affichage de la liste des interfaces Bluetooth disponibles (avec leur adresse MAC) dans la page de configuration de l'antenne
- Modification de l'écran de configuration du plugin

## 2023-10-14

- Ajout de la configuration du niveau de log de l'antenne
- Ajout de résumé de la config actuelle de l'antenne (il faudra renvoyer la configuration pour la voir sur l'équipement)
- Récupération automatique des logs du service (chaque minute) sur Jeedom

## 2023-10-13

- Amélioration de la vérification de l'état de l'installation
- Ajout de la possibilité de vérifier manuellement le statut de de l'installation
- Ajout d'une action pour désinstaller le service et l'antenne si nécessaire

## 2023-10-12

- Ajout de l'installation du package système bluez lors de l'installation de l'antenne au cas où celui-ci ne serait pas déjà installé

## 2023-10-11

- Ajout d'une deuxième contrôle pour vérifier si l'installation est toujours en cours
- Vérification de la bonne configuration du plugin lors de la configuration d'une antenne

## 2023-10-10

- Ajout des informations de santés des antennes dans la page santé Jeedom
- Ajout du statut de l'antenne en mode affichage tableau des équipements

## 2023-10-08

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
