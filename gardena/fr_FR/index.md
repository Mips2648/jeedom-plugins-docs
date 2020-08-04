---
layout: default
title: Documentation Gardena-Husqvarna
lang: fr_FR
pluginId: gardena
---

# Description

Plugin permettant d'intégrer tous les appareils de la gamme Gardena Smart System (Water Control, sensor, irrigation control, power socket et mower) ainsi que les robots Husqvarna Automower.
Il est possible d'accéder aux données des appareils, de les monitorer et d'effectuer certaine actions (en fonction de l'appareil)

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Dans la configuration du plugin, il faudra renseigner le nom d'utilisateur, ainsi que l'application key permettant l'accès à l’API.

# Les équipements

Dès que la configuration du plugin est correcte, le plugin synchronisera.
Il créera les appareils manquants avec leurs commandes et mettra à jour l'état de tout les appareils connectés.

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement jeedom ne correspond plus à aucun appareil en votre possession, veuillez le supprimer manuellement.

Dans la page de configuration d'un équipement, il existe un bouton pour créer les commandes manquantes sur celui-ci (dans le cas où vous auriez supprimé une commande par erreur par exemple).

# Les commandes

## Les commandes communes à tous les appareils

Chaque équipement Gardena Smart System dispose des commandes suivantes:

- **Batterie** donne le niveau de charge la batterie (si applicable) en pourcent
- **Etat batterie** donne une description de l'état de la batterie
- **Niveau connexion** donne la niveau de la connexion avec la passerelle en pourcent
- **Etat connexion** donne une description de l'état de connexion

## Gardena Smart Sensor

## Gardena Smart Water Control

## Gardena Smart Power Socket

## Gardena Smart Mower

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
