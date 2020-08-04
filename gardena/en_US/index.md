---
layout: default
title: Documentation Gardena-Husqvarna
lang: en_US
pluginId: gardena
---

# Description

Plugin to integrate all devices from Gardena Smart System (Water Control, sensor, irrigation control, power socket and mower) as well as Husqvarna Automower robots.

It is possible to access device data, monitor them and perform actions (depending on the device)

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

In the plugin configuration, you shall enter your username, password and application key to access the API.

# Devices

As soon as the plugin configuration is correct, the plugin will synchronize all your devices. 
It will create missing devices and their commands and will update all information.

> **Tip**
>
> The plugin will never delete a device in your Jeedom. If a jeedom device does not correspond to any appliance in your possession, please delete it manually.

In the device configuration page, there is a button to create the missing commands on it (in case you have deleted a command by mistake for example).

# Commands

## Commands common to all appliances

Each Gardena Smart System device has the following commands:

- **Battery** gives the battery charge level (if applicable) in percent
- **Battery status** gives a description of the battery status
- **Connection level** gives the connection level with the gateway in percent
- **Connection status** gives a description of the connection status

## Gardena Smart Sensor

## Gardena Smart Water Control

## Gardena Smart Power Socket

## Gardena Smart Mower

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
