---
layout: default
title: Hydrao documentation
lang: en_US
pluginId: hydrao
---

# Description

Plugin to integrate Hydrao shower head.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.2                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

In the plugin configuration, you must specify your username and password used on the Hydrao application as well as the API key. To get your API key, you need to contact Hydrao support directly.

You can also configure how many showers in the past should be synchronized with Jeedom, this is especially useful when synchronizing for the first time, more information below.

# Devices

As soon as the plugin configuration is correct, the plugin will synchronize your shower heads.
It will synchronize every 2 hours and you can do a manual refresh via the corresponding command on the device.

> **Attention**
>
> Hydrao severely limits the number of API calls, if you receive this error in the log ́ ́Login failed: (429) - response received: {"message”: “Limit Exceeded"} ́  I invite you to contact them directly to ask them to increase the limit.

The plugin will create one *Shower* device for each shower activated on your account. Each *Shower* device will have the info commands described below giving information on the *last known shower* but the previous showers that have not already been synchronized with Jeedom will also be synchronized and inserted in the command history under Jeedom, with the time known by Hydrao. The maximum number of showers to be synchronized in the past is to be chosen in the configuration of the plugin.

> **Warning**
>
> As you know, the synchronization date between the shower head and Hydrao is not necessarily the actual date of the shower and this sync date is the only date known by the plugin, it is impossible to know the real date of the shower unless you synchronize between your shower head and Hydrao during each shower. This is a limitation of the system provided by Hydrao due to the fact that the knobs need to be regularly synchronized with the Hydrao cloud via your phone.

The plugin will also create a *Dashboard* device that gives general information and statistics related to your account (and not to a particular shower).

# Commands

On a *Shower* device, there are the following controls:

- **Sync date** gives the last sync date between the shower and Hydrao
- **Volume** indicates the number of liters consumed during the last shower
- **Duration** indicates the duration, in seconds, of the last shower
- **Temperature** indicates the average temperature of the water from the last shower
- **Soaping time** & **Soaping number** for the last shower (if known)
- **Flow rate** of the last shower
- **Average consumption** of the last 100 showers

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
