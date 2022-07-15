---
layout: default
title: Documentation Design Image
lang: fr_FR
pluginId: modbus2mqtt
---

# Description

Plugin permettant de faire passerelle entre du modbus TCP/IP et MQTT.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Il n'y a aucune configuration à effectuer au niveau du plugin.

# Configuration de l'équipement

Le plugin se trouve dans le menu Plugins > Météo.
Après avoir créé un nouvel équipement, les options habituelles sont disponible.

Il suffit alors de sélectionner les designs pour lesquels vous voulez changer l'image de fond en fonction de la météo et de choisir l'équipement météo à utiliser.

En cas de configuration manuelle, il est nécessaire de fournir des commandes info qui donneront l'heure du levé et du couché du soleil au format Jeedom (HHMM) ainsi que d'encoder les conditions pour chacun des situations météorologiques afin que le plugin puisse déduire l'image de fond à utiliser.

Les images de fond sont personnalisable via l'écran de configuration des équipements.

# Activation de l'équipement

# Commandes

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).