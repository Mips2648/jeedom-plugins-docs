---
layout: default
title: Changelog Gotify
lang: fr_FR
pluginId: gotify
---

# Beta

n/a

# Stable

## 2024-10-17

- Mise à jour de dépendances
- Jeedom v4.4 requis

## 2024-09-16

- Suppression de l'option pour ne pas vérifier le certificat hôte de Gotify, cette option n'était plus active depuis presque 4 ans
- Version Debian 11 minimum requise

## 2024-08-19

- Mise à jour de dépendances
- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais

## 2023-10-09

- Encryption des données de configuration sensibles (token) en base de données

## 2023-05-20

- Mise à jour de la page de configuration des équipements
- Amélioration des champs password
- Ajout des liens vers la documentation en beta

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-09-19

- Le token client se configure à présent sur l'équipement et plus dans la configuration globale du plugin afin de permettre de créer des équipements (apps sous Gotify) et des clients sous des utilisateurs Gotify différents => vérifiez votre configuration.

## 2022-01-05

- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2020-11-28

- Nouvelle présentation de la liste des objets
- Nettoyage de la mise en page pour la V4

## 2020-06-16

- Fix: le message peut être vide si un fichier a été joint

## 2020-05-03

- Optimisations interne
- Ajout du bouton "Dupliquer" un équipement

## 2020-02-12

- Vérification sur message vide avant l'envoi à Gotify

## 2020-01-19

- Ajout de la possibilité de créer plusieurs commandes d'envoi par équipement
- Ajout d'une configuration sur chaque commande pour choisir la priorité de l'envoi
- Ajout d'une configuration sur chaque commande pour choisir le format du message
- Ajout d'une commande pour supprimer tous les messages sur le serveur (il faut avoir configuré un token client)

## 2019-09-28

- Ajout d'une option pour la vérification du nom d'hôte du certificat de Gotify
- Ajout du support des notifications avec images

## 2019-08-02

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
