---
layout: default
title: Changelog Vaillant multiMATIC
lang: en_US
pluginId: vaillantmultimatic
---

# 2022-01-25

- Added **Day speed** and **Night speed** action and info commands on *Ventilation* type device

- Added a **Forced mode duration** command on *Room* type device allowing to define, per room, the duration of the forced mode during the next activation of this mode.

# 2021-12-11

- Simplification of the management of the setpoint on the rooms: the plugin will automatically adapt the forced setpoint or the manual setpoint according to the current mode of the room
- Improvement in status feedback when a command is executed: only the impacted device is refreshed, which allows faster feedback
- Add an action command ** Refresh ** on the device supporting it

# 2021-11-04

- Fix generic types
- Retrieve battery information on _Valve_ and _Thermostat_ device (see documentation)

# 2021-10-17

- Fix error message in log in case of connection issue
- Removed the *Vacation Mode On* command that shouldn't have existed (it didn't do any action). You must use the *Define holiday dates* and *Define holiday temperature* commands to activate the holiday mode
- Improve dependencies check

# 2021-09-26

- Add possibility to configure the update frequency

# 2021-09-20

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
