---
layout: default
title: Linksys Documentation
lang: en_US
pluginId: linksys
---

# Description

A plugin that lets you control certain features of your compatible Linksys routers.

What's available:

- Model and firmware
- Status of guest networks and parental controls
- Number of devices connected to the router by connection type
- Enable/Disable Parental Controls
- Enable/Disable the guest network
- Reboot
- Turn the router's LEDs on/off
- Firmware Update
- WAN Status

> **Important**
>
> The plugin has been tested with a Linksys Velop router and should work with other models as well.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

No configuration is required for the plugin.

## Device Setup

The plugin can be found in the Plugins → Communication menu.

After creating a new device, the usual options are available.

You will then need to enter the router's local IP address, the Admin account username (if different from 'admin'), and the password.

You can also configure how often the data is refreshed.

# Credits

This plugin was originally created by @hugoks3.

This plugin was inspired by the work of [reujab](https://github.com/reujab) through his Go library for JNAP: [linksys](https://github.com/reujab/linksys)

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
