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

There are no dependencies to install, just make sure to start the daemon if it's not done automatically.

# Plugin configuration

In the plugin configuration, you can optionally configure a refresh period. By default it is 5 seconds.
The shorter the delay, the more the load will increase on your Jeedom. It's up to you to configure according to your needs and what your box allows.

# Devices

The plugin can be found in the Plugins → Energy menu.

Each device will correspond to a gateway connected to a meter. So you have to start by adding device and giving a name.In the device configuration, you will see the usual settings that are common to all Jeedom device.

Below, fill in the IP address of your gateway and the port you configured.

Activate the device and save and within seconds the commands should be updated.

# Commands

There are commands updated according to the frequency defined in the plugin configuration (5 seconds by default):

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
