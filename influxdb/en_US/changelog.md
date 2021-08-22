---
layout: default
title: InfluxDB Changelog
lang: en_US
pluginId: influxdb
---

# 2021-08-22

- Complete redesign of the commands selection, much more responsive interface even with a very large number (+15,000) of commands to display:
  - Add the ability to search and add individual command
  - Add the ability to search and add command by object / room
  - And redesign of search and add of commands via full list of commands
  - Add search / filter to all lists
- Add table display mode of the list of device for Jeedom 4.2

# 2021-02-04

- Add https support for InfluxDb v1.x
- Add support for InfluxDb v2.x (see documentation)
- New presentation of objects list 

# 2020-09-04

- Cleanup of the layout for V4
- Configuration optimization

# 2020-08-15

- Fix: real-time sending did not work after deactivating and reactivating the plugin (except when saving again the corresponding device)

# 2020-08-09

- Added possibility to define a personalized name of measurement and key for each command (to be configured in the list of commands)
- Added a configuration on the device allowing to choose the tags to send with each point
- Added tags (in option) "Command name" (*CommandName*) and "Generic type of command" (*GenericType*)

# 2020-05-03

- Add "Duplicate" button on device configuration

# 2020-04-23

- Fix an issue with sort of column "Sent" in commands configuration screen

# 2020-04-16

- Fix a dependency issue on Jeedom Smart

# 2020-04-12

- Add custom cron configuration in "auto-refresh" mode (by default set on every minute)

# 2020-04-06

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
