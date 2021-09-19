---
layout: default
title: Documentation Vaillant multiMATIC
lang: fr_FR
pluginId: vaillantmultimatic
---

# Description

Plugin permettant de se connecter à un système Vaillant multiMATIC via la passerelle internet.
Il est possible de remonter dans Jeedom l'état de tous les équipements connectés et de les contrôler: définir le mode (On, Off, Auto...), définir les températures de consigne, activer un mode rapide, activer une marche forcée...

Les vannes et les thermostats de la gamme ambiSENSE reliées au système sont également gérés.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

# Configuration du plugin

Il est recommandé, mais pas obligatoire, de créer un utilisateur dédié à Jeedom via l'App mobile officielle.
Pour se faire, ouvrez l'application, allez de le menu _réglage_ puis _Accès_ et suivez les étapes pour créer un nouvel utilisateur.

Il ne vous reste plus qu'à renseigner le nom d'utilisateur et son mot de passe dans la configuration du plugin.

# Les équipements et leurs commandes

Dès que les dépendances seront installées et la configuration du plugin sera correcte, le plugin synchronisera vos équipements.

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement jeedom ne correspond plus à aucun équipement en votre possession, veuillez le supprimer manuellement.

Des équipements de différents types seront créés en fonction de ce qui existent dans votre système. Les équipements possibles sont: la passerelle elle-même, le multiMatic qui contrôle votre production d'eau chaude et le circulateur, un équipement pour gérer la ventilation, un équipement par zone de chauffage et si vous avez des équipements de la gamme ambiSENSE, un équipement par pièce et un équipement par vanne et par thermostat.

> **Tip**
>
> Si votre système Vaillant multiMATIC ne dispose pas d'un des équipements listés ci-dessus il n'y aura donc pas d'équipement de ce type créé sous Jeedom, cela est normal. Cette documentation reprend simplement l'ensemble des possibilités.

## La passerelle

C'est l'équipement principal du système. Il permet le contrôle des modes rapides, du mode vacances et affichera les informations de température des différentes sondes en fonction de ce qui existe sur votre installation, par exemple la température de départ du chauffage, du ballon d'eau chaude, la température extérieur...

Les modes rapides sont les mêmes que ceux disponibles dans l'app mobile, ils ont un impact global sur les composants du système en fonction du mode activé.

Le mode vacances aura également un impact global mais il est un peu particulier car il a un date de début et de fin et peut-être activé, programmé ou pas. S'il est activé mais que la date actuelle ne se trouve pas dans l'interval défini il ne sera pas appliqué (et un autre mode rapide le sera éventuellement selon votre configuration).

Voici un aperçu des commandes disponibles:

- **Statut** commande info/string
- **Online** commande info/binaire
- **A jour** commande info/binaire indiquant si le système est à jour
- **Mode rapide** il y a une commande info indiquant le mode rapide en cours (valeurs possibles: _Aucun_, _Boost ECS_, _Boost ventilation_, _Absence exceptionnelle_, _Présence exceptionnelle_, _Fête_, _Absence_, _Arrêt du système_) ainsi qu'une commande action correspondante à chaque mode pour l'activer.
- **Date début vacances**, **Date fin vacances** & **Définir dates vacances** sont respectivement les commandes donnant la date de début et de fin de vacances enregistrées ainsi que la commande pour définir ces dates
- **Consigne vacances** permet de connaître et définir la consigne de température appliquée lorsque le mode vacances est actif.
- **Mode vacances actif**, **Mode vacances On**, **Mode vacances Off** sont les commandes permettant de connaître le statut, d'activer et de désactiver le mode vacances.
- Il existera également une commande info/numérique par sonde de température existante, par exemple **Température extérieure**, **Température ECS ballon**, **Température de départ**, ...

## Eau chaude sanitaire

Cette équipement reprend des information sur la production d'eau chaude sanitaire ainsi que sur l'état de la circulation qui est indissociable du premier.

- **Mode** retourne le mode actif, il peut avoir une des valeurs suivantes: _Auto_, _On_, _Off_
- **Auto**, **On**, **Off**, commande action pour activer les modes correspondants
- **Etat** donne l'état actuel, _On_ ou _Off_: donc si le **Mode** est _Auto_, **Etat** permettra de savoir la valeur effective.
- **Consigne** donne la consigne appliquée actuellement (par exemple 5°C si l'**Etat** est _Off_)
- **Consigne chauffe** indique et permet de modifier la consigne voulue (lorsque l'**Etat** est _On_)
- **Température** indique la température actuelle de l'eau
- **Mode circulation** et **Etat circulation** donne les informations respective pour la circulation. Le mode n'est pas contrôlable, il est lié à la production d'eau chaude.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
