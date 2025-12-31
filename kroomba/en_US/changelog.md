---
layout: default
title: iRobot changelog 
lang: en_US
pluginId: kroomba
---

# Beta

n/a

# Stable

## 2026-01-01

- Better validation of password presence during cloud discovery
- Update dependencies

## 2025-06-27

- Add logs

## 2025-04-03

- Internal modification of daemon
- Modification to configuration saving to avoid potential duplication when your robot doesn't have a fixed IP address
- Addition of a "local" method for discovering robots in addition to the existing method via the cloud (robots are still controlled locally afterwards)
- Adaptation of the mqtt clientID as "prefix-[random ID]" for easier monitoring
- Update dependencies

## 2025-02-24

- Update dependencies

## 2024-12-25

- Update dependencies
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Update dependencies
- Plugin translation in English, German, Spanish, Italian, Portuguese
- Debian 11 or higher required

## 2024-06-11

- Internal modification of daemon
- Update dependencies

## 2024-04-16

- Update dependencies
- Update minimum python version for Debian 12 compatibility. An installation of the dependencies will be required if you still have Debian 10.

## 2024-04-08

- Fix on dependencies check

## 2024-02-26

- Optimizing the size of backups

## 2024-02-16

- Add of **Activate child safety** and **Deactivate child safety** commands
- Minor fix of an error on daemon disconnection
- New version of the dependencies (paho-mqtt 2.0) and adaptation of the daemon accordingly

## 2023-08-30

- Update region/part commands in the event that card IDs are changed by iRobot. When this happens, you must restart a room cleaning manual for the plugin to update the command.

## 2023-08-21

- Add clean by room 
- Add the following info commands to Braava: **Wipe type**, **Cover open**, **Tank present**, **Tank Level**
- Add commands to configure cleaning preferences (on compatible model, tested on Braava jet m6):
  - **Liquid quantity** by default: *Eco*, *Standard*, *Ultra*
  - **Overlap** of the default wash path: *Somewhat*, *More*, *A lot*
- Improvement: the daemon will no longer connect to robots whose corresponding device is disabled in Jeedom
- Clean up code and remove unnecessary dependencies

## 2023-05-20

- Compatibility Jeedom v4.4
- Fix demon crash if the robot name contained a special character

## 2023-03-26

- Minor fixes & optimizations

## 2022-11-21

> **Important**
>
> It is necessary to relaunch the installation of the dependencies after the installation of this update even if they are already *OK*.
>
> After the installation of this new version, you will have to redo a discovery of your robots (see documentation) and a new device will be created for each robot.
> Use the new tools present on Jeedom v4.3 to migrate your commands or do it manually then the old device can be deleted, it will no longer be used.

- Pickup of the plugin development by @Mips and complete redesign of the plugin, see <https://community.jeedom.com/t/nouvelle-version-du-plugin-roomba-cherche-testeurs-volontaires/86743> for more details
- Jeedom v4.2 required
- *MQTT Manager* plugin (MQTT2) required
- Implementation of a daemon to keep the connection with the robot
- Communication via MQTT between the daemon and Jeedom
- Auto discover and configure robots (iRobot cloud access required during configuration)
- Update of the presentation of commands for Jeedom v4.3
- Add a button to create missing commands according to the configuration (done automatically during the plugin update)
- Add **Drain** command (only works on compatible models)
- Add **Tank** info command (only works on compatible scrubber models)
- Add info commands: **Number of cleaning tasks**, **Number of successful tasks**, **Number of failed tasks**, **Number of automatic dumps**, **Number of dirt detections**, **Number of blocks**, **Number of canceled tasks**
- Added **Error** and **Child safety** info commands

## 2020-05-24 by @vedrine

- New icons for states by @kiboost.

## 2020-05-23 by @vedrine

- New states hmMidMsn (Recharging needed) and hmPostMsn (task completed)

## 2019-09-21 by @vedrine

- Switching to Python 3
- Fixed issue in translations
- New bash script for installing dependencies
- Templates for Jeedom V4
- Jeedom V3 and V4 compatibility

## 2019-08-13 by @vedrine

- Compatibility php 7.3 and font awesome 5
- Minimum version of Jeedom required: 3.3

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
