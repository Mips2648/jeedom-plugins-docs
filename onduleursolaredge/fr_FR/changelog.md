---
layout: default
title: Changelog Solaredge
lang: fr_FR
pluginId: onduleursolaredge
---

# Beta

n/a

# Stable

## 2023-10-02

- fix un problème avec la commande *Date de mise à jour*

## 2022-10-17

- Ajout du pourcentage de charge de batterie sur l'équipement "Puissance & Flux"
- Changement des heures de fonctionnement par défaut (si aucune configuration n'était réalisée): précédemment de 4h00 à 22h00 et à présent de 0h00 à 23h59. Vous pouvez adapter la configuration du plugin si nécessaire
- Prise en compte des multiples onduleurs dans l'affichage des détails du site
- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2021-10-04

- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-08-24

- Nettoyage de la mise en page pour la V4

## 2020-03-30

- Déplacement de la documentation

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
- Calcul dynamiquement de la fréquence du cron basé sur les heures de lever et de coucher du soleil pour maximiser le nombre d'exécution sans dépasser la limite autorisée des 300 requêtes par jour
- Ajout d'un second essai en cas d'erreur technique avec l'API Solaredge

## 2019-02-25

- Ajout d'une option pour choisir le type d'information à récupérer
- Ajout des unités sur les commandes
- Affichage des informations sur l'onduleur dans la page d'équipement

## 2018-11-06

- Ajout option pour récupérer les détails d'énergie: consommation, auto-consommation, achat et vente du réseau (si disponible dans votre installation)
- Changement mise en page de la page des commandes

## 2018-09-30

- Ajout des traductions en_US

## 2018-09-24

- Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
