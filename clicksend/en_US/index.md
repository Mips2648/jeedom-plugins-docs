---
layout: default
title: ClickSend documentation 
lang: en_US
pluginId: clicksend
---

# Description

Plugin to integrate the ClickSend platform

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

There is no additional configuration to do here.

# Devices configuration

After creating new device, the usual options are available.

You will also need to configure the username and API key of the user.

## Commands

![commands](./../images/commands.png)

In the command tab you will see a **Refresh** command that allows you to update the remaining balance; this information is also updated automatically every night and a **Balance** info command.

You can add commands to send messages via the *Add command* button. You will have to give a name, choose the type *SMS* or*Call (TTS)* and enter the telephone number in international format.

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
