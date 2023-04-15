---
layout: default
title: Changelog Vaillant multiMATIC
lang: en_US
pluginId: vaillantmultimatic
---

# Beta

- Compatibility Jeedom v4.4

# Stable

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
