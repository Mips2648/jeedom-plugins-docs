---
layout: default
title: Changelog VMC (Zehnder/Storkair)
lang: fr_FR
pluginId: vmczehnder
---

# Beta

n/a

# Stable

## 2025-04-18

- Correction sur la reconfiguration du service qui ne fonctionnait pas dans certains cas
- Adaptation du client ID MQTT sous la forme "zehnder2mqtt-[ID aléatoire]" afin de permettre un monitoring plus facile

## 2024-12-25

- Mise à jour des dépendances
- Mise à jour de l'icône
- Jeedom v4.4 requis

## 2024-09-16

- Mise à jour des dépendances
- Traduction du plugin en anglais, allemand, espagnol, italien, portugais
- Version Debian 11 minimum requise

## 2024-06-01

- Compatibilité du service distant avec Debian 12
- Mise à jour des dépendances

## 2024-04-10

- Mise à jour des dépendances

## 2024-02-27

- Mise à jour des dépendances

## 2023-10-03

- Correction d'un problème potentiel lors de l'installation des dépendances
- Correction d'un problème potentiel en cas de connexion au broker MQTT sans utilisateur et mot de passe

## 2023-09-30

- Réécriture complète du plugin qui se base à présent sur MQTT pour les échanges entre Jeedom et le Pi distant branché à la VMC
- Mise à jour de la page liste des équipements
- Amélioration des champs de mot de passe
- Mise à jour de la gestion des dépendances v4.2
- Compatibilité Jeedom v4.4

> **Important**
>
> Le plugin et le démon distant nécessitent au minimum Debian Buster pour fonctionner, y compris donc pour le Pi distant branché à la VMC.
>
> Le plugin nécessite une installation fonctionnelle du plugin "MQTT Manager (MQTT2)", si ce plugin n'est pas encore présent sur votre système, il sera installé automatiquement avec la mise à jour mais vous devrez finaliser sa configuration (voir documentation de *MQTT Manager*).

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2021-02-06

- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-06-18

- bugfix sur l'installation du démon

## 2020-06-15

- Refonte des pages de configuration en vue de futures mise à jours pour permettre la modification des configurations de la VMC

## 2020-05-12

- Déplacement de la documentation

## 2020-01-29

- Add compatibility with Jeedom mobile App: it's now possible to control fan speed via the app
- Amélioration de la connexion avec le démon distant
- fix error message on connection error

## 2019-08-03

- Updates to prepare support of Jeedom V4 and PHP 7.3
- Use plugin daemon instead generic to avoid side impact on/with others plugins

## 2019-03-19

- add configured delay (visible in config tab of your VMC)
- add usage counters (available as info commands and visible in config tab of your VMC)
- add action to reset filters counter (in config tab of your VMC)
- add filterError command (binary) to indicate that filters need to be cleaned or replaced
- adapt device screen layout to match 3.3

## 2019-03-15

- Add local dependencies management
- Change sync with VMC every minute instead of 5 minutes
- Improve daemon management
- Add get remote logs of daemon (every 5 min.)
- Add automatic update of remote daemon after plugin update
- Add socat management on remote pi (to connect CCEase/comfoSense module)

## 2019-03-02

- Reduce CPU usage of remote daemon

## 2019-02-25

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}})
