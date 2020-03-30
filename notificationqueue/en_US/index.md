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

# Options additionnelles

## Pause entre 2 évaluations

Cela permet de configurer le temps de pause entre 2 évaluations de la conditions lors d'envoi de messages successifs si par exemple le retour d'état d'une commande prend du temps.

## Pause dynamique entre 2 messages (TTS)

Si activer, le plugin va calculer le temps de lecture du message. Pour cela il compte le nombre de syllabes totales et multiplie ce nombre par un temps de lecture moyen par syllabes. Vous pouvez adapter ce temps en fonction de votre périphérique TTS dans la configuration de l'équipement.

## Doublon

You can also choose the behavior when a notification with the same message as an existing notification is added to the queue.

- Ignore: the new notification will simply be added at the end of the queue (default behavior);
- Keep the first notification: the new one will therefore not be added;
- Keep the last notification: the previous notification will be deleted from the queue and the new one will be added at the end of it.

## Délai d'expiration

Il est possible de configurer un délai d'expiration des notifications (en minute). Passé ce délai la notification ne sera plus envoyée si la condition n'a pas été remplie avant.

# Some principles

- The order in which notifications are sent is guaranteed (FIFO, first notification received, first notification returned), exception depending on the configuration of the duplicates.
- If a problem is detected during the return (not always possible), the message is put back at the end of the queue for a new try later.
- The plugin checks the condition of each queue every minute and each time new messages are added.
- the ask is managed by the plugin (the notification command used then must also manage it)

# The widget

The widget will be the default of the core with the default display of commands (messages) according to their configuration.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
