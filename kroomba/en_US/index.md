---
layout: default
title: iRobot documentation 
lang: en_US
pluginId: kroomba
---

# Description

Plugin for controlling iRobot vacuum cleaners and floor scrubbers.

The plugin has been successfully tested on many different models and most of the wifi models should be supported, if you have any doubts, test for yourself and you will be fixed!
This plugin does not work with older models of Roomba robot vacuum cleaners equipped with a hardware extension (RooWifi or Thinking Cleaner type), it only works with recent models equipped with a Wifi connection.

This plugin allows the automatic detection and pairing of Roomba & Braava robots on the local network, to report various information on the robot's status (status, full bin info, tank info, etc.) as well as to control the robot ( Start, Stop, Return to base...)

It includes a desktop widget.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

When installing dependencies, the *MQTT Manager* plugin was normally installed automatically if it wasn't already. Otherwise, please install this plugin manually via the Jeedom market (free official plugin)
Then, it may need to be configured (see *MQTT Manager* plugin documentation, in most cases the default options will be fine)

> **Tip**
>
> If you already have an MQTT broker installed, it is still necessary to install the *MQTT Manager* plugin but take care to configure it in *remote broker* mode by entering the parameters of your current broker.

# Plugin configuration

In the plugin configuration page, you can change the following options:

- The base topic under which the plugin will publish information. By default the plugin will publish under the *iRobot* topic; you don't need to modify if it suits you
- The listening port of the plugin daemon. Only change this value if you understand how it works and only if you have a conflict with another plugin.

If the dependencies have been successfully installed and the *MQTT Manager* plugin is started and functional, you can launch the daemon.

# Discovery and creation of devices (robots)

Before you start:

- Ensure that the robot is correctly configured on the local network and can be reached from Jeedom (in principle on the same local network) (procedure via the iRobot application)
- Shut down any iRobot app on Android or iOS. Warning: the simultaneous use of the iRobot application can cause communication blockages between the plugin and the robot
- Make sure the robot is on its base and not "asleep" (briefly press "Clean" to wake it up if necessary).

From the devices configuration page, click on the *Discovery* button and enter your credentials in the window that opens. You can optionally enter the robot's IP address, it is useful **and necessary** if the robot is not on the same subnet as Jeedom because the discovery process uses a broadcast message to find the robots.

![Discovery](../images/discovery.png "Discovery")

Then wait it takes between 15s and 30s, you will see notifications on the screen and the daemon will restart on its own at the end of the process if it was successful. The device will then be created (you can monitor the progress via the log if necessary).

> **Tip**
>
> When the discovery process is complete, you can use your iRobot mobile app again if needed.

# List of known states and correspondence on the widget

| Command value *State*                         | Meaning      |
|------------------------------------------------|--------------------|
| *Charging* et *Recharging*                     | *Charging*        |
| *Docking - End Mission* et *Mission Completed* | *Task completed*    |
| *Docking* et *User Docking*                    | *Docking* |
| *Paused*                                       | *Paused*     |
| *Running*                                      | *Cleaning*        |
| *Stopped*                                      | *Stopped*           |
| *Stuck* and *Base Unplugged*                    | *Stuck*           |

# Historic

This plugin was originally created by @kavod (Brice Grichy).
The plugin was later taken over by @vedrine

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
