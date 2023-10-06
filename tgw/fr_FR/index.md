---
layout: default
title: Documentation Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Description

Plugin pour installer et configurer facilement des antennes tournant sous *Theengs gateway* qui permet de capter des périphérique Bluetooth (BLEA) et les remonter vers Jeedom pour être intégré via le plugin MQTT Discovery

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Ce plugin nécessite le plugin *MQTT Manager (MQTT2)* pour fonctionner, cela permet de récupérer l'état des antennes.

# Configuration du plugin

Avant de commencer, assurez-vous d'avoir installer et configurer le plugin *MQTT Manager (MQTT2)*, voir documentation de ce plugin.

Il faudra ensuite configurer les informations de connexions au broker MQTT que les antennes vont utilisées, vous pouvez par défaut récupérer la configuration de *MQTT Manager (MQTT2)* en cliquant sur le bouton correspondant mais vous avez aussi la possibilité de vérifier et corriger si nécessaire l'adresse du broker (attention, cela doit être le même broker que sous MQTT2) et vous pouvez modifier le nom d'utilisateur et le mot de passe que les antennes utiliseront, c'est utile si vous voulez configurer des identifiants différents pour vos antennes et pour Jeedom.

Si vous ne savez pas ou en cas de doute, utilisez la configuration automatique.

> **Important**
>
> Les informations configurées ici serviront uniquement à la configuration des antennes. Le plugin lui utilisera toujours *MQTT Manager (MQTT2)* pour se connecter au broker.

# Les équipements

Chaque équipement correspondra à une antenne Theengs. Donc vous devez commencer par ajouter un équipement et donner un nom.
Dans la configuration de l'équipement, vous verrez les paramètres habituels communs à tous les équipements Jeedom.

## Installation de l'antenne

Ensuite la première chose à faire est de choisir si c'est une antenne locale ou distante (via SSH) et dans le cas d'une antenne distante il faut fournir les informations de connexions:
![auth](../images/auth.png)

> **Important**
>
> L'utilisateur configuré doit être dans le groupe sudoers.

Par défaut l'interface Bluetooth utilisée sera *hci0*, si nécessaire vous pouvez changer cette configuration.

Ensuite il faut procéder à l'installation de l'antenne en cliquant sur le bouton *Installer l'antenne*:

![Actions](../images/actions.png)

> **Important**
>
> Cette étape peut être très longue (1h ou plus sur un pi0). Il est très important de patienter et de ne pas lancer de multiple fois l'installation.

## Configuration et démarrage

Vous pouvez à présent cliquer sur le bouton *Configurer le service et redémarrer*, cela ne devrait prendre que quelques secondes

Cette étape va écrire le fichier de configuration et créer le service *TheengsGateway* sur l'hôte distant.
Si vous changer un paramètre de l'équipement ou les informations de connexion au broker dans la configuration du plugin, il sera nécessaire de refaire cette étape.

Le service sera configuré pour un démarrage automatique à chaque reboot du système ou en cas d'échec.

# Les commandes

Chaque antenne dispose de 3 commandes:

- **Online** commande info/binaire indiquant si l'antenne est en ligne ou non. "En ligne" veut dire connecté au broker et à l'écoute de périphérique Bluetooth.
- **Redémarrer** action permettant de (re)démarrer l'antenne si nécessaire
- **Stop** action permettant d'arrêter l'antenne si nécessaire

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
