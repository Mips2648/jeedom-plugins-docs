---
layout: default
title: Changelog Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Beta

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
