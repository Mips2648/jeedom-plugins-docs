---
layout: default
title: VMC (Zehnder/Storkair) Change Log
lang: en_US
pluginId: vmczehnder
---

# Change log

## 2026-08-18

- Dependency update

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency update
- Jeedom v4.5 required

## 2025-04-18

- Fixed an issue with the service reconfiguration that was not working in certain cases
- Customize the MQTT client ID to the format "zehnder2mqtt-[random ID]" to make monitoring easier

## 2024-12-25

- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-06-01

- Remote Service Compatibility with Debian 12
- Dependency update

## 2024-04-10

- Dependency update

## 2024-02-27

- Dependency update

## 2023-10-03

- Fixed a potential issue during the installation of dependencies
- Fixed a potential issue when connecting to the MQTT broker without a username and password

## 2023-09-30

- Complete rewrite of the plugin, which now uses MQTT for communication between Jeedom and the remote Raspberry Pi connected to the mechanical ventilation system
- Update to the device list page
- Improvements to password fields
- Dependency Management Update v4.2
- Jeedom v4.4 compatibility

> **Important**
>
> The plugin and the remote daemon require at least Debian Buster to run, including the remote Pi connected to the VMC.
>
> The plugin requires a working installation of the "MQTT Manager (MQTT2)" plugin. If this plugin is not yet installed on your system, it will be installed automatically with the update, but you will need to complete its configuration (see the *MQTT Manager* documentation).

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2021-02-06

- New layout for the list of items
- Improvements to the layout of the device configuration and commands

## 2020-06-18

- Bug fix for daemon installation

## 2020-06-15

- Redesign of the configuration pages in preparation for future updates to allow users to modify the VMC settings

## 2020-05-12

- Relocation of documentation

## 2020-01-29

- Added compatibility with the Jeedom mobile app: you can now control fan speed through the app
- Improved connection with the remote daemon
- Fix error message for connection errors

## 2019-08-03

- Updates to prepare for support of Jeedom V4 and PHP 7.3
- Use the plugin daemon instead of the generic one to avoid side effects on or with other plugins

## 2019-03-19

- Add a configured delay (visible in the "Config" tab of your VMC)
- Add usage counters (available as info commands and visible in the "Config" tab of your VMC)
- Add an action to reset the filter counter (in the "Config" tab of your VMC)
- Add a `filterError` command (binary) to indicate that filters need to be cleaned or replaced
- Adapt the device screen layout to match 3.3

## 2019-03-15

- Add local dependency management
- Change the sync interval with VMC to every minute instead of every 5 minutes
- Improve daemon management
- Add: Retrieve remote logs of the daemon (every 5 minutes)
- Add automatic update of the remote daemon after a plugin update
- Add Socat management on a remote Raspberry Pi (to connect the CCEase/ComfoSense module)

## 2019-03-02

- Reduce CPU usage of the remote daemon

## 2019-02-25

First stable release

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}})
