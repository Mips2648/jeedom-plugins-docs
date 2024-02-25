---
layout: default
title: Changelog Modbus 2 MQTT
lang: fr_FR
pluginId: modbus2mqtt
---

# Beta

n/a

# Stable

## 2024-02-26

- Optimisation de la taille des backups

## 2024-02-14

- Ajout du support des entiers signés et non-signés sur 32bits & 64 bits
- Ajout d'une nouvelle option pour inverser les mots si nécessaire (pour les nombres sur 32bits & 64 bits)
- Amélioration technique sur le démon: passage en full asyncio
- Modification du script d'installation des dépendances pour la compatibilité Debian 12
- Nouvelle version des dépendances (paho-mqtt 2.0) et adaptation du démon en conséquence

## 2023-08-24

- Fix un problème de dépendances sur Debian 11 / Python 3.9

## 2023-05-20

- Compatibilité Jeedom v4.4

## 2023-01-30

- Fix: impossible de supprimer certaines commandes des équipements dans certains cas

## 2022-11-11

- Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
