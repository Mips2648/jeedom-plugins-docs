---
layout: default
title: Changelog MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Beta

## 2023-09-11

- *MQTT Manager (mqtt2)* n'est plus un pré-requis (il faut avoir un broker mqtt installé, soit par vos soins, soit via tout autre plugin Jeedom). Si *MQTT Manager (mqtt2)* est installé, la configuration au broker est semi-automatique.
- Implémentation d'un client MQTT dédié au plugin afin d'améliorer les performances et la flexibilité; le plugin possède un démon à présent
- Ajout du type *cover*
- Modification & amélioration de la page de configuration du plugin

## 2023-09-07

- Fix sur light/brightness

# Stable

# 2023-10-xx

- Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
