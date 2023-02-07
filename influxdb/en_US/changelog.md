---
layout: default
title: InfluxDB Changelog
lang: en_US
pluginId: influxdb
---

# Beta

N/A

# Stable

## 2023-02-06

- Add a new export mode: *History* which allows you to export all the history of the day before each night
- Update of the presentation of commands for Jeedom v4.3
- Fix: cron was not properly deleted when uninstalling the plugin

## 2022-02-09

- Addition of a new option for choosing the value of the timestamp sent, 3 possible options: sending time, command collect time, command value time (see documentation)
- Add table display mode of the list of device for Jeedom 4.2

## 2022-01-25

- Redesign of the plugin "engine" to perform all tasks in dedicated processes asynchronously in order to not to impact other processes on your Jeedom or navigation in the dashboard
- Add history export to InfluxDB (which benefits from the redesign explained above)
- Add a **Send All** command to force sending the current value of all selected commands in device
- Add several info commands to know the health status of the connector: **Status**, **Last error**... (see documentation)
- Add connector health information in the general health page
- Add total and daily counter commands for the number of measurements sent by device
- Add advanced configuration to set timeouts and number of send retries
- Sorting device and commands in selection screens by object/room
- From now on the measurements will be sent with their Jeedom value date as timestamp instead of the time of sending
- Fix: In the device selection by item it was not possible to search/select device without items/parts

## 2021-10-26

- Fix: the measure was not correctly sent to influx if it has the value *0*

## 2021-10-04

- Adaptation of connection timeouts on influxDb v2

## 2021-08-22

- Complete redesign of the commands selection, much more responsive interface even with a very large number (+15,000) of commands to display:
  - Add the ability to search and add individual command
  - Add the ability to search and add command by object / room
  - And redesign of search and add of commands via full list of commands
  - Add search / filter to all lists
- Add table display mode of the list of device for Jeedom 4.2

## 2021-02-04

- Add https support for InfluxDb v1.x
- Add support for InfluxDb v2.x (see documentation)
- New presentation of objects list

## 2020-09-04

- Cleanup of the layout for V4
- Configuration optimization

## 2020-08-15

- Fix: real-time sending did not work after deactivating and reactivating the plugin (except when saving again the corresponding device)

## 2020-08-09

- Added possibility to define a personalized name of measurement and key for each command (to be configured in the list of commands)
- Added a configuration on the device allowing to choose the tags to send with each point
- Added tags (in option) "Command name" (*CommandName*) and "Generic type of command" (*GenericType*)

## 2020-05-03

- Add "Duplicate" button on device configuration

## 2020-04-23

- Fix an issue with sort of column "Sent" in commands configuration screen

## 2020-04-16

- Fix a dependency issue on Jeedom Smart

## 2020-04-12

- Add custom cron configuration in "auto-refresh" mode (by default set on every minute)

## 2020-04-06

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
