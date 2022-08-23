---
layout: default
title: Modbus 2 MQTT documentation 
lang: en_US
pluginId: modbus2mqtt
---

# Description

Plugin to create a gateway between modbus TCP/IP and MQTT.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
This plugin requires the *MQTT Manager (MQTT2)* plugin to work. For now and as long as the *MQTT Manager (MQTT2)* plugin is in beta, it is necessary to install it manually.

# Plugin configuration

Before starting, make sure you have installed and configured the *MQTT Manager (MQTT2)* plugin, see plugin documentation.

In the plugin configuration page, you can change the following options:

- The base topic under which the plugin will publish the information (see device configuration). By default the plugin will publish under the topic *modbus2mqtt*; you don't need to modify if it suits you
- The listening port of the plugin daemon. Only change this value if you understand how it works and only if you have a conflict with another plugin.

# Device configuration

The plugin can be found in the Plugins > Home automation protocol menu.
After creating new device, the usual options are available.

Each device corresponds to a gateway composed of a modbus client and a MQTT client. The device will therefore connect to the modbus device configured to read and write the defined registers and will connect to your MQTT broker to publish and receive the corresponding messages.

On top of the general parameters, it will therefore be necessary to configure the specific parameters for the modbus connection as well as the MQTT topic for this device.

## Modbus connection settings

- *IP* and *Port*
- *Refresh* in seconds
- *Offset* This offset is applied to every register address.
- *scan_batching*: number of continuous register to read in on read operation.

## MQTT settings

The topic of this device. It will be a sub-topic of the general topic of the plugin (see plugin configuration).
Each register will be published in a sub-topic of this topic.

Example: if you have modbus device that we will call *solar* which allows you to obtain the power produced that we will call *power*, the information will be published in the topic *modbus2mqtt/solar/power*

## Modbus registers definition

In the second tab, *Registers*, you will have to configure the modbus registers that interest you and their MQTT correspondence.
Example:
![Modbus register](../images/modbus_register.png "Modbus register")
So you need to specify:

- the address
- the register table (*holding* or *input* for the moment only, evolution to be considered according to requests)
- Type
- Scale
- the MQTT topic for publishing the value (so modbus -> MQTT)
- option *Publish only if change* allows to publish on MQTT only if the value has changed, if unchecked the value will be published after each read operation
- *retain* option to publish with *retain* option or not
- possibly the reading topic: any info published on this topic will be written on the corresponding modbus register (so MQTT -> modbus)

## Commands creation

You can now save your device; the plugin will create the commands corresponding to your configuration and you will therefore be able to obtain the values ​​directly on these commands, they will be updated with each new publication and are therefore directly usable everywhere under Jeedom.

It is therefore not necessary to configure another MQTT device to obtain the values, however you are free to do so or to consume the MQTT topics from another device, another platform...

The commands are visible in the 3rd tab and you will find the usual configuration options there.
You should check and if necessary change the subtype (numeric or binary) to match the modbus register definition.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
