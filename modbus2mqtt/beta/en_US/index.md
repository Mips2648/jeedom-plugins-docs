---
layout: default
title: Modbus 2 MQTT Documentation
lang: en_US
pluginId: modbus2mqtt
---

# Description

Plugin that acts as a gateway between Modbus TCP/IP and MQTT.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.
This plugin requires the *MQTT Manager (MQTT2)* plugin to work.

# Plugin Configuration

Before you begin, make sure you have installed and configured the *MQTT Manager (MQTT2)* plugin; see the documentation for this plugin.

On the plugin's configuration page, you can change the following options:

- The main topic under which the plugin will publish information (see device configuration). By default, the plugin will publish under the *modbus2mqtt* topic; you do not need to change this if it suits your needs
- The listening port for the plugin daemon. Do not change this value unless you understand how it works and only if you are experiencing a conflict with another plugin.

# Device Setup

The plugin can be found in the Plugins → Home Automation Protocol menu.

After creating a new device, the usual options are available.

Each device corresponds to a gateway consisting of a Modbus client and an MQTT client. The device will therefore connect to the Modbus device configured to read and write the defined registers and will connect to your MQTT broker to publish and receive the corresponding messages.

In addition to the general settings, you will need to configure the specific settings for the Modbus connection as well as the MQTT topic for this device.

## Modbus connection settings

- *IP* and *Port* of your Modbus TCP device
- *Update*: Time interval in seconds between each read/write operation on the Modbus device
- *Offset* offset to be applied to register addresses
- *Batch length*: the number of contiguous registers to be read during each read operation (between 1 and 100, inclusive). If 1, then each register will be read separately.
- *Word order*: Only for 32-bit or 64-bit numbers; choose between *Big-endian* (default) and *Little-endian*

## MQTT settings

There's only one thing to configure: this device's topic.

This will be a subtopic of the general plugin topic (see plugin configuration), and each Modbus register will be posted in a subtopic of this topic.

Example: If you have a Modbus device—which we’ll call *solar*—that provides the power output—which we’ll call *power*—the information will be published in the topic *modbus2mqtt/solar/power*

## Definition of Modbus Registers

In the second tab, *Registers*, you'll need to configure the Modbus registers you're interested in and their corresponding MQTT values.
Example:
![Modbus register](../images/modbus_register.png "Modbus register")
You must therefore specify:

- the address
- the register table
- Type: signed or unsigned integer, 16-bit, 32-bit, or 64-bit.
- scaling: the reading will be multiplied by this value before being published
- the MQTT topic for publishing the value (i.e., Modbus → MQTT)
- The *Only if changed* option allows you to publish to MQTT only if the value has changed; if unchecked, the value will be published every time it is read
- *Retain* option to publish with or without the *retain* option
- Optional command topic: Any information posted in this topic will be written to the corresponding Modbus register (i.e., MQTT → Modbus); typically, if needed, you can use `power\set` or `power_set`, for example.

## Creating Commands

You can now save your device; the plugin will create the commands corresponding to your configuration, allowing you to retrieve the values directly from those commands. These values will be updated with each new publication and are therefore immediately available throughout Jeedom.

Therefore, you don't need to configure any other MQTT device to retrieve the values; however, you are free to do so or to consume the MQTT topics from another device or platform...

The commands are displayed on the third tab, where you'll find the usual configuration options.
You should check and, if necessary, modify the subtype of the info commands (numeric or binary) so that it matches the registry definition.

If you have configured a topic to write a value to a register, a corresponding action/message command will also be created; this command can be used directly anywhere in Jeedom as well.

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
