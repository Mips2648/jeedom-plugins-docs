---
layout: default
title: VMC (Zehnder/Storkair) documentation
lang: en_US
pluginId: vmczehnder
---

# Description

Plugin to interface a Zehnder HRV-ERC - also known as Storkair, Comfo Air, Wernig - via the serial port (RS-232) used by the CCEase/ComfoSense.
The following models should be compatible but they have not all been tested:

- ComfoAir 180, 200, SL 330, 350
- ComfoD 250/350/450/550
- WHR 920/930/950/960

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Hardware installation

## Prerequisites

You will need a Raspberry pi (no need for a powerful model, a zero w is enough, or an old model if you have one) or any other system running under Debian Buster minimum (not tested with others distributions).
If your Jeedom is close to the HRV, you can use it but I advise to separate the 2 roles.
The rest of the documentation assumes that you have a pi, different from Jeedom.

You must install your Raspberry pi, connect it to the network with a fixed IP and enable ssh.
This Raspberry will host a daemon that will provide a connection between the HRV-ERV (via its serial interface, see below) and the plugin (via TCP). The SSH connection is used to install and configure the daemon.

The plugin requires a functional installation of the “MQTT Manager (MQTT2)” plugin, if this plugin is not yet present on your system, it will be installed automatically but you will have to finalize its configuration (see*MQTT Manager* documentation).

At this point, it is recommended to update your pi (apt-get update, apt-get upgrade) in order to speed up the installation of the daemon later (see below).

> **Important**
>
> sudo must be installed on the machine connected to the VMC, the user used for the plugin must be in the group sudoers and have the right to execute a sudo command without confirming his password.

## Connecting the HRV

The plugin will communicate with the HRV via the RS232 interface. On the HRV, this interface is available:

- either via a terminal block (4 wires) on which the CCEase may be connected if you have one,
- a DB9 port,
- or a RJ45 port.

![Connector board picture](../images/connectorBoard_picture.jpg "Connector board picture")

![Connector board schema](../images/connectorBoard_schema.png "Connector board schema")

You will need to connect this interface to the Raspberry Pi.
There are DB9-USB adapters, it's the simplest if the DB9 port is present on your HRV

![Adapter db9-usb](../images/db9_usb_adaptor.jpg "Adapter db9-usb")

If the db9 port is not present, there are also terminal block adapters to DB9 and then connect a DB9-USB adapter, up to you connect the wires to the terminal block of the HRV or to the RJ45 port.

![Adapter bornier_db9](../images/bornier_db9_adaptor.jpg "Adapter bornier_db9")

# Plugin installation

> **Tip**
>
> In order to use the plugin you have to download,install and activate it as any other Jeedom plugin.

There is no additional configuration to do here.

# Devices configuration

## Creating the device in Jeedom

- Navigate to devices management available under menu "Plugins", "Comfort" and "VMC (Zehnder/Storkair)".
- Click "Add" and choose a name.
- You will land on the configuration of your newly created device on witch you can setup usual Jeedom options (don't forget to activate your new device).

![Device configuration](../images/eqlogic_config.png "Device configuration")

## Connectivity between plugin and pi (ssh configuration)

You must then enter the IP address of the Raspberry previously installed and connected to the HRV, the port ssh (if different from the default port), the user (if other than "pi") and its password.

> **Important**
>
> The configured user must be in the sudoers group and must have the permission to sudo without password confirmation

**Save** the device and if the configuration is correct you can proceed to next step.

## Daemon installation & configuration

### First installation

In principle, after saving the device, the*VMC serial port* drop-down list should contain the list of USB devices detected on the pi. If it is not the case:

- Check login details: ip, user, password
- Check that you have plugged the USB adapter into the pi properly.

Select the correct port and **save** the device.

You can now click on the **Install, configure & restart the service** button. This will take some time so be patient, you will receive regular notifications on the progress.

The installation will:

- copy the necessary files to the pi (via SSH)
- install the dependencies
- start remote service

If everything goes well, the daemon/service will start sending information about the VMC and the *status* will change to *OK*

### Configuration change

If you change the serial port to use, you must, after saving the device, resend the configuration. To do this, you can click on the **Configure the service & restart button**

# HRV configuration

The reload configuration action allows you to read the configuration from the VMC, which can then be viewed via the *Configuration* tab.
It is not normally necessary to perform this action, the configuration is updated automatically each time the service is started.

The screen shows a summary of VMC information, usage counters, and fan speed configuration.

# Commands

All created commands are obviously in the *Commands* tab.
There is a button to recreate the missing commands on your device if needed. There is no risk to perform this action, an existing command will never be replaced.

On top of the information commands (current fan speed, measured temperature, etc.) and the refresh command for these information, there are:

- a command for each fan speed (0-absent, 1-low, 2-medium, 3-high) to set the corresponding speed.
You can use these commands in your scenarios for example to reduce speed in case of absence, vacation or at night or increase it in case of increased humidity in the bathroom and/or kitchen ( via separate sensors).
- a command to set the comfort temperature, accepting a value between 12°C and 28°C. The comfort temperature determines whether or not the bypass is used by the VMC (to cool the house in case of overheating, see the VMC manual). It is not recommended to change this value often, the VMC will handle the management once the temperature is set and this temperature is probably already set correctly in your installation.

The *Connected* command corresponds to the status of the remote daemon.

# Efficiency

The plugin calculates the efficiency of the system via the formula of the efficiency on fresh air: ηt = (T ° C Air insufflated - T ° C New Air) / (T ° C Air Extract - T ° C Air New)

The result gives an indication of the clogging of your filters: dirty filters will reduce the efficiency of the HRV.

# Widget

![Example](../images/widget.png "Example")

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- a screenshot of the plugin's configuration page
- all available plugin logs pasted into a `Preformatted Text` (button `</>` on community), no files!
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...

# Do you like the plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
