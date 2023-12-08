---
layout: default
title: Changelog MQTT Discovery
lang: fr_FR
pluginId: mqttdiscovery
---

# Beta

n/a

# Stable

## 2023-12-09

- Réduction des logs inutiles
- Ajout d'un bouton pour supprimer définitivement un équipement découvert, y compris sur le broker MQTT
- Fix: certaines commandes "off" ne fonctionnaient pas correctement car leur configuration était incorrectement sauvegardée (cela dépendait du payload de la commande)
- Ajout des images de différents modèles d'équipements
- Ajout de la configuration par défaut du type générique sur la commande (lorsque c'est possible)
- Ajout de la remontée du statut de la batterie de l'équipement dans le core (lorsque c'est possible)
- Ajout d'icône par défaut sur les commandes en fonction du type générique
- Ajout de la possibilité de gestion de présence sur les devices Bluetooth non décodés (et donc qui ne remontent pas dans les devices découverts)
- Ajout possibilité de définir un nom de modèle personnalisé et par conséquent d'une image personnalisé par équipement (après avoir modifié le nom du modèle de l'équipement)
- Fix: mise à jour des commandes info température des équipements Bluetooth lorsque la commande avait été découverte par OMG (si découverte par Theengs Gateway cela fonctionnait correctement)

## 2023-11-07

- Prise en charge du type *lock* pour la gestion des serrures (ex: Nuki)
- Ajout d'une image par défaut pour la Nuki Smart Lock 3.0 Pro
- Filtre les types de fichiers acceptés par le plugin lors de la sélection d'une image à envoyer pour un modèle d'équipement
- Fix sur le bouton "Configuration" dans l'écran des appareils découverts

## 2023-11-02

- Amélioration sur le parsing des configurations pour certains équipements (prise en charge du "base topic" s'il est déclaré)
- Changement sur la gestion de la présence: les commandes **rssi** seront forcées à -200 si plus de mise à jour de la commande (après le délai configuré)

## 2023-10-22

- Configuration du min & max pour les commandes **rssi**

## 2023-10-19

- Réorganisation des logs
- Fix mineur sur le process de création automatique lors de la découverte

## 2023-10-18

- Ajout d'une commande **rssi** par gateway fournissant l'info. La commande **rssi** principale garde la comportement actuel: c'est la dernière valeur reçue toute antenne confondue et la gestion de présence se base sur celle-ci
- Réorganisation interne du code qui devrait être complètement transparente

## 2023-10-16

- Ajout d'un bouton dans la page de configuration de l'équipement pour voir la configuration brute de celui-ci ainsi que d'un bouton pour copier facilement celle-ci afin de me la partager si nécessaire
- Réorganisation des données du plugin: en principe les images personnalisées ont été déplacées à l'endroit voulu, si ce n'est pas le cas, veuillez créer un post sur Community

## 2023-10-15

- Changement de comportement pour le type *cover* (les volets par exemple): création des commandes open/close/stop même si pas de retour d'état
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

## 2023-07-20

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
