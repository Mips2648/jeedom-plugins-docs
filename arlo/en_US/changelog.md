---
layout: default
title: Arlo changelog
lang: en_US
pluginId: arlo
---

# Beta

n/a

# Stable

## 2022-11-11

- Minor Fix for Audio Doorbells

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-10-06

- Improved Arlo Floodlight integration: more model handling, added custom event handling if no base (see doc)
- Minor fix on camera widget for Jeedom v4 and removal of compatibility with Jeedom v3; the minimum required version of Jeedom is now 4.0

## 2022-08-17

- Fix: Camera widget for non-admin users did not show last capture

## 2022-05-17

- Support model VMC4041P (Arlo Pro4)
- Add **Enable event handling**, **Disable event handling** and **Event handling status** commands on Arlo doorbell wire free & Arlo Go

## 2022-02-11

- Added **Shield State** command on Arlo Essential Indoor
- Added **Siren Status**, **Siren On** and **Siren Off** commands to Arlo Essential
- Improvement: optionally allow all existing action commands to be displayed on the camera widget
- Added a button in the library to download the records
- Disabling event handling by default on the Arlo Essential when no hub is connected because it drains the battery of this model too quickly
- Added new commands to enable on-demand event handling on Arlo Essential: **Enable Event Handling**, **Disable Event Handling** and **Event Handling Status**
- Fix: object/room name was still visible on camera widget
- Removed the installation of the custom version of ffmpeg which was required under Debian Stretch.

## 2021-10-31

- Update audio commands during manual and automatic refresh of the Arlo Baby
- Fix video recording in cloud

## 2021-09-22

- Better integration with third-party plugins like [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) for more information)
  - Add a *Last capture URL* command on the cameras, this command can be used in the *Snapshot URL command* config of the Jeedom Connect camera widget
  - Add an easy-to-copy link in the camera configuration page, this path can be used in the *Recordings folder* config of the Jeedom Connect camera widget
- Restored several features for the Arlo Video doorbell wire-free (event handling is still disabled), [see documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) for details
- Add Arlo chimes 2 (AC2001)
- Fix "Playing" status on the Arlo Baby which was not always correct.

## 2021-08-22

- Add table display mode of the list of device for Jeedom 4.2
- Enhancement: Optionally allows the display of the following commands on the Arlo Baby widget: **Temperature**, **Humidity**, **Air quality**, **Brightness**
- Fix: the **Air quality** command returned a value per thousand instead of percent, the value is again in percent now.
- Fix daemon crash in case a camera (not connected to a base) is offline.

## 2021-07-28

- Add support of Arlo Essential Indoor
- Add support of Arlo Pro4
- Allows the display in table of widget (except the camera widget which is personalized by the plugin)
- Disabled event management on the Arlo Video doorbell wire-free (no problem with the classic Video doorbell) because it drains the battery of this model too quickly
- Internal optimization on the heartbeat and reconnection processes
- Better timeouts management
- Improvement: update mode in real time if it is modified outside the plugin (in the Arlo app therefore); previously it took a maximum of 1 min. 30

## 2021-06-02

- Added action command *Send record* on Arlo VideoDoorbell
- Fix parsing of the authentication code in 2 steps following a format change in the email sent by Arlo
- Complete refactoring of the management of the connection to the Arlo system by the daemon:
  - the daemon will attempt to reconnect automatically without stopping in the event of a problem during login or in the event of a forced disconnection by Arlo,
  - the daemon will re-execute the requested mode change before disconnection if necessary

## 2021-04-03

It is necessary to launch the installation of dependencies after installing this update even if they are already *OK*.

- Add support of Arlo Video Doorbell Essential (Wire-Free) AVD2001
- Improve support of Arlo Essential and Arlo Go
- Full refactoring of the daemon's handling of events (reduced disconnections and reduced number of requests on battery-powered devices such as Arlo Essential and Arlo Go)
- Urgent fix following a change at Arlo made on the night of April 02 to 03: if you do not do this update the daemon will no longer be able to connect.

## 2021-01-11

- Improved daemon heartbeat on startup
- Improved integration of Arlo Essential
- Fix image for video doorbell model AVD1001A which was not displayed
- Fix: since the last update, the siren device (integrated in some base) had by error the following commands: *Refresh*, *Connected*, *Mode*, *Schedule state* which obviously did not work. These commands can be deleted on this device, they will no longer be created by the plugin.
- Fixed a minor error that could be displayed in the logs (without consequence) when a camera was not shared with Jeedom

## 2020-12-02

- New presentation of objects list
- Improved layout of device and commands configuration pages
- Add support of Arlo Essential
- Fix daemon on video doorbell if connected without base

## 2020-09-21

