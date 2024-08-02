---
layout: default
title: VMC (Zehnder/Storkair) Changelog
lang: en_US
pluginId: vmczehnder
---

# Beta

n/a

# Stable

## 2024-06-01

- Compatibility with Debian 12 for remote service
- Update dependencies

## 2024-04-10

- Update dependencies

## 2024-02-27

- Update dependencies

## 2023-10-03

- Fix a potential problem when installing dependencies
- Fix a potential problem when connecting to the MQTT broker without a user and password

## 2023-09-30

- Complete rewrite of the plugin, which is now based on mqtt for exchanges between Jeedom and the remote pi connected to the VMC.
- Update devices list screen
- Improve password fields
- Update dependencies management to v4.2
- Compatibility Jeedom v4.4

> **Important**
>
> The plugin and the remote daemon require at least Debian Buster to work, including for the remote pi connected to the VMC.
>
> The plugin requires a functional installation of the "MQTT Manager (MQTT2)" plugin, if this plugin is not yet present on your system, it will be installed automatically with the update but you will need to finalize its configuration (see *MQTT documentation Manager*).

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2021-02-06

- New presentation of objects list
- Improved layout of device and commands configuration pages

## 2020-06-18

- fix daemon installation

## 2020-06-15

- Redesign of configuration pages for future updates to allow modification of HRV configurations

## 2020-05-12

- Move documentations

## 2020-01-29

- Add compatibility with Jeedom mobile App: it's now possible to control fan speed via the app
- Improve connection with remote daemon
- fix error message on connection error

## 2019-08-03

- Updates to prepare support of Jeedom V4 and PHP 7.3
- Use plugin daemon instead generic to avoid side impact on/with others plugins

## 2019-03-19

- add configured delay (visible in config tab of your VMC)
- add usage counters (available as info commands and visible in config tab of your VMC)
- add action to reset filters counter (in config tab of your VMC)
- add filterError command (binary) to indicate that filters need to be cleaned or replaced
- adapt device screen layout to match 3.3

## 2019-03-15

- Add local dependencies management
- Change sync with VMC every minute instead of 5 minutes
- Improve daemon management
- Add get remote logs of daemon (every 5 min.)
- Add automatic update of remote daemon after plugin update
- Add socat management on remote pi (to connect CCEase/comfoSense module)

## 2019-03-02

- Reduce CPU usage of remote daemon

## 2019-02-25

First stable release

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}})
