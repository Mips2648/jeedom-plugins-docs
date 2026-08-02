---
layout: default
title: iRobot release notes
lang: en_US
pluginId: kroomba
---

# Change log

## 2026-08-02

- Dependency update
- Fix for saving configurations during discovery via the cloud
- Implementation of a new deployment workflow for documentation
- Dependency update
- Jeedom v4.5 required
- Python 3.11 is required; it will be installed automatically if necessary.

## 2026-01-02

- Improved validation of the presence of the password during discovery in cloud mode
- Dependency update

## 2025-06-27

- Adding logs

## 2025-04-03

- Internal daemon modification
- Change to the configuration backup process to prevent potential duplicates in cases where your robot does not have a static IP address
- Added the "local" method for discovering robots, in addition to the existing cloud-based method (robots are still controlled locally afterward)
- Adapting the MQTT client ID to the format "prefix-[random ID]" to facilitate monitoring
- Dependency update

## 2025-02-24

- Dependency update

## 2024-12-25

- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-06-11

- Internal daemon modification
- Dependency update

## 2024-04-16

- Dependency update
- Update to the minimum Python version for Debian 12 compatibility. You will need to reinstall the dependencies if you are still running Debian 10.

## 2024-04-08

- Fix for dependency checking

## 2024-02-26

- Optimizing backup size

## 2024-02-16

- Added the **Enable Child Lock** and **Disable Child Lock** commands
- Minor fix for an error that occurs when the daemon is stopped
- New version of dependencies (paho-mqtt 2.0) and corresponding updates to the daemon

## 2023-08-30

- Update region/room commands if the map IDs are changed by iRobot. When this happens, you must manually restart a cleaning session for the room so that the plugin can update the command.

## 2023-08-21

- Added support for cleaning by room
- Added the following status commands for Braava: **Wipe Type**, **Lid Open**, **Tank Present**, **Tank Level**
- Added commands to configure cleaning preferences (on compatible models; tested on the Braava jet m6):
  - **Liquid Volume** (default): *Eco*, *Standard*, *Ultra*
  - **Overlap** of the default wash path: *A little*, *More*, *A lot*
- Improvement: The daemon will no longer connect to robots whose corresponding devices are disabled in Jeedom
- Code cleanup and removal of unnecessary dependencies

## 2023-05-20

- Jeedom v4.4 compatibility
- Fixed a daemon crash if the robot's name contained a special character

## 2023-03-26

- Fixes and minor optimizations

## 2022-11-21

> **Important**
>
> You must re-run the installation of the dependencies after installing this update, even if they are already *OK*.
>
> After installing this new version, you will need to rescan your robots (see documentation), and a new device will be created for each robot.
> Use the new tool in Jeedom v4.3 to migrate your commands, or do it manually; then the old devices can be removed, as they will no longer be needed.

- The plugin was taken over by @Mips and completely redesigned; see <https://community.jeedom.com/t/nouvelle-version-du-plugin-roomba-cherche-testeurs-volontaires/86743> for more details
- Jeedom v4.2 or later required
- *MQTT Manager* (MQTT2) plugin required
- Implementing a daemon to maintain the connection with the robot
- Communication via MQTT between the daemon and Jeedom
- Discovering and setting up automated robots (iRobot cloud access required during setup)
- Update to the commands interface for Jeedom v4.3
- Added a button to recreate missing commands based on the configuration (done automatically when the plugin is updated)
- Added the **Drain** command (works only on compatible models)
- Added the **Tank** info command (works only on compatible washer models)
- Added the following info commands: **Number of cleaning tasks**, **Number of successful tasks**, **Number of failed tasks**, **Number of automatic empties**, **Number of dirt detections**, **Number of blockages**, **Number of canceled tasks**
- Added the **Error** and **Child Safety** info commands

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
