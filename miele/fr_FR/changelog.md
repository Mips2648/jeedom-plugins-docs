---
layout: default
title: Changelog Miele
lang: fr_FR
pluginId: miele
---

# Beta

- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais

# Stable

## 2024-06-11

- Ajout de commandes infos température additionnelles pour les équipements ayant plus d'une sonde de température (ex: les appareils combinés)

## 2024-04-10

- Modification interne de la gestion de dépendances pour compatibilité Jeedom v4.4
- Mise à jour de dépendances

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-03-10

- Fix d'un crash  lors de la synchronisation des informations de consommation suite à un changement de comportement de l'API Miele@Home

## 2022-02-22

- Ajout des commandes **Consommation eau** et **Consommation énergie** sur les appareils supportant cette fonctionnalité (voir documentation), il faut créer les commandes manquantes sur l'équipement si vous souhaiter avoir ces nouvelles commandes

## 2021-12-20

- Ajout des commandes **Définir niveau de ventilation** et **Définir couleurs** sur les Hôtes
- Ajout des commandes **Allumer** et **Eteindre** sur les appareils supportant cette fonctionnalité (il faut créer les commandes manquantes sur l'équipement si vous souhaiter avoir ces nouvelles commandes)
- Fix dû à un changement de comportement de l'API Miele@Home

## 2021-11-13

- Mise à jour de l'API Miele@Home
- Ajout d'une commande info **Nom du programme** qui retournera le nom du programme en cours sur les appareils supportant cette fonctionnalité (il faut créer les commandes manquantes sur l'équipement si vous souhaiter avoir cette nouvelle commande)
- Changement du mode d'authentification pour plus de sécurité
- Nouvelle présentation de la liste des objets dans la configuration de l'équipement
- Amélioration de la mise en page de la configuration de l'équipement et des commandes
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2

## 2020-08-24

- Nettoyage de la mise en page pour la V4

## 2020-05-04

- Fix un problème de dépendances sur Jeedom Smart

## 2020-04-13

- Ajout du statut de l'authentification dans la configuration du plugin ainsi que la gestion de la connexion
- Ajout du résumé de santé dans la page santé de Jeedom
- Ajout d'une page santé spécifique listant un aperçu de tous les équipements

## 2020-04-06

- Ajout des icônes par défaut sur certaines commandes actions
- Affichage des unités dans l'écran des commandes
- Ajout possibilité d'inverser les valeurs binaires

## 2020-04-03

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
