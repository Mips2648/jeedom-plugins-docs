---
layout: default
title: Changelog MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Beta

## 2023-10-15

- Fix pour le type *cover* (les volets par exemple): création des commandes open/close/stop même si pas de retour d'état
- Modification de la visibilité et du template par défaut lors de la création sur certaines commandes

## 2023-10-14

- Prise en charge du type *update* qui permet d'avoir des commandes infos **Version installée**, **Dernière version** et une commande action **Firmware Update** pour lancer la mise à jour du matériel pour les appareils supportant cette fonctionnalité (par exemple OMG)

## 2023-10-12

- Prise en charge des *device_tracker* pour compatibilité avec les "Tile" qui remonte un peu différemment que les Nuts
- Ajout de filtres dans la fenêtre d'ajout manuel d'équipement pour permettre la recherche

## 2023-10-10

- Ajout de la possibilité d'avoir des images personnalisées sur les équipements (une image par modèle)

## 2023-10-07

- Ajout de l'identifiant, fabricant et modèle de l'équipement dans la page config
- Ajout d'une nouvelle fonction listant tous les équipements découverts mais pas encore créés avec possibilité de les ajouter un par un au choix sans devoir activer la création automatique
- Ajout d'une notification sur la page des équipements lorsque des nouveaux équipements ont été découvert
- Fix un bug sur le parsing de certains devices

## 2023-09-30

- Ajout d'une configuration pour désactiver la création automatique des équipements découverts
- Ajout du type *alarm_control_panel*

## 2023-09-11

- *MQTT Manager (mqtt2)* n'est plus un pré-requis (il faut avoir un broker mqtt installé, soit par vos soins, soit via tout autre plugin Jeedom). Si *MQTT Manager (mqtt2)* est installé, la configuration au broker est semi-automatique.
- Implémentation d'un client MQTT dédié au plugin afin d'améliorer les performances et la flexibilité; le plugin possède un démon à présent
- Ajout du type *cover*
- Modification & amélioration de la page de configuration du plugin

## 2023-09-07

- Fix sur light/brightness

# Stable

n/a

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
