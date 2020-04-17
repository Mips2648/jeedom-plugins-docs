---
layout: default
title: MyAudi documentation 
lang: en_US
pluginId: myaudi
---

# Description

Plugin to connect to the MyAudi platform allowing to recover the cars which are compatible.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

> **Important**
>
> The plugin will not work under Jessie, it is necessary to be able to install python 3.5 minimum, which is not available under Jessie.

# Plugin configuration

In the configuration of the plugin it will be necessary to setup the username and password.

# The devices

As soon as the daemon starts, if your username and password are correct, the plugin will automatically create the vehicles linked to your account.
It is possible to synchronize manually via the devices page.

In device configuration page you can configure auto-refresh frequency.

# Commands

For the moment the following commands are available:

- Outside temperature
- Mileage
- Next oil change in days and km
- Next maintenance in days and km
- Oil level (in L and in %)
- Warning of low oil level and oil change
- Tank level
- Total range (in km)
- AdBlue range (in km)

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
