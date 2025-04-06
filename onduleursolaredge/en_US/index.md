---
layout: default
title: Solaredge Documentation
lang: en_US
pluginId: onduleursolaredge
---

# Description

The plugin allow to retrieve data of an Solaredge inverter.
The plugin use Solaredge API to get these data from the Solaredge monitoring platform.
Following information are available, others can be retrieved depending the demand:

- Global overview (current power and production history)
- Current power of different devices in the installation & flow between them (if supported by your installation)
- Energy details of the last quarter (purchase, production, consumption, self-consumption)
- Power details of the last quarter (purchase, production, consumption, self-consumption)

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

> **Tip**
>
> In order to use the plugin you have to download,install and activate it as any other Jeedom plugin.

In the plugin configuration, it is possible to provide commands to get sunrise and sunset time as provided by the *Weather* or *Héliotrope* plugin. This will allow to pause the task that get data between those time as there isn't any solar energy production overnight ;-). If no command is provided, the task will run all day, from midnight to 23h59. You can also specify hard-coded value, format hhmm, e.g. 400 for 4h00 and 2200 for 22h00

# Configuration

## Solaredge API access activation

> **Important**
>
> The procedure below is no longer valid. SolarEdge has modified their monitoring site and the menus are different. Please contact their support to ask for the procedure to obtain an API key. This documentation will be updated as soon as the procedure is known.

- Browse to your Solaredge account at <https://monitoring.solaredge.com/> (You have to connect with your credentials provided by your provider), You should land on your Dashboard.
- Then, click on "Admin" section, highlighted in yellow in the printscreen:

![Solaredge dashboard](../images/solaredge_dashboard.png "Solaredge dashboard")

- Next, click on "Site access" and on the bottom of the screen you have to accept the T&C, get a new API key (or use the existing one) and use the provided "Site ID". Don't forget to save your changes.

![Admin menu](../images/solaredge_admin.png "Admin menu")

## Creating the device in Jeedom

- Navigate to devices management available under menu "Plugins", "Energy" and "Solaredge".
- Click "Add" and choose a name.
- You will land on the configuration of your newly created device on witch you can setup usual Jeedom options (don't forget to activate your new device).

> **Important**
>
> You need to provide the API key and Site ID previously obtained from Solaredge monitoring platform.

Then choose the type of information you want. If you want more than one just create a second device with the same site ID and same API key.

![Device configuration](../images/equip_config.png "Device configuration")

Finally, select refresh frequency of the device. Following options exist:

- automatic: the frequency is dynamically calculated depending sunrise and sunset configuration to optimize the refresh without doing more requests than allowed by Solaredge
- manual: you choose the frequency but the plugin will not accept a value below the minimum displayed
- disabled

> **Important**
>
> Solaredge allow only 300 calls/day on their API; refreshing data every 5 minutes during 24 hours will trigger 288 calls (so below the limit of 300 calls). If you decide to manage the refresh with another mean, take care to not bypass this limit.

## Widget examples

Global overview:

![Widget](../images/widget.png "Widget")

Current power of different devices in the installation with information of production/consumption/self-consumption, purchased/feed-in and charge/discharge of batteries (if supported by your installation)

Purchase example:

![Widget](../images/widget_powerflow_purchased.png "Widget")

Feed-in example:

![Widget](../images/widget_powerflow_feedin.png "Widget")

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
