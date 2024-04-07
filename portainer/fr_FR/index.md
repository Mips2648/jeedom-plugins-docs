---
layout: default
title: Documentation Portainer
lang: fr_FR
pluginId: portainer
---

# Description

Plugin permettant la connexion à un serveur [portainer.io](https://www.portainer.io/portainer-ce/) qui est une solution de gestion de containers sous docker qui peut elle même s'installer très facilement dans un container.
Via ce plugin, il est possible de récupérer dans jeedom tous les dockers configurés sous [portainer.io](https://www.portainer.io/portainer-ce/) ainsi que tous leurs containers.

Le plugin dispose également d'une page santé et d'un panel dédié affichant un aperçu de tous les containers et permettant d'effectuer toutes les actions de base, similaire à la page "Containers" sur [portainer.io](https://www.portainer.io/portainer-ce/).

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il est nécessaire de déjà avoir un serveur portainer.io, les différentes solutions pour cela sont très bien documentée sur leur site.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner l'URL de portainer sous la forme `http://PORTAINER_SERVER:9000` ainsi qu'un nom d'utilisateur et un mot de passe.

Vous pouvez également choisir d'activer ou non le panel ainsi que l'objet parent qui sera utilisé lors de la création des équipements Jeedom: si un équipement portant le même nom n'existe pas encore sous cet objet, le nouvel équipement Portainer aura comme parent cet objet sinon "Aucun".
Il est également possible de choisir entre deux modes pour la synchronisation automatique:

- soit créer les nouveaux containers qui n'existent pas encore sous jeedom et mettre à jour les containers existants
- soit uniquement mettre à jour les containers existants

> **Tip**
>
> L'action _Synchroniser_ disponible dans la page des équipements pour forcer une synchronisation manuellement créera toujours les containers manquants. L'option ci-dessus n'est applicable qu'à la synchronisation automatique

# Les équipements

Dès qu'un utilisateur sera configuré, le plugin essaiera de se connecter à portainer.io toutes les minutes afin de se synchroniser.
Tous les équipements auxquels le plugin a accès seront automatiquement créés dans Jeedom, il n'est pas possible de créer un équipement manuellement.
Il est possible de faire une synchronisation manuelle via le bouton dans la page des équipements.

Deux options existent pour rapatrier dans Jeedom les logs de sorties stdout et stderr. Si les options correspondantes sont activées sur l'équipement, les logs seront lu à chaque synchronisation de l'équipement et accessible dans l'interface de logs de Jeedom.

# Les commandes disponibles

## EndPoint

Sur les équipements de type EndPoint (Instance docker, agent portainer...), il existe les commandes info suivantes:

- **Etat** vaut 1 ou 0 selon que l'équipement est allumé et joignable ou pas
- **Nombre de CPU** donne le nombre de CPU de la machine
- **Mémoire** donne la mémoire totale de la machine en bytes
- **Nombre de containers allumés** et **Nombre de containers éteints**
- **Nombre de containers sains** et **Nombre de containers malsains**
- **Nombre de volumes**
- **Nombre d'images**
- **Nombre de services**
- **Nombre de stacks**
- **URL publique**

## Container

Sur les équipements de type Container, il existe les commandes info suivantes:

- **Statut** les valeurs possibles sont: _created_, _running_, _paused_, _restarting_, _removing_, _exited_, _dead_
- **Statut santé** les valeurs possibles sont: _none_, _starting_, _healthy_, _unhealthy_
- **Running** info/binaire
- **Paused** info/binaire
- **Restarting** info/binaire
- **Dead** info/binaire
- **OOMKilled** info/binaire
- **Adresse IP** du container
- **Adresse MAC** du container
- **Passerelle** gateway réseau
- **Dernier démarrage** la date du dernier démarrage
- **Dernier arrêt** la dernière extinction

et des commandes actions:

- **Démarrer**
- **Arrêter**
- **Redémarrer**
- **Pause**
- **Reprendre**
- **Tuer**

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
