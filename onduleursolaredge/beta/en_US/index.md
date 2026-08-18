---
layout: default
title: Solaredge Documentation
lang: en_US
pluginId: onduleursolaredge
---

# Description

Plugin that reads data from a Solaredge solar panel inverter.
The plugin uses the API provided by Solaredge to retrieve data from the monitoring platform.
The following information is available; additional information may be added based on requests:

- Overview (Current and Historical Power Generation)
- Current power consumption of the various devices in the system & power flow between them (if supported by your system)
- Details of energy consumption over the last quarter-hour (purchase, generation, consumption, self-consumption)
- Power details for the last quarter-hour (purchase, generation, consumption, self-consumption)

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

> **Tip**
>
> To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

On the plugin's configuration page, you can enter commands for sunrise and sunset times as provided by the *Weather* or *Heliotrope* plugin. This will pause data retrieval between these times, since there is generally little solar production at night ;-). If no commands are provided, the task will run all day, from midnight to 11:59 p.m. You can also enter specific times in the "hhmm" format, for example, 400 for 4:00 a.m. and 2200 for 10:00 p.m.

# Setup

## Enabling Solaredge API Access

> **Important**
>
> The procedure below is no longer valid. SolarEdge has updated its monitoring website, and the menus are different. You must contact their support team to request the procedure for obtaining an API key. This documentation will be updated as soon as the procedure is known.

- Go to your account at <https://monitoring.solaredge.com/> (you'll need to log in using the credentials provided by your provider), and you should be taken to your Dashboard.
- Next, click on the "Admin" section, highlighted in yellow in the screenshot:

![Solaredge Dashboard](../images/solaredge_dashboard.png "Dashboard Solaredge")

- Next, click the "Access Policy..." tab. At the bottom of the screen, you must accept the terms of use, generate a new key (or copy the existing one), and make a note of the site ID. Don't forget to save your changes.

![Admin menu](../images/solaredge_admin.png "Menu admin")

## Creating the device in your Jeedom

- Go to the device configuration page via the "Plugins" menu, then "Energy" and "Solaredge."
- Click "Add" and enter a name.
- You'll be taken to the device configuration page, where you can set up the usual options in Jeedom (don't forget to enable your new device).

> **Important**
>
> You must enter the API key and site ID that you previously generated or copied from the Solaredge monitoring platform.

Next, select the type of information you want. If you want more than one, simply create a second device with the same site ID and API key.

![Device Setup](../images/equip_config.png "Configuration équipement")

Finally, choose the refresh rate for the device. The following options are available:

- Automatic: The frequency will be calculated dynamically based on the configured sunrise and sunset times to refresh as often as possible without exceeding the request limit imposed by Solaredge.
- Manual: You choose the frequency, but the plugin will not allow you to set it below the specified minimum.
- disabled.

> **Important**
>
> Solaredge allows only 300 API calls per day; refreshing the data every 5 minutes for 24 hours will result in 288 calls (which is below the 300-call limit). If you choose to manage data refreshes differently, be careful not to exceed this limit.

## Widget Examples

Overview:

![Widget](../images/widget.png "Widget")

Current power consumption of various devices, including information on generation, consumption, and self-consumption, as well as power purchase, sale, and battery charging/discharging (depending on the equipment in your system).

Purchase example:

![Widget](../images/widget_powerflow_purchased.png "Widget")

Sales example:

![Widget](../images/widget_powerflow_feedin.png "Widget")

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
