---
layout: default
title: Changelog NotificationQueue
lang: en_US
pluginId: notificationqueue
---

# Change log

## 2026-08-03

- Dependency update

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency update
- Jeedom v4.5 required

## 2025-06-27

- Dependency update

## 2024-12-25

- Icon update

## 2024-09-16

- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-03-18

- Dependency update

## 2023-10-02

- You can add multiple sending conditions and specify different notification commands for each one. This allows you to send your notifications through different "channels" based on conditions you define.

## 2023-08-21

- New option to choose how to detect duplicate notifications: identical message (default behavior and prior to this update), identical title, or identical message and title

## 2022-10-17

- From now on, expired messages will be removed from the queue as they occur (and not only when a condition is true).
- Update to the commands interface for Jeedom v4.3

## 2020-11-29

- Added support for generating random text (same system as in interactions; see documentation)
- Added support for conditional text using a ternary operator (see documentation)
- New layout for the list of items
- Improvements to the layout of the device configuration and commands

## 2020-09-14

- Added a (non-)repeat feature to suppress duplicate notifications that have already been sent within the last x minutes

## 2020-06-16

- Added an option to configure a time period during which the notification will remain in the queue even if the condition is true
- Added a command to manually trigger the condition check and send messages if the condition is valid
- Added a command to force the immediate sending of all messages regardless of the condition (but taking the sending delay into account)

## 2020-05-03

- Added a "Duplicate" button for equipment

## 2020-03-30

- Relocation of documentation

## 2020-03-07

- Added support for triggering based on conditions: the queue will be processed as soon as the condition is true.

## 2020-02-22

- Added an option to dynamically calculate the pause time based on the message length (for TTS notifications)
- Added the ability to configure a message timeout per queue

## 2020-01-11

- Added an option to manage duplicate notifications

## 2020-01-04

- Added a command to clear the queue
- Added an "info" command to check the number of messages in the queue
- Added support for ask for notifications

## 2020-01-01

- Added a configurable delay between each evaluation of a queue's status (applied between each message in the queue)
- Added support for multiple notification commands (separate commands with && in the configuration)

## 2019-10-05

- The plugin has been rewritten to have one queue per device instead of one per command. Your old devices will be migrated during the update, but you will need to update your scenarios.
- Behavior improvements for TTS notifications: you should include the TTS status in the condition for this to work correctly.

## 2019-09-18

- First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
