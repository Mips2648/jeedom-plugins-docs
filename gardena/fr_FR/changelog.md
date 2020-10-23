---
layout: default
title: Changelog Gardena-Husqvarna
lang: fr_FR
pluginId: gardena
---

# 2020-10-24

- Fix un problème avec les Smart Irrigation Control qui empêchait le démon de démarrer correctement
- Augmentation de la limite maximum de durée (de 1h à 6h) pour le démarrage manuel des Tondeuses Gardena.

# 2020-08-29

- Ajout d'une commande **Dernière erreur** sur les Gardena Smart Socket, Water Control et Irrigation Control: Veuillez utiliser le bouton _Créer les commandes manquantes_ sur la page de l'équipement pour la rajouter
- Ajout de l'info _Dernière erreur_ dans la page santé
- Fix un problème de démarrage du démon avec les tondeuses Husqvarna Automower

# 2020-08-27

- Ajout d'une commande **Dernière erreur** sur les Gardena Smart Mower
- Suppression de la commande "Durée restante" sur les Gardena Smart Mower car l'information n'est pas disponible
- Fix un problème sur la commande "Activité" des Gardena Smart Mower qui ne se mettait pas à jour
- Fix un problème de lien d'image incorrecte dans la page de configuration des Gardena Smart Mower

# 2020-08-22

- Amélioration du processus de reconnexion en cas de coupure réseau ou de déconnexion de l'API par Gardena
- Nettoyage de la mise en page pour la V4
- Fix un problème de dépendance sur certaines installations

# 2020-08-16

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
