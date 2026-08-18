---
layout: default
title: myVaillant Change Log
lang: en_US
pluginId: vaillantmultimatic
---

# Change log

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Support for custom device images
- Dependency update
- Jeedom v4.5 required

## 2026-01-01

- Default refresh interval of 15 minutes (can be changed in the settings)
- Dependency update

## 2025-11-08

- Added a **Water Pressure** command to systems that have this data. You must create any missing commands on the *System* device if you need them.
- Added support for *Circuits*. A new device will be created for each existing circuit in your system; for now, it will report two status commands: **Status** and **Temperature**.
- Dependency update

## 2025-06-27

- Customize the commands based on the controller model (VRC700 or others); if necessary, you'll need to create any missing commands using the corresponding button on the device page
- Dependency update

## 2025-02-24

- Dependency update

## 2024-12-25

- Dependency update
- Icon update

## 2024-10-11

- Dependency update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-06-11

- Internal daemon modification
- Dependency update

## 2024-04-15

- Fixed zone migration when multiple zones exist

## 2024-04-08

- Added compatibility with myVaillant and removed compatibility with vaillantMULTIMATIC: there are many changes, so don't forget to reconfigure the plugin. Most of your devices will be migrated, but there may be some cases where this isn't supported yet. See also [this thread on the community](https://community.jeedom.com/t/nouvelle-app-myvaillant/123431)
- Optimizing backup size
- Adding room icons
- Adding information about the controller

> **Attention**
>
> This version requires you to reinstall the dependencies even if they were already installed correctly.
> Installing the dependencies may take some time depending on your machine's processing power (up to 1 hour) and your version of Debian (very fast on Debian 12)

## 2023-08-21

- Internal changes to dependency management

## 2023-06-06

- Update to internal libraries

## 2023-05-20

- Improvements to password fields
- Jeedom v4.4 compatibility
- Added links to the beta documentation

## 2023-01-25

- Update to internal libraries

## 2022-11-21

- Fix the issue with the daemon connecting to the Vaillant cloud

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-08-17

- Update to internal libraries

## 2022-03-18

- Added a table-style view of the equipment list for Jeedom 4.2
- Fix installation of dependencies

## 2022-01-25

- Added **Day Speed** and **Night Speed** action and info commands for *Ventilation* devices of type *Ventilation*
- Added a **Forced Mode Duration** command to *Room*-type devices, allowing you to set, on a per-room basis, the duration of forced mode the next time this mode is activated.

## 2021-12-11

- Simplified setpoint management for rooms: the plugin will automatically adjust the forced setpoint or manual setpoint based on the room's current mode
- Improvement to status feedback when a command is executed: only the affected device is refreshed, allowing for faster feedback
- Added a **Refresh** action command for devices that support it

## 2021-11-04

- Generic Type Correction
- Retrieving battery information from devices of the *Valves* and *Thermostats* types (see documentation)

## 2021-10-17

- Fix error message in the log when a connection fails
- Removed the *Vacation Mode On* command, which should never have existed (it did not perform any action). Use the *Set Vacation Dates* and *Set Vacation Setpoint* commands to activate vacation mode
- Improvements to dependency checking

## 2021-09-26

- Added the ability to configure the update frequency

## 2021-09-20

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
