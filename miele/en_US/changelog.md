---
layout: default
title: Miele changelog
lang: en_US
pluginId: miele
---

# Beta

> **Warning**
>
> Major update of the plugin : the entire Miele@Home API implementation has been rewritten in Python, and the plugin now uses a daemon instead of cron. It will be necessary to redo the link between Jeedom and Miele@Home and to log in again via the plugin's configuration page after this update.

- Major plugin update: implementation of a Python daemon to connect to the Miele@Home API and removal of crons
- Real-time status feedback (previously you had to wait for the cron minute)
- Add an action command **Mode** on compatible appliances (fridge, freezer, wine cabinet)
- Added an action command **Start program** on compatible appliances (washing machine, tumble dryer, dishwasher, oven, coffee machine, vacuum cleaner).
- Added a binary command **State** which provides information on whether the device is on or off. The **On** and **Off** commands are linked to it.
- Rename the old command **Status** to **Status description** to avoid conflict with the new command and better match its actual content.
- Update dependencies
- Python 3.11 required, it will be installed automatically if necessary.

# Stable

## 2025-04-18

- Improvement to create, if possible, only relevant commands for the type of device
- Update dependencies
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Plugin translation in English, German, Spanish, Italian, Portuguese
- Debian 11 or higher required

## 2024-06-11

- Add additional temperature information commands for device with more than one temperature probe (e.g. combined devices)

## 2024-04-10

- Internal change in dependency management for compatibility with Jeedom v4.4
- Update dependencies

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-03-10

- Fixed a crash when synchronizing consumption information due to a change in behavior of the Miele@Home API

## 2022-02-22

- Add commands **Water consumption** and **Energy consumption** commands on appliances supporting this functionality (see documentation), you must create the missing commands on the device if you wish to have these new commands

## 2021-12-20

- Add commands **Set ventilation step** and **Set colors** on hood
- Add commands **Power on** and **Power off** on appliances supporting this functionality (you must create the missing commands on the device if you wish to have these new commands)
- Fix due to a change in the Miele@Home API behavior

## 2021-11-13

- Update Miele@Home API
- Add an info command **Program name** which will return the name of the current program on devices supporting this functionality (you must create the missing commands on the device if you wish to have this new command)
- Change authentication mechanism to improve security
- New presentation of objects list in device configuration
- Improved layout of device and commands configuration pages
- Add table display mode of the list of device for Jeedom 4.2

## 2020-08-24

- Cleanup of the layout for V4

## 2020-05-04

- Fix a dependency issue on Jeedom Smart

## 2020-04-13

- Add authentication status and connection management in plugin configuration
- Add plugin health summary in Jeedom health page
- Added a specific health page listing an overview of all appliances

## 2020-04-06

- Add default icons on some actions commands
- Display units in commands tab
- Add possibility to invert binary values

## 2020-04-03

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
