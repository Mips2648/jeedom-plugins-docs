---
layout: default
title: Changelog Portainer
lang: fr_FR
pluginId: portainer
---

# 2020-08-xx

- Nouvelle page santé affichant un aperçu de touts les containers et permettant d'effectuer toutes les actions de base (similaire à la page "Containers" sur Portainer)
- Ajout d'une config sur le plugin permettant de définir l'objet parent par défaut qui sera utilisé lors de la création d'un nouveau container
- Lors d'une synchronisation, le plugin activera et désactivera automatiquement les équipements Jeedom correspondant aux containers selon qu'ils existent ou pas sur Docker.
- Lorsqu'un container est détruit et recréé sur Docker, le plugin ne créera plus un nouvel équipement Jeedom mais mettra à jour l'équipement existant s'il le retrouve (le nouveau container doit avoir le même nom et se trouver sur la même instance Docker que l'ancien)
- Ajout de commandes infos réseau sur les containers (IP, MAC, gateway, ports)

# 2020-03-30

- Déplacement de la documentation

# 2020-03-19

Ajout d'une option pour récupérer la sortie stdout et stderr lors de la synchronisation de l'équipement. Il est nécessaire de retourner sur la page de l'équipement et de sauvegarder la configuration pour activer l'option.

# 2020-03-10

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
