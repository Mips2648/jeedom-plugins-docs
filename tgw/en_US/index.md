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

Each device will correspond to a Theengs antenna. So you have to start by adding device and giving a name.
In the device configuration, you will see the usual settings that are common to all Jeedom device.

## Installing the antenna

Then the first thing to do is to choose if it is a local or remote (via SSH) antenna and in the case of a remote antenna you must provide the connection information:
![auth](../images/auth.png)

> **Important**
>
> The configured user must be in the sudoers group.

By default the Bluetooth interface used will be *hci0*, if necessary you can change this configuration.

Then you have to proceed with the installation of the antenna by clicking on the *Install the antenna* button:

![Actions](../images/actions.png)

> **Important**
>
> This step can be very long (1 hour or more on a pi0). It is very important to wait and not launch the installation multiple times.

## Setup and startup

You can now click on the *Configure the service and restart* button, this should only take a few seconds

This step will write the configuration file and create the *TheEngsGateway* service on the remote host.
If you change a device parameter or the broker connection information in the plugin configuration, it will be necessary to repeat this step.

The service will be configured to start automatically each time the system is rebooted or if it fails.

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
