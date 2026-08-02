---
layout: default
title: Miele change log
lang: en_US
pluginId: miele
---

# Change log

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Dependency update

## 2026-04-12

> **Attention**
>
> Major overhaul of the plugin: the entire Miele@Home API implementation has been rewritten in Python, and the plugin now uses a daemon instead of cron. After this update, you will need to re-establish the connection between Jeedom and Miele@Home and log in again via the plugin's configuration page.

- Plugin redesign: implementation of a Python daemon to connect to the Miele@Home API and removal of cron jobs
- Real-time status updates (previously, you had to wait for the minute-by-minute cron job)
- Added a **Mode** action command for compatible devices (refrigerator, freezer, wine cooler)
- Added a **Start Program** action command for compatible devices (washing machine, dryer, dishwasher, oven, coffee maker, robot vacuum)
- Added a binary **Status** command that indicates whether the device is on or off. The **On** and **Off** commands are linked to it
- Renamed the old command **Status** to **Status Description** to avoid conflict with the new command and better reflect its actual content
- Customization of the **Time Remaining**, **Start in**, and **Time Elapsed** commands; see documentation
- Dependency update
- Python 3.11 is required; it will be installed automatically if necessary.

## 2025-04-18

- Improvement to generate, whenever possible, only the commands relevant to the type of device
- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-06-11

- Added additional temperature information commands for devices with more than one temperature sensor (e.g., combination devices)

## 2024-04-10

- Internal modification to dependency management for compatibility with Jeedom v4.4
- Dependency update

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-03-10

- Fixed a crash that occurred during the synchronization of consumption data following a change in the behavior of the Miele@Home API

## 2022-02-22

- **Water Usage** and **Energy Usage** commands have been added to devices that support this feature (see documentation). You must create the missing commands on the device if you want to use these new commands.

## 2021-12-20

- Added the **Set Ventilation Level** and **Set Colors** commands to the hosts
- Added **Turn On** and **Turn Off** commands for devices that support this feature (you'll need to create the missing commands on the device if you want to use these new commands)
- Fix due to a change in the behavior of the Miele@Home API

## 2021-11-13

- Miele@Home API update
- Add an "**Program Name**" info command that will return the name of the currently running program on devices that support this feature (you must create any missing commands on the device if you want to use this new command)
- Change in authentication mode for enhanced security
- New layout for the list of objects in the device configuration
- Improvements to the layout of the device configuration and commands
- Added a table-style view of the equipment list for Jeedom 4.2

## 2020-08-24

- Layout Cleanup for Version 4

## 2020-05-04

- Fixed a dependency issue on Jeedom Smart

## 2020-04-13

- Added authentication status to the plugin configuration, along with connection management
- Added the health summary to the Jeedom health page
- Added a dedicated health page listing an overview of all devices

## 2020-04-06

- Added default icons to certain action commands
- Displaying units on the command screen
- Added the ability to invert binary values

## 2020-04-03

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
