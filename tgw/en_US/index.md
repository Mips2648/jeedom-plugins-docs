---
layout: default
title: Theengs gateway documentation 
lang: en_US
pluginId: tgw
---

# Description

Plugin to easily install and configure antennas running *Theengs gateway* that allows you to listen to Bluetooth devices (BLEA) and use them in Jeedom via the MQTT Discovery plugin

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
This plugin requires the *MQTT Manager (MQTT2)* plugin to work, this allows to get status of antennas

# Plugin configuration

Before starting, make sure you have installed and configured the *MQTT Manager (MQTT2)* plugin, see plugin documentation.

You will then have to configure the connection information to the MQTT broker that the antennas will use, you can by default retrieve the configuration of*MQTT Manager (MQTT2) * by clicking on the corresponding button but you can also check and correct the broker's address if necessary (note, it must be the same broker as under MQTT2) and you can change the username and password that the antennas will use, it's useful if you want to use different identifiers for yours antennas & Jeedom.

If you don't know or are in doubt, use automatic configuration.

> **Important**
>
> The information configured here will only be used for antenna configuration. The plugin will always use *MQTT Manager (MQTT2)* to connect to the broker.

# Devices

The plugin can be found in the Plugins → Programming menu.

Each device will correspond to a Theengs antenna. So you have to start by adding device and giving a name.
In the device configuration, you will see the usual settings that are common to all Jeedom device.

## Installing the antenna

Then the first thing to do is to choose if it is a local or remote (via SSH) antenna and in the case of a remote antenna you must provide the connection information:

![auth](../images/auth.png)

> **Important**
>
> The configured user must be in the sudoers group.

By default the Bluetooth interface used will be *hci0*, if necessary you can change this configuration.

On the right side of the screen you will see the status of the installation as well as the status of the service:

![Actions](../images/actions.png)

Once you have configured the *Authentication* section, you need to Save the device and then you can proceed to the installation of the antenna by clicking on the *Install Antenna* button.

> **Important**
>
> This step can be very long (1 hour or more on a ft0). It is very important to be patient and not launch the installation multiple times on the same antenna.
> On the other hand, you can perfectly launch the installation of several antennas in parallel.
>
> Remember to stop the antenna of the BLEA plugin if you were using the pi for BLEA. As this consumes a lot of resources, it will slow down the installation accordingly.
>
> Both processes (BLEA Antenna & Theengs Gateway) cannot use the Bluetooth at the same time, it is highly recommended to have 2 different Bluetooth keys/chips or only use one of them at a time.

The installation status will change to *Ongoing* and finally to *OK*. The installation log will be visible even during the installation in the Analysis → Logs menu and will be named `tgw_[eqLogicID]_update` so it is always possible to follow the progress of the installation in detail.

## Setup and startup

When the installation status changes to *OK*, you can click on the *Configure Service and Restart* button, this should only take a few seconds.

This step will write the configuration file and create the *TheEngsGateway* service on the remote host.
If you change a device parameter or the broker connection information in the plugin configuration, it will be necessary to repeat this step.

The service will be configured to start automatically each time the system is rebooted or if it fails.

If necessary, a final button allows you to (Re)Start the service, this button has the same function as the **Restart** command described below.

# Commands

Each antenna has 3 commands:

- **Online** info/binary command indicating whether the antenna is online or not. “Online” means connected to the broker and listening to the Bluetooth device.
- **Restart** action to (re)start the antenna if necessary
- **Stop** action to stop the antenna if necessary

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
