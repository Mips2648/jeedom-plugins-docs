---
layout: default
title: Miele documentation
lang: en_US
pluginId: miele
---

# Description

Plugin allowing to integrate all appliances compatible with Miel@Home.
It is possible to get appliances information, to monitor them and execute some actions (depending the appliance).

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
You must have a Miele account with at least one appliance compatible with Miele@Home linked to it and eventually <a href="https://www.miele.com/f/com/en/register_api.aspx" target="_blank">activate your access to the API</a>

# Plugin configuration

In the configuration of the plugin, you will need to fill in the ClientId and the Client Secret received allowing access to the API and then save.
You can then click on the _Link Jeedom and Miele@Home_ button and follow the instructions: this will open a new tab on the Miele website where you will need to log in with your Miele username and password to validate the link .

If everything went without error, returning to the configuration page, you can click on the _Refresh_ button in front of the status if it is still indicated as _NOK_.

![Configuration](../images/config.png "Configuration")

The plugin has two tasks:

- **cron**: is used to automatically synchronize the devices every minute. If you deactivate this task you will have to refresh each device manually or via scenario.
- **cronDaily**: is used to refresh the access token if necessary. You should not disable this cron.

# Devices

As soon as the plugin configuration is correct, the plugin will synchronize all your appliances every minute. It will create missing appliances and their commands and will update information of all connected appliances.

> **Tip**
>
> The plugin will never delete a device in your Jeedom. If a jeedom device does not correspond to any appliance in your possession, please delete it manually.

In the device configuration page, there is a button to create the missing commands on it (in case you have deleted a command by mistake for example).

# Commands

## Info commands common to all appliances

Each Miele device has the following commands, not all of them are applicable to all appliances:

- **State** & **Status** gives the state of the device in string and numeric value respectively (see below for the list of possible states)
- **Program type** display ongoing program (see below for a list of known values)
- **Program name** gives the name of the program running on devices supporting this feature.
- **Phase** gives the current phase of the program
- **Remaining time** gives the remaining time in hours and minutes before the end of the program.
- **Start time**
- **Elapsed time** gives the elapsed time since the start of the program
- **Program temperature** gives the target program temperature
- **Temperature** gives the current temperature of the appliance (your oven is for example set to 180 ° C but only has 70 ° C)
- **Notification** binary value indicating if a notification is active
- **Error** binary value indicating if the device is in error
- **Door** binary value indicating if the device door is open
- **Light** binary value indicating the light status of the device (if applicable)

> **Tip**
>
> **Remaining time**, **Start time** and **Elapsed time** information are available as a string type command formatted for display in the widget and another as numeric format (hhmm) for use in scenario for example.

### List of values for the info "Status" = "State"

- 1 = OFF
- 2 = ON
- 3 = PROGRAMMED
- 4 = PROGRAMMED WAITING TO START
- 5 = RUNNING
- 6 = PAUSE
- 7 = END PROGRAMMED
- 8 = FAILURE
- 9 = PROGRAMME INTERRUPTED
- 10 = IDLE
- 11 = RINSE HOLD
- 12 = SERVICE
- 13 = SUPERFREEZING
- 14 = SUPERCOOLING
- 15 = SUPERHEATING
- 146 = SUPERCOOLING_SUPERFREEZING
- 255 = NOT_CONNECTED

### List of values for "Program" info

This list is not exhaustive, there may be other values.

- Normal operation mode
- Own program
- Automatic program
- Cleaning-/Care program

### Lists of known values for the "Phase" info

This list is not exhaustive, there may be other values.

#### Dishwasher

- Main Wash
- Rinse
- Final Rinse
- Drying
- Finished

#### Oven & heated drawer

- PreHeat
- Program Running

## Info commands specific to some appliances

- **Rotation speed** for washing machines, numerical value in rpm.
- **Drying level** for tumble dryers, see below for the list of possible values
- **Ventilation level** for hoods, values from 0 to 4
- **Water consumption** and **Energy consumption** for washing machines, dryers and dishwashers

### List of values for the info "Drying level"

- No drying step
- Extra dry
- Normal Plus
- Normal
- Slightly Dry
- Hand iron level 1
- Hand iron level 2
- Machine iron

## Actions commands

The action commands below will be present on the device if the action is supported by the appliance. On top, to be able to perform an action, the appliance must be in a given status/state. For example, it is not possible to stop it if it was not started.

- **Power on**, **Power off**
- **Start**, the device must be in 4-Programmed status and waiting to start
- **Stop**, the device must be in 4-Programmed status and waiting to start, 5-Operating or 6-Pause
- **Pause** ??
- **Start Freezing**, only for freezer type devices, the device must be in 5-Operating status
- **Stop Freezing**, only for freezer type devices, the device must be in Freezing mode
- **Start Cooling**, only for freezer type devices, the device must be in 5-Operating status
- **Stop Cooling**, only for freezer type devices, the device must be in Cooling mode
- **Switch on light**
- **Switch off light**
- **Set start time**, the device must be in 4-Programmed status and waiting to start
- **Set ventilation step** & **Set colors**, for hoods

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
