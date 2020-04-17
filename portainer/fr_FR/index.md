---
layout: default
title: Documentation Portainer
lang: fr_FR
pluginId: portainer
---

# Description

Plugin permettant la connexion à un serveur Portainer. Portainer est une solution de gestion de container sous docker qui peut elle même s'installer très facilement dans un container.
Via ce plugin, il est possible de récupérer dans jeedom tous les dockers configurés sous Portainer ainsi que tous les containers.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il est nécessaire de déjà avoir un serveur Portainer, les différentes solutions pour cela sont très bien documentée sur leur site.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner l'URL de portainer sous la forme `http://PORTAINER_SERVER:9000` ainsi qu'un nom d'utilisateur et un mot de passe.

# Les équipements

Dès qu'un utilisateur sera configuré, le plugin essaiera de se connecter à Portainer toutes les minutes afin de se synchroniser.
Tous les équipements auxquels le plugin a accès seront automatiquement créés dans Jeedom, il n'est pas possible de créer un équipement manuellement.
Il est possible de faire une synchronisation manuelle via le bouton dans la page des équipements.

Deux options existent pour rapatrier dans Jeedom les logs de sorties stdout et stderr. Si les options correspondantes sont activées sur l'équipement, les logs seront lu à chaque synchronisation de l'équipement et accessible dans l'interface de logs de Jeedom.

# Les commandes disponibles

## Docker

Sur les équipements de type Docker, il existe des commandes info donnant le nombre de CPU et la mémoire totale ainsi sur le nombre de containers allumés et éteints.

## Container

Sur les équipements de type Container, il existe une commande info donnant le status du container, la date du dernier démarrage ainsi que de la dernière extinction et des commandes actions pour démarrer, arrêter, redémarrer, mettre en pause ainsi que tuer le container.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
