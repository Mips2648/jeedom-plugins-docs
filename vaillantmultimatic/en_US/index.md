---
layout: default
title: Vaillant multiMATIC documentation
lang: en_US
pluginId: vaillantmultimatic
---

# Description

Plugin allowing connection to a Vaillant multiMATIC system via its internet gateway (VR900, VR920, VR921).
It is possible to report the status of all connected device in Jeedom and to control them: define the mode (On, Off, Auto ...), define the setpoint temperatures, activate a quick mode, activate forced mode ...

The valves and thermostats of the ambiSENSE range connected to the system are also managed.

> **Important**
>
> The plugin should work with all gateways (VR900, VR920, VR921) and the VRC700 controller, compatible with the multiMATIC application only.
> The VRC720 controller, called "sensoCOMFORT" or "sensoHOME" for example, is not compatible because it works with the sensoAPP application.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
Then you need to install dependencies.

# Plugin configuration

It is strongly recommended to create a dedicated Jeedom user via the official mobile app.
To do so, open the application, go to the _setting_ menu then _Access_ and follow the steps to create a new user.

All you have to do is to enter the username and password in the plugin configuration and then you can start the daemon.

You also have an option to configure the frequency of updates, in minutes.

> **Tip**
>
> During an action, a change of setpoint or mode for example, the state of the equipment is updated immediately. These are additional updates performed in the background.

# Devices and commands

As soon as the dependencies are installed and the plugin configuration is correct, the daemon will start and the plugin will synchronize your devices with Jeedom.

> **Tip**
>
> The plugin will never delete a device in your Jeedom. If a jeedom device does not correspond to any device in your possession, please delete it manually.

Device of different types will be created depending on what exists in your system. The possibilities are: the gateway itself, the multiMatic which controls your hot water production and the circulator, device to manage ventilation system, on device per heating zone and if you have device from the ambiSENSE range, one device per room and one device per valve and thermostat.

> **Tip**
>
> If your Vaillant multiMATIC system does not have one of the equipment listed above, then there will be no device of this type created under Jeedom, this is normal. This documentation simply lists all the possibilities.

## The gateway

It is the main device of the system. It allows the control of quick modes, vacation mode and will display the temperature information of the different sensors according to what exists on your installation, for example the starting temperature of the heating, the hot water tank, the outside temperature ...

The quick modes are the same as those available in the mobile app, they have an overall impact on the system components depending on the mode activated.

The vacation mode will also have a global impact but it is a bit special because it has a start and end date and is therefore scheduled. If it is activated but the current date is not within the defined interval, it will not be applied (and another fast mode may be applied depending on your configuration).

Here is an overview of the available commands:

- **Refresh** refreshes all information of all device
- **Status** info/string command
- **Online** info/binary command
- **Up to date** info/binary command telling if the system is up to date
- **Quick mode** there is one info command indicating the current quick mode (possible values: _None_, _Boost ECS_, _Boost ventilation_, _Exceptional absence_, _Exceptional presence_, _Party_, _Holiday_, _System shutdown_) as well as one action command corresponding to each mode to activate it.
- **Holiday start date**, **Holiday end date** & **Define holiday dates** are respectively the commands giving the start and end date of the recorded holiday as well as the command to define these dates
- **Holiday setpoint** and **Define holiday setpoint** are used to find out and define the temperature setpoint applied when holiday mode is active.
- **Holiday mode active**, **Holiday mode Off** are the commands to know the status and to deactivate the holiday mode.
- There will also be an info/numeric command per temperature sensor connected to the system, for example **Outdoor temperature**, **DHW temperature**, **Starting temperature**, ...

## Hot water

This device contains information on the production of domestic hot water as well as on the state of the circulation which is link to the domestic hot water.

- **Refresh** refreshes device information
- **Mode** returns the active mode, it can have one of the following values: _Auto_, _On_, _Off_
- **Auto**, **On**, **Off**, action command to activate the corresponding mode
- **State** gives the current state: _On_ or _Off_. So if the **Mode** is _Auto_, **State** will let you know the real state.
- **Setpoint** gives the setpoint currently applied (for example 5°C if the **Status** is _Off_)
- **Heating setpoint** and **Define heating setpoint** indicates and allows modification of the desired setpoint (when the **Status** is _On_)
- **Temperature** indicates the current water temperature
- **Circulation mode** and **Circulation state** gives the respective traffic information. The mode cannot be controlled, it is linked to the production of hot water.

