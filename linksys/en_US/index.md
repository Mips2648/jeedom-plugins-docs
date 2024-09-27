---
layout: default
title: Linksys documentation 
lang: en_US
pluginId: linksys
---

# Description

Plugin to control certain aspects of your compatible Linksys routers.

What's available:

- Model and Firmware
- Status of guest networks and parental controls
- Number of devices connected to the router by type of connection
- Enable/Disable Parental control
- Enable/Disable guest network
- Reboot
- Enable/Disable router LEDs
- Firmware update
- WAN status

> **Important**
>
> The plugin has been tested with a Linksys Velop router and should work for other models as well.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.2                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

There is no configuration to perform at the plugin level.

## Devices configuration

The plugin is in the Plugins → Communication menu.

After creating new device, the usual options are available.

You will then need to enter the local IP address of the router, the identifier of the Admin account (if different from 'admin'), and the password.

You can also configure the refresh rate.

# Credits

This plugin was originally created by @hugoks3.

This plugin was inspired by the work of [reujab](https://github.com/reujab) via his Go library for JNAP: [linksys](https://github.com/reujab/linksys)

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
