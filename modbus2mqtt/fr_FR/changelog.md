---
layout: default
title: Changelog Modbus 2 MQTT
lang: fr_FR
pluginId: modbus2mqtt
---

# Beta

- Fix un problème au démarrage du démon qui pouvait survenir sous Debian 12

# Stable

## 2025-04-18

- Ajout de la gestion des tables *Coil status* & *Input status*
- Migration vers pymodbus 3.8 => suppression de l'option pour inverser l'ordre dans un octet
- Adaptation du client ID mqtt sous la forme "modbus2mqtt-[ID aléatoire]" afin de permettre un monitoring plus facile
- Mise à jour de dépendances

## 2024-12-26

- Ajout d'une nouvelle option pour inverser l'ordre dans un octet
- Ajout du support des nombres flottants sur 32bits
- Ajout d'une option pour configurer le timeout des requêtes modbus
- Ajout d'une option pour configurer le délai entre 2 lectures
- suppression de l'option pour choisir le mode d'écriture: c'est déterminé automatiquement en fonction du type.
- Mise à jour du démon
- Mise à jour de dépendances
- Mise à jour de l'icône
- Traduction du plugin en anglais, allemand, espagnol, italien, portugais
- Fix: l'adresse du terminal (slave id) n'était pas correctement pris en compte
- Jeedom v4.4 requis

## 2024-04-10

- Fix sur la vérification des dépendances
- Mise à jour de dépendances

## 2024-03-16

- Ajout d'une nouvelle option pour choisir le mode d'écriture: simple (fonction 06) ou multi (fonction 16)
- Ajout d'une nouvelle option pour configurer l'adresse du terminal esclave

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
