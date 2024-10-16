---
layout: default
title: ClickSend documentation 
lang: en_US
pluginId: clicksend
---

# Description

Plugin to integrate the [ClickSend platform](https://www.clicksend.com) which allows the sending of text messages (SMS) or voice messages (TTS)

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

There is no additional configuration to do here.

# Devices configuration

Start by creating a [ClickSend account](https://www.clicksend.com) and make sure you have credit on it.

Then, in the Developers > API Credentials section you need to add a new “subaacount”, choose a username and generate an api key.

After creation of a new device , the usual options are available.
You will also need to configure your clicksend account username and API key.

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
- a screenshot of the plugin's configuration page
- all available plugin logs pasted into a `Preformatted Text` (button `</>` on community), no files!
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
