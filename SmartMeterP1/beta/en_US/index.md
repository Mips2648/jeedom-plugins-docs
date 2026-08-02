---
layout: default
title: SmartMeter P1 documentation
lang: en_US
pluginId: SmartMeterP1
---

# Description

This plugin allows you to connect to [this gateway](https://www.domohab.be/categorie-produit/passerelle/) linked to your meter in order to retrieve all the data transmitted by the meter via port P1.

This works for both three-phase and single-phase meters.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.
Next, you need to install the dependencies.

# Plugin configuration

In the plugin settings, you can configure the cycle that determines the interval between each data update sent to Jeedom.
The default setting should work for most users, but you can adjust it if necessary. There's no point in setting it to less than 1 second, since the counter only reports data once per second.

Start or restart the daemon.

# Equipment

The plugin can be found in the Plugins → Energy menu.

Each device will correspond to a gateway connected to a meter. So you need to start by adding a device and giving it a name.
In the device configuration, you'll see the standard settings common to all Jeedom devices.

Below, enter the IP address of your gateway and the port you configured (the default is 8088).

Turn on the device and save your settings; the commands should be updated within a few seconds.

# Commands

Some commands are updated at the frequency specified in the plugin's configuration:

- the energy consumed and fed back into the grid during peak and off-peak hours, along with the respective amounts.
- instantaneous power drawn and fed into the grid, as well as net power, which is equal to power drawn minus power fed into the grid (this will be useful for your scenarios and integrations with other plugins)
- the voltage and current on the three phases. If some of these commands remain at zero, that’s normal; it depends on whether your connection is single-phase or three-phase and on the type of three-phase connection (with or without a neutral) that you have.

Every minute, the plugin will also calculate the following information, which is also available via commands:

- Energy consumption by day and by month
- Energy fed into the grid over the day and over the month

These meters are therefore reset to zero at midnight every day or on the last day of each month.

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

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
