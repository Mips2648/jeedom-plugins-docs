---
layout: default
title: NotificationQueue Changelog
lang: en_US
pluginId: notificationqueue
---

# Beta

- Update dependencies

# Stable

## 2024-12-25

- Icon update

## 2024-09-16

- Plugin translation in English, German, Spanish, Italian, Portuguese
- Debian 11 or higher required

## 2024-03-18

- Update dependencies

## 2023-10-02

- Possibility to add multiple sending conditions and for each of them different notification commands. This allows your notifications to be sent across different “channels” based on conditions that you define.

## 2023-08-21

- New option to choose how to detect a duplicate notification: identical message (default behavior and before this update), identical title or identical message & title

## 2022-10-17

- From now on expired messages will be removed from the queue over time (and not only if a condition is true).
- Update of the presentation of commands for Jeedom v4.3

## 2020-11-29

- Add management of random text generation (same system as in interactions, see documentation)
- Add management of conditional text via a ternary operator (see documentation)
- New presentation of objects list
- Improved layout of device and commands configuration pages

## 2020-09-14

- Add (non-)repetition management used to delete a duplicate notification already sent during the last x minutes

## 2020-06-16

- Add an option to configure a delay during which the notification will be kept in the queue even if the condition is true
- Add a command to manually trigger the check of the condition and the sending of messages if it is valid
- Add a command to force the immediate sending of all messages regardless of the condition (but taking into account the sending delay)

## 2020-05-03

- Add "Duplicate" button on device configuration

## 2020-03-30

- Move documentations

## 2020-03-07

- Ajout de la gestion des déclenchements sur les conditions: la file sera traitée dès que la condition sera vrai.

## 2020-02-22

- Ajout d'une option pour calculer le temps de pause dynamiquement en fonction de la longueur du message (pour les notifications TTS)
- Ajout de la possibilité de configurer un délai d'expiration des messages par file d'attente

## 2020-01-11

- Added an option to manage duplicate notifications

## 2020-01-04

- Added a command to empty the queue
- Added an info command to know the number of messages in the queue
- Added ask support for notifications

## 2020-01-01

- Added a configurable delay between each assessment of the condition of a queue (applied between each message in the queue)
- Added management of multiple notification commands (separate commands by && in the configuration)

## 2019-10-05

- Rewrite the plugin to have a queue by device instead of one per command. The migration of your old devices is done during the update but you will have to correct your scenarios.
- Improved behavior for TTS notifications, you should include TTS status in the condition to make it work properly.

## 2019-09-18

- First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
