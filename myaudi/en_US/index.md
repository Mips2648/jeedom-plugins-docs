---
layout: default
title: MyAudi documentation
lang: en_US
pluginId: myaudi
---

# Description

Plugin to connect to the MyAudi platform allowing to retrieve cars which are compatible.

> **Important**
>
> Please note that it is no longer possible to install this plugin's dependencies, as the library used to connect to My Audi connect has been removed from the repositories. However, you can continue to use the plugin if you have already installed it.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

In the configuration of the plugin it will be necessary to setup the username and password.

# Devices

As soon as the daemon starts, if your username and password are correct, the plugin will automatically create the vehicles linked to your account.

Information are updated every 10 minutes.

# Commands

For the moment, the following info commands are available:

- Mileage
- Next oil change in days and km
- Next maintenance in days and km
- Tank level & autonomy

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
