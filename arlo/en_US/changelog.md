---
layout: default
title: Changelog
lang: en_US
pluginId: arlo
---

# See the latest version

[2019-05-12](#tocAnchor-1-1-21)

## First stable release

2019-05-13

## Improve camera widget and add display customization (in the _Display_ tab of the advanced device configuration)

- Prevents the creation of inactive devices: if you have inactive devices in Arlo, they will not be created or synchronized with Jeedom
- Improved compatibility if multiple base stations exist on the Arlo account
- Fix a daemon crash if there is no base station (e.g. if used with only Arlo Q cameras)
- 2019-05-24

## Improve stability of the demon

- Change the default port to 55064 to avoid conflicts with the _RfPlayer_ plugin
- 2019-05-29

## It is recommended to launch the installation of dependencies after installing this update even if they are already _OK_.

Add support for Arlo Q

- Adapt charging status on the widget when the camera is lugged to the sector: display of a plug instead of a battery
- Fix issues with dependency compatibility
- Fix dependencies compatibility issues on _Debian Jessie_: if you are under Jessie, you must reinstall the dependencies even if they are already _OK_
- reduce the size of the plugin
- 2019-05-30

## Fix image of Arlo Baby

- 2019-06-10

## Added a function to send the captures via Telegram or Mail (the corresponding plugins must be installed)

- Fix size of captures on the mobile widget
- Fix a bug on daemon startup if the password contains some special characters
- Improve heartbeat process
- Internal optimization of the plugin to prepare the integration of new Arlo device
- 2019-06-21

## Add support for Arlo Lights

- Add support for Arlo Doorbells
- 2019-06-26

## Add support for Arlo Go

- Add generic type on commands to prepare the integration with Jeedom mobile app
- 2019-07-19

## Adding mode commands to the Arlo Baby and Aro Q cameras widget

- Add On/Off and status commands to camera device
- Improve Library: added a button to delete a capture and display of the capture in full size
- Fix a problem with the daemon if the plugin is only used with an Arlo Baby camera
- 2019-08-02

## Jeedom V4 and PHP 7.3 support

- Fix: snapshots not save correctly if Jeedom does not run in /var/www/html/
- Fix: default size of widgets
- 2019-09-10

## securing access to local snapshots

- Update to my.arlo.com domain following changes made by Arlo
- 2019-09-17

## Added local recording function

- Update to font awesome 5 (for Jeedom V4)
- Improved media library and added video playback
- Adapt widget
- Fix on/off commands on Arlo Baby
- 2019-09-26

## Adding live streaming

- remove "startStream"; and "streamURL" commands
- 2019-12-01

## Added a specific health page listing an overview of all Arlo devices

- Improved integration with the Jeedom mobile app
- The "Last Image" command now returns the relative path to the image
- 2019-12-27

## Add support for Arlo Pro3

- Add support of siren integrated in Arlo Pro3 & Arlo Ultra
- 2019-12-28

## Fix a streaming issue with Arlo Q and Arlo Q s cameras

- 2020-01-22

## Fixed an issue on the on/off commands of the Arlo Q and Arlo Qs cameras

- Fix a streaming issue on Raspbian Buster (caused by ffmpeg)
- 2020-02-06

## Add possibility to activate 'Schedule' mode

- Add 'Send snapshot' command on cameras to send a snapshot to a custom notification command directly from a scenario
- 2020-02-14

## Fixe un problème d'affichage sur le mode 'Planning'

- Support des plugins [Rocket.Chat](https://www.jeedom.com/market/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue](https://www.jeedom.com/market/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify](https://www.jeedom.com/market/index.php?v=d&p=market&author={{site.author}}&categorie=communication) en plus de Mail et Telegram pour l'envoi des notifications
- 2020-02-19

## Fixe un problème de streaming pouvant se produit sur Raspbian Stretch: force l'usage de ffmpeg 4.2.1 car version 4.2.2 semble corrompue (réinstallation des dépendances nécessaires si vous êtes dans le cas)

- 2020-03-21

## Ajout de la vérification de version ffmpeg dans le check des dépendances

- Fixe erreur http 403 au démarrage du démon causé par un changement introduit par Arlo au login
- 2020-03-28

## Optimisation: ne réinstalle plus ffmpeg si la bonne version a déjà été installée

- Documentation

# Documentation

[Documentation]({{./index}}/)
