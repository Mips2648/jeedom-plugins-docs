---
layout: default
title: Rocket.Chat documentation 
lang: en_US
pluginId: rocketchat
---

# Description

Plugin allowing connection to a Rocket.chat server. Rocket.chat is a collaborative messaging platform (like Slack, HipChat ...).
The plugin take in charge the ask (in scenarios), interactions and sending of attachments (ex: camera image).
The advantage of this solution is that it can be hosted at your home (a docker is enough), so your data remains in your possession.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
You need to already have a Rocket.Chat server installed, solutions to have this are fully documented on their website.
On it, please create a user with the `bot` role.

> **Important**
>
> The plugin has been tested under debian and raspbian version 9 (stretch) and 10 (buster).
> The plugin has not been tested under Jessie and its operation on this version will not be guaranteed.

Under Debian Stretch, installing dependencies can take 20 minutes or more depending on your hardware.
Under Debian Buster, this should be much faster since the majority is already present.

# Plugin configuration

In the plugin configuration you have to provide server URL with the format `https://yourdomain.com:3000` as well as the username and the password of your bot.

# The devices

As soon as the daemon starts and your bot has been able to connect, the plugin will create one device per existing channel on your server (as long as the bot has access).

Each device has an action command to send a message on the channel as well as two info commands giving the last message sent (by a user other than the bot) and the name of that user.

By default, when a message is received on the channel, the plugin will create a command corresponding to the user who sent it (if it does not already exist).

An option exists on the device to deactivate this behavior.
![Device config](../images/device.png "Device config")

These commands allow you to send a message on the device channel with a notification to the corresponding user, (e.g.: `@Mips This is a test message`).

# Interactions

For the interactions to work, the plugin must know the user, so the corresponding command must have been created (see above).

Then, in the command tab, you must select the Jeedom user corresponding to the Rocket.Chat user by selecting it from the list. It is possible to activate or deactivate support for interactions for each user.
![Commands](../images/commands.png "Commands").

In public channels or private discussion groups, your bot (the plugin) will only respond to interactions if it is notified on the channel (ex: `@jeedombot Turn on the radio`) in order to avoid it responds `Sorry I didn't understand` to each message exchanged between other users.
This is not the case in direct private messages between you and the bot.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
