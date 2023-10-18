---
layout: default
title: WorxLandroidS changelog 
lang: en_US
pluginId: worxLandroidS
---

# Beta

- Technical improvement on the daemon: transition to full asyncio
- Change on dependency management to avoid potential conflicts with other plugins

# Stable

## 2023-10-02

- Encrypt username and password in database
- Fix on the activation and deactivation commands of additional modules

## 2023-08-31

Stable release of the changes that have been underway in beta since April, see below for all the details by date, but here is a summary:

- Taken over of the plugin by @Mips
- Update of the presentation of commands for Jeedom v4.3
- Compatibility Jeedom v4.4
- Add the activity report (which replaces the health page)
- Add information about the mower: model, year of production, cutting width
- Replace the zones & schedules tabs with a “My lawn” tab in which we find:
  - General information
  - Multi-zone setup
  - Manual schedule
  - Auto-schedule (if supported by your model)
- Add support for the Landroid Vision model

## 2023-07-10

- Add management of *Off Limits* module: current state, activation & deactivation
- Add management of *Find My Landroid* module: current state

## 2023-07-06

- Add management of *ACS* module: current state, activation & deactivation commands

## 2023-06-14

- Add check & verification of plugin configuration

## 2023-06-04

- Add the command **Define distribution of zones** of type action/message. The percentage of zones must be provided (in steps of 10%). For example:
  - `100` or `100,0,0,0` => 100% on zone 1
  - `0,0,0,100` => 100% on zone 4
  - `20,30,20,30` => 20% zone 1, 30% zone 2 ...

## 2023-05-17

- Change behavior of command **Working zone**: from now the configuration of the zones are not modified anymore but the order will so the next start will match the selected zone
- Fix on widget: additional commands were not displayed

## April 2023

See details here <https://community.jeedom.com/t/version-beta-avril-2023/105197>

## 2020-11-21 par @sebsst

- Modification of the command for cutting the border (compatibility of the models to be checked)

## 2020-06-06 par @sebsst

- added mowing area management tab. (starting distance + % distribution according to each zone)
- ability to hide tilt+direction info

## 2020-05-29 par @sebsst

- added information in case of no communication with the mower + 24 hrs (dissociate and associate again on the Worx account)
- change time entry.
- added plugin health button history (reset cloud data to enable mod)
- added information on inclination (lateral and frontal) and direction
- attempt to avoid error 500 if communication is not possible with the mower

## 2020-05-10 par @sebsst

- Change of the template: use of Antoinekl's images from the worklandroid widget + Tektek's work for the animations, thanks to them
- correction to hide or show certain areas (planning_starttime allows you to hide or show the day in the schedule)
- Mowing times can be edited from the widget
- addition of blade lifespan management (enter the estimated lifespan in the equipment and save it, then reset the duration on the widget by clicking on the blades under the battery indicator)

## 2020-03-12 par @sebsst

- Correction for the initialization of the equipment and the 1st data refresh (+help from @Mips)

## 2019-05-08 par @sebsst

- Add an info (VirtualInfo) to concatenate several plugin info separated by commas for using the Worx Landroid widget.
- replacement of planning/xxxx/xxx information by planning_xxxxx_xxxx following a change in the Jeedom core

## 2019-04-28 par @sebsst

- Various corrections
- Add the set_schedule function to change the mowing schedule for a given day. By default the action is not visible. The aim is to do planning using a scenario but it is possible to make it visible on the widget if necessary.
- Expected format: day number;departure time;duration in minutes;border
Examples:
  - 1;10:00;120;1 => Monday, starting at 10:00 for 120 minutes, cut the border
  - 0;08:00;300;0 => Sunday, start at 08:00 for 300 minutes, don't cut the border

## 2019-04-03 par @sebsst

- Add GPS coordinates if available

## 2018-11-07 par @sebsst

- The new version of the plugin requires the recreation of the equipment, so you must delete the existing equipment
- Multi-mower management
- Automatic detection of the type of mower
- Delete retry mode

## 2018-09-11 par @sebsst

- Addition of the mower type parameter: Landroid version S / Landroid version M (firmware 5.x)
(in case of problems you can check reset the settings in the plugin configuration and save)
- Add the “pause” function

## 2018-07-09 par @sebsst

- Ability to define your own widget for info type commands to allow the display of additional data
- Modifying the types of digital information (can also be done manually or by recreating the device)

## 2018-06-16 par @sebsst

- modification of the installation script to try to solve Mosquitto version problems (mini version 1.4.1)
- Install Mosquitto 1.5 is Mosquitto 1.3 is installed
- Corrections to start/stop features.
- Timeout changes if the Mosquitto server does not send any messages
- Change of the rain delay missing in some cases

## 2018-06-09 par @sebsst

Add new actions:

- Add mowing times after rain
- Add off_today/on_today actions to facilitate the management of today's activity by scenarios (for example for public holidays)

Other changes:

- Widget now editable (color/transparency...)
- Possibility to remove some info: errorCode, statusCode, TotalDistance, BatteryChargeCycle, RainDelay
- Display the next mowing area. This is the starting area for the next mowing or the current mowing.
- Change of information to numeric to allow statistics to be made (battery evolution for example)

## 2018-06-06 par @sebsst

Changing the update frequency of information:

- Every 2 minutes while mowing
- Every 30 minutes outside of mowing periods
- upon request or while sending update of the operating schedule.

## 2018-06-04 par @sebsst

- Change daemon delay and other Worx server connection settings
- Widget design adjustment
- Mosquitto client id replacement

## May 2018 by @sebsst

Plugin creation

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
