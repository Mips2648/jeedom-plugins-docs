---
layout: default
title: SmartMeter P1 documentation 
lang: en_US
pluginId: SmartMeterP1
---

# Description

This plugin allows you to connect to [this gateway](https://www.domohab.be/categorie-produit/passerelle/) connected to your meter in order to retrieve all the information transmitted by it via the port P1.

This works for both 3-phase and single-phase meters.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
Then you need to install dependencies.

# Plugin configuration

In the plugin configuration, you can optionally set the cycle that defines the delay between each feedback to Jeedom.
The default value should be suitable for most people, but you can adapt it if necessary. There's no need to go below 1s, as the counter only returns information every second.

Start or restart the daemon.

# Devices

The plugin can be found in the Plugins → Energy menu.

Each device will correspond to a gateway connected to a meter. So you have to start by adding device and giving a name.In the device configuration, you will see the usual settings that are common to all Jeedom device.

Below, fill in the IP address of your gateway and the port you've configured, by default 8088.

Activate the device and save and within seconds the commands should be updated.

# Commands

Commands are updated according to the frequency defined in the plugin configuration:

- the energy taken and injected during peak hours and off-peak hours as well as the respective totals.
- the power taken and injected from the grid as well as the net power, equal to the power taken - the power injected (which will be useful for your scenarios and integrations with other plugins)
- the voltage and the intensity on the 3 phases. If some of these commands remain at zero it is normal, it depends on whether your connection is single-phase or three-phase and on the type of three-phase (with or without neutral) that you have.

Every minute, the plugin will also calculate the following information, which is also available via commands:

- Energy taken over the day and the month
- Energy injected over the day and over the month

These counters are therefore reset to zero at midnight every day or every last day of the month.

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
