---
layout: default
title: Arlo changelog
lang: en_US
pluginId: arlo
---

# 2020-08-02

- Fixed broken streaming and local recording features following Arlo changes (their new system seems slower than before)
- Urgent fix due to a change of url made during the night of July 31 to August 01 by Arlo : if you do not do this update the daemon will no longer be able to connect.

# 2020-07-08

- Fix demon when only a video doorbell exists (without base)

# 2020-06-18

- Add commands for modes on the widget for the Video Doorbell (when it is not linked to a base)
- Add commands info _IP_, _Luminosity_, _Temperature_, _Humidity_ and _Quality of air_ on the Arlo Baby
- Add management of the Arlo Baby night light: on / off, timer, brightness, color, color temperature and mode (see documentation)
- Add the lullaby management of the Arlo Baby: Play / Pause / Next, timer, Playlist, Volume, Repeat and random mode (see documentation)
- Widget optimization
- Fix management of the modes on the Arlo Baby which were not always correctly created
- Fix tooltips on the camera widget in v4

# 2020-06-4

- Urgent fix due to a change of URL at Arlo made during the night of June 3 to 4: if you do not do this update the demon will no longer receive the events (even if it is _OK_) and it won't be able to connect anymore soon probably.

# 2020-05-24

It is necessary to launch the installation of dependencies after installing this update even if they are already _OK_.

- Migration of daemon in python3
- Adapting permissions: non-admin users can view the streaming and media library.
- Improved management of options for visibility of commands (mainly battery, movement, etc.) on the cameras widget
- Added support for the Arlo Video Doorbell
- Optimizations of dependencies

# 2020-03-30

- Move documentations
- Optimisation: ne réinstalle plus ffmpeg si la bonne version a déjà été installée

# 2020-03-21

- Ajout de la vérification de version ffmpeg dans le check des dépendances
- Fixe erreur http 403 au démarrage du démon causé par un changement introduit par Arlo au login

# 2020-02-19

- Fix a streaming issue that could occur on Raspbian Stretch: force the use of ffmpeg 4.2.1 because version 4.2.2 seems corrupt (it is necessary to reinstall dependencies if you are in this case)

# 2020-02-14

- Fixe un problème d'affichage sur le mode 'Planning'
- Support plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) on top of Mail and Telegram to send notifications

# 2020-02-06

- Add possibility to activate 'Schedule' mode
- Add 'Send snapshot' command on cameras to send a snapshot to a custom notification command directly from a scenario

# 2020-01-22

- Fix an issue on the on/off commands of the Arlo Q and Arlo Qs cameras
- Fix a streaming issue on Raspbian Buster

# 2019-12-28

- Fix a streaming issue with Arlo Q and Arlo Qs cameras
- Add support for Arlo Pro3
- Add support of siren integrated in Arlo Pro3 & Arlo Ultra

# 2019-12-01

- Added a specific health page listing an overview of all Arlo devices
- Improved integration with the Jeedom mobile app
- The "Last Image" command now returns the relative path to the image

# 2019-09-26

- Adding live streaming
- remove "startStream"; and "streamURL" commands

# Improved media library and added video playback

- Adapt widget
- Fix on/off commands on Arlo Baby
- 2019-09-10
- securing access to local snapshots
- Update to my.arlo.com domain following changes made by Arlo

# 2019-08-02

- Jeedom V4 and PHP 7.3 support
- Fix: snapshots not save correctly if Jeedom does not run in /var/www/html/

# Fix: default size of widgets

- 2019-07-19
- Adding mode commands to the Arlo Baby and Aro Q cameras widget
- Add On/Off and status commands to camera device

# Improve Library: added a button to delete a capture and display of the capture in full size

- Fix a problem with the daemon if the plugin is only used with an Arlo Baby camera
- 2019-06-26
- Add support for Arlo Go
- Add generic type on commands to prepare the integration with Jeedom mobile app

# 2019-06-21

- Add support for Arlo Lights
- Add support for Arlo Doorbells

# 2019-06-10

- Added a function to send the captures via Telegram or Mail (the corresponding plugins must be installed)
- Fix size of captures on the mobile widget

# Fix a bug on daemon startup if the password contains some special characters

- Improve heartbeat process
- Internal optimization of the plugin to prepare the integration of new Arlo device
- 2019-05-30
- It is recommended to launch the installation of dependencies after installing this update even if they are already _OK_.
- Add support for Arlo Q

# Adapt charging status on the widget when the camera is lugged to the sector: display of a plug instead of a battery

Fix issues with dependency compatibility

- Fix dependencies compatibility issues on _Debian Jessie_: if you are under Jessie, you must reinstall the dependencies even if they are already _OK_
- reduce the size of the plugin
- Fix image of Arlo Baby
- 2019-05-24
- Improve stability of the demon
- Change the default port to 55064 to avoid conflicts with the _RfPlayer_ plugin

# 2019-05-13

- Improve camera widget and add display customization (in the _Display_ tab of the advanced device configuration)
- Prevents the creation of inactive devices: if you have inactive devices in Arlo, they will not be created or synchronized with Jeedom

# Improved compatibility if multiple base stations exist on the Arlo account

- Improve camera widget and add display customization (in the _Display_ tab of the advanced device configuration)
- 2019-05-12
- First stable release
- Documentation

# See documentation

First stable release

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