## Ventilation

- **Mode** returns the active mode, it can have one of the following values: _Day_, _Night_, _Off_
- **Day**, **Night**, **Off**, action command to activate the corresponding mode
- **Status** gives the current status, _Day_, _Night_, _Off_.
- **Speed** give current speed
- **Day Speed** and **Night Speed** info commands giving the programmed speed during day and night respectively
- **Set Day Speed** and **Set Night Speed** action commands to change the set speed during day and night respectively
- **Temperature** indicates the current temperature

## Zones

There will be one _Zone_ device per heating zone (per circuit) managed by your Vaillant system.
Each zone will have the following commands:

- **Refresh** refreshes zone information
- **Active** binary info command indicating whether the zone is active or not
- **Control via rooms** Important, binary info command indicating whether the zone is controlled by room management if you have equipment from the ambiSENSE range. If this is the case then the control on the zone will have no effect: changing the mode or changing the setpoint will not influence the heating; _Room_ type equipment must be used instead, see below.
- **Mode** returns the active mode, it can have one of the following values: _Auto_, _Day_, _Night_, _Off_
- **Auto**, **Day**, **Night**, **Off**, action command to activate the corresponding mode
- **Status** gives the current status: _Day_, _Night_ or _Off_. So if the **Mode** is _Auto_, **State** will let you know the real state.
- **Setpoint** gives the setpoint currently applied
- **Day setpoint** and **Define day setpoint** indicates and allows modification of the setpoint used in _Day_ mode
- **Night setpoint** and **Define night setpoint** indicates and allows modification of the setpoint used in _Night_ mode
- **Temperature** indicates the current temperature of the zone
- **Activate forced temperature** action/slider command allowing to give an instruction and to activate the forced mode, in other words to force the application of this instruction independently of the program in progress. This mode will be active for 6 hours before returning to the normal program and the duration cannot be modified.
- **Cancel forced temperature** action command to cancel forced mode

## Rooms

When you have valves and/or thermostats from the ambiSENSE range connected to the system, the plugin will create _Room_ device corresponding to the existing rooms in the mobile app.
The temperature setpoint will be managed individually via this device and no longer centrally over the entire zone. This will therefore allow more granular management of your heating.
The _Room_ devices have the following commands:

- **Refresh** refreshes the part information
- **Mode** returns the active mode, it can have one of the following values: _Auto_, _Manuel_, _Off_
- **Auto**, **Manual**, **Off**, action command to activate the corresponding mode
- **State** gives the current state: _Auto_, _Manual_ or _Off_
- **Setpoint** gives the setpoint currently applied
- **Set setpoint** allows to modify the setpoint. In _Manual_ mode this will change the manual setpoint, in _Auto_ or _Forced_ mode this will activate forced mode and apply the new setpoint (equivalent to the command **Activate forced temperature**)
- **Temperature** indicates the current room temperature
- **Humidity** indicates the current humidity of the room if a thermostat is there otherwise no information will be sent to this command
- **Activate forced temperature** action/slider command allowing to give an instruction and to activate the forced mode, in other words to force the application of this instruction independently of the program in progress. This mode will be active for the duration configured in the command **Forced mode duration** before returning to the previous program.
- **Cancel forced temperature** action command to cancel forced mode and return to the previous program
- **Forced mode duration** contains the duration during which the forced mode will be active _during the next activation_
- **Define forced mode duration** allows to modify the duration during which the forced mode will be active _during the next activation_. Modifying this duration has no influence on the remaining duration if the forced temperature was already activated, to do this you must again use the command **Activate forced temperature**
- **Child lock** binary info command indicating whether child lock is activated on the valve or the room thermostat
- **Window open** binary info command indicating if the room valve or thermostat has detected an open window (by a sudden drop in temperature)

## Valves & thermostats

This "technical" device has no command to manage the heating, all done via the _Room_ device. They still have the following 2 commands:

- **Battery low** Binary info command indicating if the battery status is low. There is no percentage feedback.
- **Out of range** Binary info command indicating if the device is out of range of the system (and therefore no longer communicating with the gateway).

The plugin will update the _battery_ information in the device so that the core can access it in a standard way (like all other device under Jeedom) and that we can be notified via the alerts provided in Jeedom but as the information in percent does not actually exist, the following dummy values will be set:

- 100% as long as the **Battery low** command is 0
- 10% when **Low Battery** command is 1

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
