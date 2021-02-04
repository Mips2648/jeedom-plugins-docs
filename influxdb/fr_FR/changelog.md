---
layout: default
title: Changelog InfluxDB
lang: fr_FR
pluginId: influxdb
---

# 2021-02-04

- Ajout du support https pour InfluxDb v1.x
- Ajout du support de InfluxDb v2.x (voir documentation)
- Nouvelle présentation de la liste des objets

# 2020-09-04

- Nettoyage de la mise en page pour la V4
- Optimisation des configs

# 2020-08-15

- Fix: l'envoi en temps réel ne fonctionnait pas après une désactivation et réactivation du plugin (sauf en re-sauvant l'équipement correspondant)

# 2020-08-09

- Ajout de la possibilité de définir un nom de mesure et de clé personnalisé pour chaque commande (à configurer dans la liste des commandes)
- Ajout d'une configuration sur l'équipement permettant de choisir les tags à envoyer avec chaque point
- Ajout des tags (en option) "Nom de la commande" (*CommandName*) et "Type générique de la commande" (*GenericType*)

# 2020-05-03

- Ajout du bouton "Dupliquer" un équipement

# 2020-04-23

- Fix un problème de tri sur la colonne "Envoyé" dans l'écran de configuration des commandes

# 2020-04-16

- Fix un problème de dépendances sur Jeedom Smart

# 2020-04-12

- Ajout de la programmation personnalisée dans le mode "auto-actualisation" (par défaut chaque minute)

# 2020-04-06

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
