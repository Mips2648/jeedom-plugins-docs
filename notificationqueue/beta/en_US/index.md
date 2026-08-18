---
layout: default
title: NotificationQueue Documentation
lang: en_US
pluginId: notificationqueue
---

# Description

A plugin that allows you to create notification commands (action/message-type commands) that behave like a queue and deliver notifications (sent to their respective queues) only if a condition is met.

For example, this allows you to:

- to issue a voice notification (TTS) in a given room only if someone is present;
- to notify you of an action to be performed only if you are at home;
- to send certain notifications only during the day and avoid having your phone ring at night.

Each queue can also be configured to add a delay before sending, set a message expiration time, prevent the repetition of a notification that has already been sent, and more...

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

No configuration is required for the plugin.

# Device setup

The plugin can be found in the Plugins → Communication menu.

After creating a new device, the usual options are available.

You can create multiple devices to organize your various communications according to your preferences.

In addition to the standard device settings, you must configure:

- a condition (the condition under which notifications are sent)
- the notification command(s) to use (when the condition is met)

> **Tip**
>
> You can specify multiple notification commands by separating them with &&

![Settings](../images/config.png "Paramètres")

# Additional options

## Pause between two evaluations

This allows you to configure the pause time between two condition evaluations when sending successive messages, for example, if it takes time for a command to return a status.

## Dynamic pause between two messages (TTS)

If enabled, the plugin will calculate the message's reading time. To do this, it counts the total number of syllables and multiplies that number by the average reading time per syllable. You can adjust this time based on your TTS device in the device settings.

## Shipping time

You can configure a notification delay (in seconds) during which a new notification will be held in the queue even if the condition is true; only after this delay will the notification be sent if the condition is met.

## Expiration date

You can set an expiration time for notifications (in minutes). After this time has elapsed, the notification will no longer be sent if the condition has not been met by then.

## Duplicate

You can also choose how the system should respond when a notification with the same message as an existing notification is added to the queue.

- Ignore: the new notification will simply be added to the end of the queue (default behavior);
- Keep the first notification: the new one will not be added;
- Keep the latest notification: the previous notification will be removed from the queue, and the new one will be added to the end of the queue.

## Non-recurrence period

This prevents the notification from being sent and thus keeps it from being added to the queue; it will not be sent if the same message has already been sent within the last X minutes.

# Some Principles

- The order in which notifications are sent is guaranteed (FIFO—first notification received, first notification sent), with exceptions depending on the configuration of duplicates.
- If a problem is detected during transmission (which isn't always possible), the message is placed at the end of the queue to be retried later.
- The plugin automatically checks the status of each queue:
  - every minute,
  - whenever new messages are added and
  - when the value of an info command used in the condition changes (same principle as scenario triggers)
- The "ask" is handled by the plugin (the notification command used afterward must also handle it)

## Text generation

The plugin handles the generation of random text. The system works the same way as for interactions:

`[Hello|Hi|Hey]` will return either `Hello`, `Hi`, or `Hey`

## Conditional text

The plugin handles conditions in the text using a ternary operator: `{(test) ? true : false}`

Example:

`This morning {(#[Home][Weather][Temperature]# < 6) ? it's cold:it's warm}`

You can leave the text blank for the true or false condition, but you must include the colon (":"), for example:

`This morning {(#[Home][Weather][Temperature]# < 6) ? it's cold:}`

Conditions cannot be nested; this feature is not supported.

# Commands

- **Add** allows you to add a message to the queue; the condition will be evaluated immediately, and all messages will then be sent (in order) if the condition is met
- **Clear** clears the queue.
- **Check and Send** allows you to manually trigger a check of the condition and send messages if the condition is valid
- **Send Without Condition** forces all messages to be sent immediately, regardless of the condition (but taking the send delay into account)
- **Number of messages**: a command that returns the number of messages currently queued

# The widget

The widget will be the core's default widget, displaying the default commands (messages) based on their configuration.

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
