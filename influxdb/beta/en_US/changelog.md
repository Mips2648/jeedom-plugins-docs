---
layout: default
title: InfluxDB change log
lang: en_US
pluginId: influxdb
---

# Change log

## 2026-08-03

- Dependency update

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Fixed a rare bug in Debian 12/PHP 8
- Dependency update

## 2025-08-11

- Change to the InfluxDB v1.8+ integration: The default data retention policy is no longer specified; it will be determined by InfluxDB based on the database configuration.
- Dependency update

## 2025-06-27

- Added an advanced setting: *Total Retry Time* which sets the maximum total time allowed for sending attempts to Influx, regardless of the number of retries, timeouts, and the interval between each attempt.
- PHP 8.4 compatibility

## 2024-12-25

- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-08-28

> **Attention**
>
> The plugin no longer supports versions of InfluxDB < 1.8; you must have a version of InfluxDB >= 1.8 or >= 2.0. Update your InfluxDB before updating the plugin (see the official InfluxDB documentation for instructions).
>
> You must be running Debian 11 Bullseye or later for the plugin to work. If you are running Debian 10, do not install the update.

- Improvements to password fields
- Support for InfluxDB versions < 1.8 has been discontinued, primarily to ensure the plugin's compatibility with Debian 12 and PHP 8
- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese

## 2024-04-10

- Internal changes to dependency management for compatibility with Jeedom v4.4
- Jeedom v4.2 or later required
- Dependency update

## 2023-02-06

- Added a new export mode: *History*, which allows you to export the entire history from the previous day every night
- Update to the commands interface for Jeedom v4.3
- Fix: The cron job was not properly removed when the plugin was uninstalled

## 2022-02-09

- Added a new option for selecting the value of the timestamp to be sent; 3 options are available: send time, Jeedom collection time, Jeedom value time (see documentation)
- Added a table-style view of the equipment list for Jeedom 4.2

## 2022-01-25

- Rewritten the plugin's "engine" to perform all tasks asynchronously in dedicated processes so as not to impact other processes on your Jeedom or navigation within the dashboard
- Added the ability to export history to InfluxDB (which benefits from the redesign described above)
- Added a **Send All** command to force the current value of all selected commands in the equipment to be sent
- Added several info commands to check the connector's status: **Status**, **Last Error**... (see documentation)
- Added health information for connectors to the General Health page
- Added commands for total and daily counts of the number of measurements sent by device
- Added advanced configuration options to set timeouts and the number of send attempts
- Sorting equipment and commands in the selection screens by object/room
- From now on, measurements will be sent with a timestamp based on their Jeedom value date instead of the time they were sent.
- Fix: In the equipment selection by item, it was not possible to search for or select equipment without an item or part.

## 2021-10-26

- Fix: The point was not sent to Influx when its value was *0*

## 2021-10-04

- Adjusting Connection Timeouts in InfluxDB v2

## 2021-08-22

- Complete overhaul of the command selection feature; the interface is now much more responsive, even when displaying a very large number (over 15,000) of commands:
  - Added the ability to search for and add individual command
  - Added the ability to search for and add command by object/room
  - And a redesign of the search function and the ability to add commands via the complete list of commands
  - Add a search/filter field to all lists
- Added a table-style view of the equipment list for Jeedom 4.2

## 2021-02-04

- Added https support for InfluxDB v1.x
- Added support for InfluxDB v2.x (see documentation)
- New layout for the list of items

## 2020-09-04

- Layout Cleanup for Version 4
- Optimizing configurations

## 2020-08-15

- Fix: Real-time sending did not work after deactivating and reactivating the plugin (unless the corresponding equipment was resaved)

## 2020-08-09

- Added the ability to define a custom measurement name and key for each command (to be configured in the command list)
- Added a configuration option to the device that allows you to select which tags to send with each data point
- Add the tags (optional) "Command Name" (*CommandName*) and "Generic Command Type" (*GenericType*)

## 2020-05-03

- Added a "Duplicate" button for equipment

## 2020-04-23

- Fixed a sorting issue in the "Sent" column on the commands configuration screen

## 2020-04-16

- Fix a dependency issue on Jeedom Smart

## 2020-04-12

- Added custom scheduling in "auto-refresh" mode (default: every minute)

## 2020-04-06

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
