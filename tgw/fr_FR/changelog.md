---
layout: default
title: Changelog Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Beta

- Mise à jour de dépendances
- Jeedom v4.4 requis

# Stable

## 2024-06-16

- Mise à jour de dépendances
- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais
- Version Debian 11 minimum requise

## 2024-07-02

> **Attention**
>
> Importante modification sur la gestion des antennes qui nécessite de désinstaller et réinstaller celles-ci. Si vous ne voulez pas être impacté dans l'immédiat, ne mettez pas à jour.
>
> L'installation d'antenne sur **Debian Buster (10) n'est plus supportée**. Pour installer une antenne, il est obligatoire d'avoir une machine sous Debian Bullseye (11) ou Debian Bookworm (12).

## 2024-04-11

- Mise à jour de dépendances

## 2024-03-16

- Ajout d'un redémarrage automatique de l'antenne en option
- Mise à jour de dépendances

## 2024-02-14

- Fix: envoie le message d'antenne hors ligne uniquement si l'équipement est activé
- Ajout du paramètre optionnel pour activer la publication des données avancées

## 2024-02-04

- Ajout du numéro de version installée et de la dernière version disponible dans la page de configuration de l'équipement
- Ajout d'un message si une nouvelle version est disponible
- Ajout d'un bouton pour mettre à jour l'antenne si dernière version > version installée
- Ajout des paramètres optionnels: *Durée du scan* & *Délai entre 2 scans*
- Ajout du paramètre optionnel pour le décodage des adresses MAC privées/aléatoires (voir documentation)

## 2023-12-16

- Fix mineur de la configuration de l'antenne qui pouvait parfois poser problème avec Theengs gateway >1.2 et/ou Debian 11

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
