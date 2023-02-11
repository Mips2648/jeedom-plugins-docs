---
layout: default
title: Changelog Portainer
lang: fr_FR
pluginId: portainer
---

# Beta

- Ajout d'information sur la dernière version disponible de Portainer.io dans la page santé (requis portainer.io >= 2.17) + message dans le centre de messages

# Stable

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-07-15

- Mise à jour de librairies internes

## 2022-02-09

- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2021-08-21

- Ajout d'une commande _Etat_ sur les équipements de types **agent** et **docker**
- Fix un problème de synchronisation lorsqu'un endpoint est hors ligne

## 2021-05-19

- Ajout du support des instances Portainer de type **agent**
- Ajout de commandes info donnant le nombre de containers, de volumes, d'images, de services et de stacks sur les équipements de types **agent** et **docker**

## 2021-02-08

- Ajout d'une commande _URL Publique_ sur l'équipement Docker
- Ajout de l'affichage de l'image utilisée pour le container dans la page de configuration de l'équipement
- Fix un cas d'affichage en doublon des containers sur le panel si plusieurs dockers utilisés (il faut forcer une synchro manuelle pour que la page santé affiche les infos correctes après la mise à jour du plugin)

## 2021-01-06

- Nouvelle présentation de la liste des équipements par catégorie: Docker & Container

## 2020-12-02

- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-09-06

- Fix la commande rafraichir sur un équipement de type _Docker_ ne fonctionnait pas
- Ajout du numéro de version de Portainer dans la page santé
- Ajout d'une option dans la config du plugin pour choisir le mode de synchronisation automatique

## 2020-08-22

- Nouvelle page santé affichant un aperçu de tous les containers et permettant d'effectuer toutes les actions de base (similaire à la page "Containers" sur portainer.io)
- Un nouveau panel (à activer dans la configuration du plugin) reprend les mêmes informations et actions que la page santé.
- Ajout d'une config sur le plugin permettant de définir l'objet parent par défaut qui sera utilisé lors de la création d'un nouveau container, cela vous évitera d'avoir à systématiquement le faire à la main.
- Lors d'une synchronisation, le plugin activera et désactivera automatiquement les équipements Jeedom correspondant aux containers selon qu'ils existent ou pas sur Docker afin de faciliter la gestion de vos containers et d'apporter plus de clarté.
- Lorsqu'un container est détruit et recréé sur Docker, le plugin ne créera plus un nouvel équipement Jeedom mais mettra à jour l'équipement existant s'il le retrouve (le nouveau container doit avoir le même nom et se trouver sur la même instance Docker que l'ancien); cela aussi réduira fortement la maintenance à effectuer côté Jeedom.
- Ajout de commandes infos réseau sur les containers (IP, MAC, gateway)
- Ajout de la liste des ports publiés par le container avec lien vers celui-ci (visible dans la config de l'équipement ainsi que sur la nouvelle page résumé)
- Lors de la suppression d'un équipement jeedom, les logs correspondant aux containers seront également supprimés de votre Jeedom afin de faciliter la maintenance.
- L'équipement de type "Docker" aura une icône différente des équipements de type "Container" pour augmenter la visibilité.

## 2020-03-30

- Déplacement de la documentation

## 2020-03-19

Ajout d'une option pour récupérer la sortie stdout et stderr lors de la synchronisation de l'équipement. Il est nécessaire de retourner sur la page de l'équipement et de sauvegarder la configuration pour activer l'option.

## 2020-03-10

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