- Add support of 2 factors authentication ([see documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Add support of light on Arlo Pro3 and Arlo Ultra
- Add support of Arlo Prod3 Floodlight
- Fix daemon crash in case device is offline or not provisioned

## 2020-08-26

- Force configuration of the API key in localhost mode
- Automatic rotation of the API key on each update
- Cleanup of the layout for V4
- Removed an unnecessary "error" log during connection (because the daemon reconnects on its own if necessary)
- Added a log if double authentication is enabled on the plugin user because it is not yet supported

## 2020-08-02

- Fixed broken streaming and local recording features following Arlo changes (their new system seems slower than before)
- Urgent fix due to a change of url made during the night of July 31 to August 01 by Arlo : if you do not do this update the daemon will no longer be able to connect.

## 2020-07-08

- Fix demon when only a video doorbell exists (without base)

## 2020-06-18

- Add commands for modes on the widget for the Video Doorbell (when it is not linked to a base)
- Add info commands *IP*, *Luminosity*, *Temperature*, *Humidity* and *Quality of air* on the Arlo Baby
- Add management of the Arlo Baby night light: on / off, timer, brightness, color, color temperature and mode ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Add the lullaby management of the Arlo Baby: Play / Pause / Next, timer, Playlist, Volume, Repeat and random mode ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Widget optimization
- Fix management of the modes on the Arlo Baby which were not always correctly created
- Fix tooltips on the camera widget in v4

## 2020-06-4

- Urgent fix due to a change of URL at Arlo made during the night of June 3 to 4: if you do not do this update the demon will no longer receive the events (even if it is *OK*) and it won't be able to connect anymore soon probably.

## 2020-05-24

It is necessary to launch the installation of dependencies after installing this update even if they are already *OK*.

- Migration of daemon in python3
- Adapting permissions: non-admin users can view the streaming and media library.
- Improved management of options for visibility of commands (mainly battery, movement, etc.) on the cameras widget
- Added support for the Arlo Video Doorbell
- Optimizations of dependencies

## 2020-03-30

- Move documentations
- Optimisation: ne réinstalle plus ffmpeg si la bonne version a déjà été installée

## 2020-03-21

- Ajout de la vérification de version ffmpeg dans le check des dépendances
- Fixe erreur http 403 au démarrage du démon causé par un changement introduit par Arlo au login

## 2020-02-19

- Fix a streaming issue that could occur on Raspbian Stretch: force the use of ffmpeg 4.2.1 because version 4.2.2 seems corrupt (it is necessary to reinstall dependencies if you are in this case)

## 2020-02-14

- Fix a display problem in the 'Planning' mode
- Support plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) on top of Mail and Telegram to send notifications

## 2020-02-06

- Add possibility to activate 'Schedule' mode
- Add 'Send snapshot' command on cameras to send a snapshot to a custom notification command directly from a scenario

## 2020-01-22

- Fix an issue on the on/off commands of the Arlo Q and Arlo Qs cameras
- Fix a streaming issue on Raspbian Buster

## 2019-12-28

- Fix a streaming issue with Arlo Q and Arlo Qs cameras
- Add support for Arlo Pro3
- Add support of siren integrated in Arlo Pro3 & Arlo Ultra

## 2019-12-01

- Added a specific health page listing an overview of all Arlo devices
- Improved integration with the Jeedom mobile app
- The "Last Image" command now returns the relative path to the image

## 2019-09-26

- Adding live streaming
- remove "startStream"; and "streamURL" commands

## 2019-09-17

- Added local recording function
- Update to font awesome 5 (for Jeedom V4)
- Improved media library and added video playback
- Adapt widget
- Fix on/off commands on Arlo Baby

## 2019-09-10

- securing access to local snapshots
- Update to my.arlo.com domain following changes made by Arlo

## 2019-08-02

- Jeedom V4 and PHP 7.3 support
- Fix: snapshots not save correctly if Jeedom does not run in /var/www/html/
- Fix: default size of widgets

## 2019-07-19

- Adding mode commands to the Arlo Baby and Aro Q cameras widget
- Add On/Off and status commands to camera device
- Improve Library: added a button to delete a capture and display of the capture in full size
- Fix a problem with the daemon if the plugin is only used with an Arlo Baby camera

## 2019-06-26

- Add support for Arlo Go
- Add generic type on commands to prepare the integration with Jeedom mobile app

## 2019-06-21

- Add support for Arlo Lights
- Add support for Arlo Doorbells

## 2019-06-10

- Added a function to send the captures via Telegram or Mail (the corresponding plugins must be installed)
- Fix size of captures on the mobile widget
- Fix a bug on daemon startup if the password contains some special characters
- Improve heartbeat process
- Internal optimization of the plugin to prepare the integration of new Arlo device

## 2019-05-30

It is recommended to launch the installation of dependencies after installing this update even if they are already *OK*.

- Add support for Arlo Q
- Adapt charging status on the widget when the camera is lugged to the sector: display of a plug instead of a battery
- Fix issues with dependency compatibility
- Fix dependencies compatibility issues on *Debian Jessie*: if you are under Jessie, you must reinstall the dependencies even if they are already *OK*
- reduce the size of the plugin
- Fix image of Arlo Baby

## 2019-05-24

- Improve stability of the demon
- Change the default port to 55064 to avoid conflicts with the *RfPlayer* plugin

## 2019-05-13

- Improve camera widget and add display customization (in the *Display* tab of the advanced device configuration)
- Prevents the creation of inactive devices: if you have inactive devices in Arlo, they will not be created or synchronized with Jeedom
- Improved compatibility if multiple base stations exist on the Arlo account
- Fix a daemon crash if there is no base station (e.g. if used with only Arlo Q cameras)

## 2019-05-12

First stable release

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
