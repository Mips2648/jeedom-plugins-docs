---
layout: default
title: iRobot changelog 
lang: en_US
pluginId: kroomba
---

# Beta

N/A

# Stable

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
