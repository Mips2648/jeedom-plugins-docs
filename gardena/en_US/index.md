---
layout: default
title: Documentation Gardena-Husqvarna
lang: en_US
pluginId: gardena
---

# Description

Plugin to integrate all devices from Gardena Smart System (Water Control, sensor, irrigation control, power socket and Sileno mower) as well as Husqvarna Automower robots.

It is possible to access device data, monitor them and perform actions (depending on the device, see below for more details)

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

In the plugin configuration, you shall enter your username, password and application key to access the API.
You must also select the API you want to activate among the 2 possible options (both can be activated at the same time):

- Gardena Smart System
- Husqvarna Automower

# Device synchronization and configuration

As soon as the plugin configuration is complete and correct, the plugin will synchronize the devices according to the activated API.
It will create the missing devices with their commands and update the commands of all connected devices.

The commands of the Gardena Smart System devices will be updated in real time, so there is no additional configuration to do. Husqvarna Automower mowers will be updated every minute and a **Refresh** command exists to request manually an additional update.

> **Tip**
>
> The plugin will never delete a device in your Jeedom. If a jeedom device does not correspond to any device in your possession, please delete it manually.

In the device configuration page, there is a button to create the missing commands on it (in case you have deleted a command by mistake for example).

# Devices and commands

## Commands common to all appliances

Each Gardena Smart System device has the following commands:

- **Battery** gives the battery charge level (if applicable) in percent
- **Battery status** gives a description of the battery status: *OK*, *LOW*, *REPLACE_NOW*, *OUT_OF_OPERATION*, *CHARGING*, *NO_BATTERY*, *UNKNOWN*
- **Connection level** gives the connection level with the gateway in percent
- **Connection status** gives a description of the connection status: _ONLINE_, _OFFLINE_, _UNKNOWN_

## Gardena Smart Sensor

- **Temperature** indicates the ambient temperature
- **Brightness** indicates brightness in lux
- **Soil moisture** indicates the percentage of soil moisture
- **Soil temperature** indicates the soil temperature

## Gardena Smart Water Control

- **Health** indicates the general condition of the valve: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **Activity** indicates the current activity: *CLOSED*, *MANUAL_WATERING*, *SCHEDULED_WATERING*
- **Status** binary info command indicating whether the valve is open or closed
- **Start** action command to start watering, needing the number of minutes (full) of watering in parameter
- **Stop** action command to stop watering
- **Remaining time** info command giving the remaining time (in minutes) when watering is in progress
- **Pause schedule** action command
- **Resume schedule** action command

## Gardena Smart Power Socket

- **Health** indicates the general condition of the power socket: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **On** action command to switch on the power socket
- **Off** action command to switch off the power socket
- **On timer** command action to switch on the power socket with auto switch off after x (whole) minutes passed as an option of the command
- **Activity** indicates the current activity: *OFF*, *FOREVER_ON*, *TIME_LIMITED_ON*, *SCHEDULED_ON*
- **Status** binary info command indicating whether the power socket is switch on or off
- **Remaining time** info command giving the remaining time of the timer (if applicable)
- **Pause schedule** action command
- **Resume schedule** action command

## Gardena Smart Mower

- **Health** indicates the general condition of mower: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **Activity** indicates the current activity: *PAUSED*, *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*, *PARKED_TIMER*, *PARKED_PARK_SELECTED*, *PARKED_AUTOTIMER*, *NONE*
- **Active** binary command indicating whether the mower is active or not; it will be indicated as active during these activities: *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*
- **Operating hours** info command giving the number of operating hours
- **Remaining time** command info giving the remaining time of activity
- **Start mode manual** action command to start in manual mode needing number of minute of activity in option
- **Start mode auto** action command to start in auto mode (depending on the schedule)
- **Cancel and go back to charging station** action command, the mower will start at next schedule
- **Stop and go back to charging station** action command, the mower will ignore next schedule

## Gardena Smart Irrigation Control

- **Health** indicates the general condition: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_

## Husqvarna Automower

- **Connected** binary info command indicating if the mower is connected
- **Battery** gives the battery charge level (if applicable) in percent
- **Mode** will have one of the following values: *MAIN_AREA*, *DEMO*, *SECONDARY_AREA*, *HOME*, *UNKNOWN* (see below for a description of the values)
- **State** will have one of the following values: *UNKNOWN*, *NOT_APPLICABLE*, *PAUSED*, *IN_OPERATION*, *WAIT_UPDATING*, *WAIT_POWER_UP*, *RESTRICTED*, *OFF*, *STOPPED*, *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* (see below for a description of the values)
- **Activity** will have one of the following values: *UNKNOWN*, *NOT_APPLICABLE*, *MOWING*, *GOING_HOME*, *CHARGING*, *LEAVING*, *PARKED_IN_CS*, *STOPPED_IN_GARDEN* (see below for a description of the values)
- **Error code** & **Error description** gives the code and description of the error if applicable
- **Remaining time** command info giving the remaining time of activity
- **Start mode manual** Starts and mows the grass for the time (in minutes) given as an option on the command
- **Pause**
- **Resume** Resume schedule
- **Return to base** Return to the charging station for the number of minutes given as an option of the command, then resume schedule
- **Cancel and go back to charging station** action command, the mower will start at next schedule
- **Stop and go back to charging station** action command, the mower will ignore next schedule

### Mode description

- *MAIN_AREA* - Mower will mow until low battery. Go home and charge. Leave and continue mowing. Week schedule is used. Schedule can be overridden with forced park or forced mowing.
- *DEMO* - Same as *MAIN_AREA*, but shorter times. No blade operation.
- *SECONDARY_AREA* - Mower is in secondary area. Schedule is overridden with forced park or forced mowing. Mower will mow for request time or until the battery runs out.
- *HOME* - Mower goes home and parks forever. Week schedule is not used. Cannot be overridden with forced mowing.
- *UNKNOWN*

### Status description

- *PAUSED* - Mower has been paused by user.
- *IN_OPERATION* - See value in **Activity** for status.
- *WAIT_UPDATING* - Mower is downloading new firmware.
- *WAIT_POWER_UP* - Mower is performing power up tests.
- *RESTRICTED* - Mower can currently not mow due to week calender, or override park.
- *OFF* - Mower is turned off.
- *STOPPED* - Mower is stopped and requires manual action.
- *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* - An error has occurred, check value of **Error**. Mower requires manual action.
- *NOT_APPLICABLE* - Manuel action needed.
- *UNKNOWN*

### Activity description

- *MOWING* - Mower is mowing lawn. If in demo mode the blades are not in operation.
- *GOING_HOME* - Mower is going home to the charging station.
- *CHARGING* - Mower is charging in station due to low battery.
- *LEAVING* - Mower is leaving the charging station.
- *PARKED_IN_CS* - Mower is parked in charging station.
- *STOPPED_IN_GARDEN* - Mower has stopped. Needs manual action to resume.
- *NOT_APPLICABLE* - Manuel action needed.
- *UNKNOWN*

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
