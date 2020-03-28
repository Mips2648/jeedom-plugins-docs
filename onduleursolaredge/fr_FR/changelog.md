---
layout: default
title: Changelog
lang: fr_FR
---

# Changelog

## 2020-03-27

- Ajout de vérification sur les valeurs configurées erronées pour éviter des erreurs
- Optimisations mineures.

## 2019-09-10

- Support Jeedom V4 et PHP 7.3

## 2019-03-19

- Mise en page de la page d'équipement au standard 3.3
- Ajout d'option pour le cron: gestion dynamique (comme précédemment), valeur fixe ou désactivé.

## 2019-03-15

- Changement vers un cron dédié au plugin
- Calcul dynamiquement de la fréquence du cron basé sur les heures de lever et de coucher du soleil pour maximiser le nombre d'éxécution sans dépasser la limite autorisée des 300 requêtes par jour
- Ajout d'un second essai en cas d'erreur technique avec l'API Solaredge

## 2019-02-25

- Ajout d'une option pour choisir le type d'information à récupérer
- Ajout des unités sur les commandes
- Affichage des informations sur l'onduleur dans la page d'équipement

## 2018-11-06

- Ajout option pour récupérer les détails d'énergie: consommation, auto-consommation, achat et vente du réseau) (si disponible dans votre installation)
- Changement mise en page de la page des commandes

## 2018-09-30

- Ajout des traductions en_US

## 2018-09-24

Première version

# Documentation

[Documentation]({{site.baseurl}}/)
