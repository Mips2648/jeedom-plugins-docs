---
layout: default
title: Changelog Vaillant multiMATIC
lang: en_US
pluginId: vaillantmultimatic
---

> **Attention**
>
> This plugin is no longer compatible with the vaillantMULTIMATIC system but only myVaillant. If you have not yet migrated to myVaillant, do not install this version of the plugin.

# Beta

- Add a command info **Water pressure** on systems with this info. You must create the missing commands on *System* device if you need it.
- Add *Circuits* support. A new device will be created for each existing circuit in your installation with two command infos **Status** and **Temperature** for the moment.
- Update dependencies

# Stable

## 2025-06-27

- Adaptation of commands according to the controller model (VRC700 or others); if necessary, you will need to create the missing commands via the corresponding button in the device configuration page
- Update dependencies

## 2025-02-24

- Update dependencies

## 2024-12-25

- Update dependencies
- Icon update

## 2024-10-11

- Update dependencies
- Jeedom v4.4 required

## 2024-09-16

- Update dependencies
- Plugin translation in English, German, Spanish, Italian, Portuguese
- Debian 11 or higher required

## 2024-06-11

- Internal modification of daemon
- Update dependencies

## 2024-04-15

- Fix migration of zones if several zones exist

## 2024-04-08

- Add compatibility with myVaillant and remove compatibility with vaillantMULTIMATIC: a lot of changes, don't forget to reconfigure the plugin. Most of your equipment will be migrated, there may be cases where this is not yet managed. See also [this topic on community](https://community.jeedom.com/t/nouvelle-app-myvaillant/123431)
- Optimizing the size of backups
- Add room icons
- Add controller information

> **Attention**
>
> This version requires reinstalling dependencies even if they were already OK.
> Installing dependencies can take time depending on the power of your machine (up to 1 hour) and your version of Debian (very fast under Debian 12)

## 2023-08-21

- Internal change in dependency management

## 2023-06-06

- Update of internal libraries

## 2023-05-20

- Improve password fields
- Compatibility Jeedom v4.4
- Add links to documentation in beta

## 2023-01-25

- Update of internal libraries

## 2022-11-21

- Fix Vaillant cloud connection problem

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-08-17

- Update of internal libraries

## 2022-03-18

- Add table display mode of the list of device for Jeedom 4.2
- Fix dependencies install

## 2022-01-25

- Added **Day speed** and **Night speed** action and info commands on *Ventilation* type device
- Added a **Forced mode duration** command on *Room* type device allowing to define, per room, the duration of the forced mode during the next activation of this mode.

## 2021-12-11

- Simplification of the management of the setpoint on the rooms: the plugin will automatically adapt the forced setpoint or the manual setpoint according to the current mode of the room
- Improvement in status feedback when a command is executed: only the impacted device is refreshed, which allows faster feedback
- Add an action command ** Refresh ** on the device supporting it

## 2021-11-04

- Fix generic types
- Reporting of battery information on *Valve* and *Thermostat* device (see documentation)

## 2021-10-17

- Fix error message in log in case of connection issue
- Removed the *Vacation Mode On* command that shouldn't have existed (it didn't do any action). You must use the *Define holiday dates* and *Define holiday temperature* commands to activate the holiday mode
- Improve dependencies check

## 2021-09-26

- Add possibility to configure the update frequency

## 2021-09-20

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
