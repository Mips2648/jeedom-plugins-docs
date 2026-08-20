---
layout: default
title: Gardena-Husqvarna Change Log
lang: en_US
pluginId: gardena
---

# Change log

## 2026-08-20

- Dependency update

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Dependency update
- Python 3.11 is required; it will be installed automatically if necessary.
- Added the following commands: **Cutting Height**, **Cutting Type**, **Progress**, **Last Completion** date, and **Last Abandonment** date by zone for Husqvarna Automower models.
- Added an **External Restriction** info command that explains the reason for the scheduling restriction. Please use the *Create Missing Commands* button on the device page to add it.

## 2026-01-01

- Fixed a bug in the **Cutting Height Adjustment** command
- Improved cleanup of memory used during a new synchronization
- Dependency update

## 2025-08-11

- Migration to API v2 for Gardena Smart System devices, which now returns new values for *Activity* and *Error* information
- Dependency update

## 2025-03-23

- Fix for the Husqvarna Automower v2 API regarding GPS position data
- Fix for Husqvarna mowers that don't have a *Work Zone*
- Masking key configurations and application secrets
- Dependency update

## 2025-03-13

- Fix for status responses following the Husqvarna Automower v2 API
- Removal of compatibility with Husqvarna Automower API v1 (which has been discontinued since March 1)
- Dependency update

## 2025-02-22

- Increased connection timeout because the Husqvarna servers seem to be taking a little longer to respond
- Compatibility with Husqvarna Automower API v2 (required starting March 1)
- For *Husqvarna* mowers: addition of a **Reset Blade Usage** action that allows you to reset the blade usage time
- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-07-02

- Minor fix
- Dependency update

## 2024-06-11

- Major rewrite of the daemon's code: it should be even **more stable**, **faster**, and use slightly **fewer resources** on average
- Added the **Default Duration** info & action command to all devices (Gardena & Husqvarna) that have action commands allowing you to specify a duration: previously, the default duration was hard-coded if not specified when using one of these commands; now, the plugin will use the value of this new **Default Duration** command
- For *Husqvarna* mowers: Add **Start Zone xxx** actions (one per existing zone)
- For *Husqvarna* mowers: addition of **exclusion zone management**. For each zone, an "active/inactive" switch will be created, resulting in 3 commands: one binary data point and 2 actions (on/off)
- Added a task to automatically refresh *Husqvarna* mowers that support the **exclusion zones** feature
- Internal dependency update
- This version **requires an update to the dependencies**; in principle, this will be done automatically during the update

## 2024-04-08

- Fix for dependency checking

## 2024-03-28

- Minor change to maintain compatibility with Debian 10 => Plan a migration to Debian 11

## 2024-02-26

- Improvement: Distinction between the two *Smart Sensor* models: the image and list of commands are customized based on the model.
- Optimizing backup size

## 2023-10-02

- Added descriptions for new error codes for Husqvarna robots

## 2023-08-21

- Improvements to the daemon log
- Fixed the **Start Manual Mode** and **Return to Base** commands for Husqvarna robots: the duration passed as a parameter for the command was interpreted as hours instead of minutes
- Internal changes to dependency management

## 2023-06-30

- Fixes a daemon crash with Husqvarna mowers without a GPS module

## 2023-05-24

- Changes to dependency management to avoid potential conflicts with other plugins

## 2023-04-05

- Added commands for statistical information for Husqvarna robots (see documentation for the list)
- Minor fix: prevents the daemon from restarting twice in certain cases when the socket connection has been interrupted

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-06-30

- Fixes a potential daemon crash during connection renewal

## 2022-06-11

- Due to a change in the authentication method made by Gardena / Husqvarna, you will need to reconfigure the plugin: the email and password are no longer required, but the secret key is now required.

## 2022-05-22

- Fixed: Action commands/messages for Husqvarna robots were not working.
- Fixed: The **Remaining Time** info command for Husqvarna robots was never updating.

## 2022-04-30

- Real-time updates for Husqvarna robots, resulting in the removal of the update cron job, which is no longer necessary. There is therefore no longer a limit on the number of updates.
- Added the following commands for Husqvarna robots:
  - **Cutting Height**, which allows you to determine and set the cutting height
  - **Headlights** that allow you to check and set the headlight mode
  - **Last Report Time** and **Next Departure Time**
  - **Scheduling restriction** explaining the reason for the exception during normal scheduling
  - **Positions** containing the history of the robot's last 50 positions (the **Last Position**, **Latitude**, and **Longitude** commands still exist and show the last known position)
- Added a widget to display position history on a map, to be applied to the **Positions** command (see documentation) (contributed by @t0urista)

## 2022-03-12

- Fixed dependency check

## 2022-02-11

- Minor changes to the layout of the configuration screens

## 2021-10-04

- Added 3 commands that display the GPS position on the Husqvarna mower: **Latitude**, **Longitude**, and **Position**
- Dependency update: This update requires reinstalling the dependencies; this should happen automatically when the plugin is updated.

## 2021-08-22

- Adding a **Time Remaining** command to Gardena Smart Mowers
- Added an update to the **Time Remaining** information for Husqvarna Automowers (calculated internally by the plugin) only when using the **Start Manual Mode** or **Return to Base** commands
- Added a table-style view of the equipment list for Jeedom 4.2

## 2021-07-12

- Added a configurable cron job for updating Husqvarna mowers in the plugin settings.
- Added the ability to select the pause duration (in minutes) using the **Pause Schedule** command. To enable this option, you must delete the existing command on the device (do not delete the device itself), save, and then use the *Create Missing Commands* feature so that the command is recreated with the correct configuration. You will need to update your scenarios to include the new command.
- Moved the plugin to the "Nature" category.

## 2021-03-14

- Fix the version of a dependency due to a bug in its latest version (see <https://github.com/websocket-client/websocket-client/commit/3112b7d75b1e5d65cb8fdfca7801606649044ed1#commitcomment-48226116>). If you installed the plugin and its dependencies after March 3, you will likely need to reinstall the dependencies; if everything is working fine for you, this is not necessary.
- New layout for the list of items
- Improvements to the layout of the device configuration and commands

## 2020-10-24

- Fixed an issue with Smart Irrigation Control that prevented the daemon from starting properly
- Increase in the maximum duration limit (from 1 hour to 6 hours) for manually starting Gardena mowers.

## 2020-08-29

- Added a **Last Error** command for the Gardena Smart Socket, Water Control, and Irrigation Control. Please use the *Create Missing Commands* button on the device page to add it.
- Added the *Last Error* information to the health page
- Fix a problem with the daemon starting on Husqvarna Automower mowers

## 2020-08-27

- Adding a **Last Error** command to Gardena Smart Mowers
- Removal of the "Time Remaining" command on Gardena Smart Mowers because the information is not available
- Fixed an issue with the "Activity" command on the Gardena Smart Mower that wasn't updating
- Fixed an issue with an incorrect image link on the Gardena Smart Mower configuration page

## 2020-08-22

- Improvements to the reconnection process in the event of a network outage or disconnection from the Gardena API
- Layout Cleanup for Version 4
- Fix a dependency issue on certain installations

## 2020-08-16

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
