---
layout: default
title: NotificationQueue Documentation
lang: en_US
pluginId: notificationqueue
---

# Description

Plugin allow to create notification commands (action / message type command) that behave like a queue and deliver notifications (sent in their respective queue) only if a condition is met.

This allows for example:

- to deliver a voice notification (TTS) in a given room only if someone is present in it;
- to notice you of an action to be done only if you are present at your place;
- to only send some notifications during the day and to avoid ringing your phone at night.

Each queue can also be configured to add a delay before sending, an expiration of the message, avoid repeating a notification already sent previously...

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
There is no configuration to do on the plugin.

# Device configuration

The plugin is in the Plugins > Communication menu.
After creating new device, the usual options are available.

You can create several devices to organize your different communications according to your preferences.

On top of the usual device configurations, you must configure:

- a condition (the condition for notifications to be sent)
- the notification command(s) to use (when the condition is met)

> **Tip**
>
> You can specify several notification commands by separating them with &&

![Settings](../images/config.png "Settings")

# Options additionnelles

## Pause entre 2 évaluations

This allows to configure a pause time between 2 evaluations of the condition when sending successive messages if, for example, the feedback of a command takes time to update the status.

## Pause dynamique entre 2 messages (TTS)

If enabled, the plugin will calculate the reading time of the message. To do this, he counts the number of total syllables and multiplies this number by an average reading time per syllable. You can adapt this time according to your TTS device in the device configuration.

## Sending delay

It is possible to configure a sending delay (in seconds) of notifications during which a new notification will be kept in the queue even if the condition is true, it is only after this delay that the notification will be sent if the condition is fulfilled.

## Délai d'expiration

It is possible to configure a notification expiration time (in minutes). After this period, the notification will no longer be sent if the condition has not been fulfilled until then.

## Doublon

You can also choose the behavior when a notification with the same message as an existing notification is added to the queue.

- Ignore: the new notification will simply be added at the end of the queue (default behavior);
- Keep the first notification: the new one will therefore not be added;
- Keep the last notification: the previous notification will be deleted from the queue and the new one will be added at the end of it.

## No-repeat delay

This allows you to delete the notification and therefore not to add it to the queue; it will therefore not be sent if the same message has already been sent during the last X minutes.

# Some principles

- The order in which notifications are sent is guaranteed (FIFO, first notification received, first notification send), exception depending on the configuration of the duplicates.
- If a problem is detected during the send (not always possible), the message is put back at the end of the queue for a new try later.
- The plugin automatically checks the condition of each queue:
  - every minute,
  - each time new messages are added and
  - when the value of an info command used in the condition changes (same principle as scenario triggers)
- the ask is managed by the plugin (the notification command used then must also manage it)

## Text generation

The plugin manages the generation of random text. The system is the same as for interactions:

> "[Hello|Hi]" will return either "Hello" or "Hi"

## Conditional text

The plugin manages the conditions in the text thanks to a ternary operator:

> "{(test) ? true : false}"

Example:
> This morning {(#[Home][Weather][Temperature]# < 6) ? it's cold:it's hot}

It is possible not to put text int the true or false result but it is mandatory to leave the colon (":"), example:

> This morning {(#[Home][Weather][Temperature]# < 6) ? it's cold:}

Conditions cannot be nested, it is not managed.

# Commands

- **Add** allows you to add a message to the queue, the condition will be evaluated immediately and all messages will then be sent (in order) if it is fulfilled
- **Empty** empty the queue.
- **Check and send** allows you to manually trigger the condition check and send messages if it is valid
- **Force send** allows to force the immediate sending of all messages regardless of the condition (but taking into account the sending delay)
- **Number of messages** info command giving the number of messages currently pending

# The widget

The widget will be the default of the core with the default display of commands (messages) according to their configuration.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
