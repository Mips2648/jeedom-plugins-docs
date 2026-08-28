---
layout: default
title: iRobot documentation
lang: en_US
pluginId: kroomba
---

# Description

A plugin that allows you to control iRobot robot vacuums and floor mops **exclusively locally**.

The plugin has been successfully tested on many different models, and most of the brand's Wi-Fi models should be supported. If you're unsure, test it yourself and you'll know for sure!
This plugin does not work with older models of Roomba robot vacuums equipped with a hardware extension (type RooWifi or Thinking Cleaner); it only works with recent models equipped with Wi-Fi connectivity.

This plugin enables automatic detection and pairing of Roomba and Braava robots on the local network, reports various information about the robot's status (status, dustbin full, water tank level, etc.), and allows you to control the robot (Start, Stop, Return to Base, etc.).

It includes a desktop widget.

> **Important**
>
> New robot models are coming—the x05 series—with a new *Roomba Home* app. These models are not currently compatible with the plugin, and I have no idea if they will be in the future.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

When installing the dependencies, the *MQTT Manager* plugin should have been installed automatically if it wasn't already. If not, please install this plugin manually via the Jeedom Market (official free plugin).
Next, you may need to configure it (see the *MQTT Manager* plugin documentation; in most cases, the default settings will work just fine)

> **Tip**
>
> If you already have an MQTT broker installed, you still need to install the *MQTT Manager* plugin, but be sure to configure it in *remote broker* mode by entering the settings for your current broker.

# Plugin configuration

On the plugin's configuration page, you can change the following options:

- The main topic under which the plugin will post information. By default, the plugin will post under the *iRobot* topic; you don't need to change this if it works for you
- The listening port for the plugin daemon. Do not change this value unless you understand how it works and only if you are experiencing a conflict with another plugin.

If the dependencies have been successfully installed and the *MQTT Manager* plugin is up and running, you can start the daemon.

# Exploring and Creating Devices (Robots)

Before you begin:

- Make sure the robot is properly configured on the local network and can be reached from Jeedom (normally on the same local network) (procedure via the iRobot app);
- Close all iRobot apps on Android or iOS. Note: Using the iRobot app at the same time may cause communication issues between the plugin and the robot;
- Make sure the robot is on its base and is not in "sleep" mode (press "Clean" briefly to wake it up if necessary).

From the device configuration page, click the *Discovery* button. There are two ways to discover your robots and retrieve the password required by the plugin so that it can then control the robot locally:

- Via the cloud, *only for initial synchronization*: Enter your iRobot account email address and password so that the plugin can connect to the cloud to retrieve the list of configured robots and their passwords.
- Locally, *does not work with all models*: Make sure the robots you want to discover are on the charging base and turned on (green light on). Then, press and hold the HOME button on your robot until it emits a series of beeps (about 2 seconds). Release the button, and the Wi-Fi light should start blinking.

> **Tip**
>
> Cloud mode applies only to the robot's discovery process. Once discovered, the robot will always be controlled locally.

You may enter the robot's IP address; this is useful **and necessary** if the robot is not on the same subnet as Jeedom, since the discovery process uses a broadcast message to find robots.

![Explore](../images/discovery.png "Découverte")

Then wait—it takes between 15 and 30 seconds. You’ll see notifications on the screen, and the daemon will automatically reconnect at the end of the process if it was successful. The device will then be created (you can monitor the progress via the log if necessary).

> **Tip**
>
> Once the discovery process is complete, you can use your iRobot mobile app again if needed.

# Cleaning by room or by zone

When you set up the robot, the corresponding basic commands for the robot will be created. You’ll have a **Start** command that allows you to initiate a full cleaning of all rooms. The plugin also lets you start cleaning a specific room or area (on compatible models).

To do this, there are a few steps to follow to ensure that the corresponding commands are created on the device:

Therefore, you need to:

- have created the rooms or zones in the official app;
- Ensure that the connection between the plugin and the robot is operational (daemon running, data being sent to Jeedom...);
- From the official app, start the cleaning cycle once in the desired room or zone, and within a few seconds, the plugin should detect the new area and create a corresponding action command for the robot's device;
- Optional: You can return the robot to its charging station;
- For now, it’s not possible to automatically retrieve the region’s name, so the command will have an obscure name, but you can rename it however you like. Do this now before starting a new task to detect the next room; otherwise, you won’t know which command corresponds to which room.

You can now use these commands just like any other Jeedom command (you do not need to use the **Start** command as well).

Sometimes iRobot changes the map IDs (probably whenever a map is modified). When this happens, you need to manually restart a room cleanup so that the plugin can update the command.

# List of known statuses and their corresponding widget displays

| Command Value *Status* | Meaning |
|------------------------------------------------|--------------------|
| *Charging* and *Recharging* | *Charging* |
| *Docking - End Mission* and *Mission Completed* | *Task Completed*    |
| *Docking* and *User Docking* | *Return to Base* |
| *Paused* | *Paused*     |
| *Running* | *Cleaning* |
| *Stopped* | *Arrêté* |
| *Stuck* and *Base Unplugged* | *Stuck* |

# History

This plugin was originally created by @kavod (Brice Grichy).
The plugin was then taken over by @vedrine

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the *INFO* level, pasted into `Preformatted Text` (use the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...

# Do you like the plugin?

While it makes your daily life easier, a small donation helps keep the project going.

<iframe src="https://github.com/sponsors/Mips2648/card" title="Sponsor Mips2648" height="225" width="600" style="border: 0;"></iframe>
<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
