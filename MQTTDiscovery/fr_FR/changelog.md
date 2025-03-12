---
layout: default
title: Changelog MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Beta

- Amélioration du nom donné automatiquement aux commandes lorsque celui-ci n'est pas défini dans la configuration: le nom devrait être plus court (surtout le cas sur zwave-js et zigbee2mqtt)
- Inversion de comportement de la propriété *Visible* sur les commandes: à présent la plupart des commandes ne sont pas visibles par défaut lors de la création, vous devez cocher *Visible* pour les afficher sur le widget. Le but est d'avoir un widget plus facile à configurer avec seulement les informations et les commandes les plus pertinentes affichées par défaut au lieu de presque tout afficher.
- Amélioration et traduction du nom des commandes lorsque celles-ci sont correctement catégorisées par la source (~= il existe un type générique associé à la commande)
- Modification sur la gestion des images des équipements: la configuration précédente (et les images personnalisées) devrait être migrée mais il est possible que vous ayez des corrections manuelles à effectuer.
- Gestion du *model_id* pour récupérer correctement les images des équipements sous zigbee2mqtt 2.x
- Adaptation du client ID mqtt sous la forme "prefix-[ID aléatoire]" afin de permettre un monitoring plus facile

# Stable

## 2025-02-24

- Mise à jour de dépendances
- Fix mineur sur la gestion des topics découverts
- Fix une erreur lors de la création de commande action si plusieurs commandes portent le même nom

## 2024-12-26

- Prise en charge du type *climate* / *HVAC*
- Ajout du support "schema json" pour le type *light*: supporte les ampoules avec variation de la luminosité, température des couleurs, choix des couleurs, effets, transitions.
- Ajout des commandes **Etat**, **On** et **Off** sur le type *light* utilisant le *default schema*
- Fix sur les commandes infos pour le type *vacuum*
- Fix sur la création des commandes listes qui ne contenait pas la liste des options dans certains cas
- Fix sur l'intégration *EMS-ESP* dû à un mix de 2 syntaxes différentes qui n'était pas supporté par le plugin
- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais
- Mise à jour de dépendances
- Mise à jour de l'icône
- Jeedom v4.4 requis

## 2024-07-02

- Ajout du type *vacuum*
- Fix un problème avec certaines images d'équipement qui ne s'affichaient pas
- Mise à jour de dépendances

## 2024-05-14

- Amélioration: la création des commandes des équipements après ajout est immédiate, il n'est plus nécessaire de redémarrer le démon
- Amélioration: prise en compte du dernier nom du module lors de la découverte (pratique si le nom est changé après l'inclusion par exemple)
- Amélioration: les images de tous les modules zigbee (compatible zigbee2mqtt) seront récupérées automatiquement par le plugin
- Ajout d'un bouton pour ouvrir la configuration du module si l'url est fournie dans les informations de découvertes (par exemple vers la config du module sur zigbee2mqtt, vers omg)
- Fix du type *update* pour les équipements zigbee (via zigbee2mqtt)
- Fix du type *device_automation* / *device trigger*; il est nécessaire de supprimer les commandes correspondantes et de redémarrer le démon pour les recréer correctement
- Fix sur la vérification des dépendances
- Mise à jour de dépendances
- Modification interne du démon

## 2024-02-25

- Optimisation de la taille des backups
- Ajout de l'image de quelques modules zigbee

## 2024-02-14

- Prise en charge du type *select* (commande action liste)
- Prise en charge du type *device_automation*
- Prise en charge du type *music_player* (pour le support de la passerelle sonos2mqtt)
- Ajout des commandes **Ouvrir**, **Fermer** et **Stop** sur le type *cover* (volet, store, rideau...)
- Amélioration: commande info dont l'unité est en `%` auront leur valeur minimum et maximum configurée à 0 et 100 par défaut
- Ajout de l'image pour les modules zigbee *Sonoff occupancy sensor (SNZB-06P)* et *Aqara curtain driver E1 (ZNCLBL01LM)*
- Ajout d'un bouton pour purger tous les appareils découverts de la liste ainsi que sur le broker MQTT (pas les équipements créés bien entendu)
- Ajout d'un bouton pour supprimer les appareils inconnus de la liste
- Suppression du bouton "Dupliquer" un équipement qui n'avait pas de raison d'exister
- Nouvelle version des dépendances (paho-mqtt 2.0) et adaptation du démon en conséquence
- Fix sur la découverte d'un composant *Lock* lorsque celui-ci n'a pas de nom défini
- Fix action sur *cover* sur certains équipements

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
