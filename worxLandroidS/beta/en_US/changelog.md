---
layout: default
title: WorxLandroidS Changelog
lang: en_US
pluginId: worxLandroidS
---

# Change log

## 2026-06-13

- Implementation of a new deployment workflow for documentation
- Fixing a warning in PHP 8
- Support for custom device images (Jeedom 4.5)
- Dependency update
- Jeedom v4.5 required
- Python 3.11 is required; it will be installed automatically if necessary.

## 2025-08-11

- Improved reconnection attempts in the event of an unexpected disconnection or unavailability of the WorxLandroid cloud
- Fixed a bug in the *Activity Report*
- Dependency update

## 2025-06-27

- Fixed the *Refresh* command, which was no longer working, and removed the *Update* command, which was working but performed the same action.
- Fix: When a connection issue to the Worx servers occurred, the daemon might fail to reconnect, and after about ten minutes of unsuccessful attempts, it would stop trying—even though the connection had been permanently interrupted—and remain in the "OK" status.
- Dependency update

## 2024-12-25

- Dependency update
- Icon update

## 2024-10-11

- Improved integration of Landroid Vision models
- Added error and status codes, along with descriptions, for Landroid Vision models
- Fixed an issue with the daemon starting on new Jeedom installations
- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Jeedom v4.4 required
- Debian 11 required

## 2024-06-11

- Remove the "Pause" image from the widget when the mower is paused
- Fix for dependency checking
- Daemon update
- Dependency update

## 2024-02-23

- Optimizing backup size
- New version of dependencies (paho-mqtt 2.0) and corresponding updates to the daemon

## 2023-12-21

- Minor change to the dependency installation script
- Updating dependency versions
- Compatibility with Python 3.9 / Python 3.7

## 2023-10-26

- Technical improvement to the daemon: switch to full asyncio
- Changes to dependency management to avoid potential conflicts with other plugins
- Change to the authentication server address due to a change in Worx; this resolves the "AuthorizationError: Unauthorized" issue

## 2023-10-02

- Encryption of the username and password in the database
- Fix for the commands to activate and deactivate additional modules

## 2023-08-31

- Plugin taken over by @Mips
- Update to the commands interface for Jeedom v4.3
- Jeedom v4.4 compatibility
- Added the activity report (which replaces the health page)
- Add information about the lawn mower: model, year of manufacture, cutting width
- Replacement of the "Zones" and "Schedules" tabs with a "My Lawn" tab, which contains:
  - General Information
  - Multi-zone configuration
  - Manual programming
  - Self-programming (if supported by your model)
- Added support for the Landroid Vision model
- Added support for the *Off Limits* module: current status, commands to enable and disable Off-Limits Zones and Shortcuts
- Addition of *Find My Landroid* module support: current status
- Added support for the *ACS* module: current status, activation and deactivation commands
- Added verification and validation of the plugin configuration
- Added the **Set Zone Distribution** command, which is an action/message type. You must specify the percentage of zones (in 10% increments). For example:
  - `100` or `100,0,0,0` => everything on zone 1
  - `0,0,0,100` => everything on zone 4
  - `20,30,20,30` => 20% zone 1, 30% zone 2 …
- Change to the behavior of the **Work Zone** command: the configuration of the distribution among zones is no longer modified, but the order is changed so that the next output corresponds to the selected zone
- Fixed an issue with the widget: additional commands weren't displaying

See details here <https://community.jeedom.com/t/version-beta-avril-2023/105197>

## November 21, 2020 by @sebsst

- Modification of the command for cutting the border (check model compatibility)

## June 6, 2020 by @sebsst

- Added a "Mowing Zone Management" tab. (starting distance + % allocation for each zone)
- Option to hide pitch and heading information

## May 29, 2020 by @sebsst

- Add information if there is no communication with the mower for more than 24 hours (unpair and re-pair via the Worx account)
- Change to time tracking.
- Added "Health" button to the plugin (reset cloud data to enable the change)
- Add information on tilt (lateral and frontal) and direction
- Attempt to clear error 500 if communication with the mower is not possible

## May 10, 2020 by @sebsst

- Template update: images from Antoinekl's Worklandroid widget + animation work by Tektek—thanks to them
- Fix to hide or show certain areas (planning_starttime allows you to hide or show the day in the schedule)
- You can edit mowing schedules from the widget
- Added blade lifespan management (enter the estimated lifespan in the device and save it, then reset the duration on the widget by clicking on the blades below the battery indicator)

## March 12, 2020 by @sebsst

- Fix for device initialization and first data refresh (+help from @Mips)

## May 8, 2019 by @sebsst

- Add an info field (virtualInfo) to concatenate multiple pieces of information from the plugin, separated by commas, for use with the Worx Landroid widget.
- Replace "planning/xxxx/xxx" with "planning_xxxxx_xxxx" following a change to the Jeedom core

## April 28, 2019 by @sebsst

- Various fixes
- Added the set_schedule function to modify the mowing schedule for a specific day. By default, this action is not visible. The goal is to schedule mowing using a scenario, but you can make it visible on the widget if needed.
- Expected format: day number; start time; duration in minutes; border
Examples:
  - 1;10:00;120;1 => Monday, starts at 10:00 a.m. for 120 minutes, mows the lawn
  - 0;08:00;300;0 => Sunday, starts at 8:00 a.m. for 300 minutes, do not mow the curb

## April 3, 2019 by @sebsst

- Add GPS coordinates if available

## November 7, 2018 by @sebsst

- The new version of the plugin requires you to recreate the devices, so you must delete the existing devices
- Multi-mower management
- Automatic detection of mower type
- Disable retry mode

## September 11, 2018 by @sebsst

- Added the "mower type" parameter: Landroid S version / Landroid M version (firmware 5.x)
(If you encounter any issues, you can check the "Reset settings" box in the plugin's configuration and save.)
- Addition of the "pause" feature

## July 9, 2018 by @sebsst

- Option to define your own widget for information-type commands to enable the display of additional data
- Modifying digital information types (this can also be done manually or by recreating the device)

## June 16, 2018 by @sebsst

- Modification of the installation script to attempt to resolve Mosquitto version issues (minimum version 1.4.1)
- Install Mosquitto version 1.5 if you are using Mosquitto version 1.3
- Fixes to the start/stop functions.
- Timeout settings if the Mosquitto server does not send any messages
- Change to the rain delay; missing in some cases

## June 9, 2018 by @sebsst

Adding new actions:

- Add mowing intervals after rain
- Added the off_today and on_today actions to make it easier to manage daily activities using scenarios (for holidays, for example)

Other changes:

- Widget is now customizable (color, transparency, etc.)
- Option to remove certain information: errorCode, statusCode, totalDistance, batteryChargeCycle, rainDelay
- Displaying the next mowing zone. This is the starting zone for the next mowing cycle or the current one.
- Switching to digital data to enable statistics (such as battery status over time)

## June 6, 2018 by @sebsst

Changing the frequency of information updates:

- Every 2 minutes while mowing
- Every 30 minutes outside of mowing periods
- upon request or upon receipt of an update to the operating schedule.

## June 4, 2018 by @sebsst

- Changing the daemon timeout and other Worx server connection settings
- Widget Design Adjustment
- Replacing the Mosquitto client ID

## May 2018 by @sebsst

Creating the plugin

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
