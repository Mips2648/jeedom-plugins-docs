---
layout: default
title: Documentation, Design, Image
lang: en_US
pluginId: designImgSwitch
---

# Description

A plugin that automatically changes the background image of your designs based on the weather.
Weather information, as well as sunrise and sunset times, will be obtained either from the official Weather plugin (automatic integration) or from commands of your choice with manual configuration.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.3 |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.
You'll also need to install and configure the official Weather plugin if you want to use the automatic integration.

No configuration is required for the plugin.

# Device Setup

The plugin can be found in the Plugins → Weather menu.

After creating a new device, the usual options are available.

Select the designs for which you want to change the background image based on weather conditions.

You need to provide info commands that will return sunrise and sunset times in Jeedom format (HHMM), as well as define the conditions for each weather scenario so that the plugin can determine which background image to use.

Background images can be customized via the device configuration screen.

# Activating the device

Once the configuration is complete, you can activate the device and save your settings.
The selected designs will be updated immediately whenever weather conditions change, as well as at sunrise and sunset.
No other actions or scenarios are required.

# Commands

The device has a **Refresh** command to manually update the associated designs.
In principle, this should never be used; the background images will already be automatically updated whenever necessary.

An **Condition** command returns the most recent calculated weather condition, which will be one of the following values: _Fog_, _Snow_, _Cloudy_, _Thunderstorm_, _Rain_, _Sunny_, _Wind_, _Default_.

An **Time of Day** info command will return one of the following values: _Day_ or _Night_, depending on the current time of day used by the plugin to select the image.

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the _INFO_ level, pasted into a `Preformatted Text` (use the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
