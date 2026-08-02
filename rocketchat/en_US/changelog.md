---
layout: default
title: Rocket.Chat change log
lang: en_US
pluginId: rocketchat
---

# Change log

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency update
- Python 3.11 is required; it will be installed automatically if necessary.
- Jeedom v4.5 required

## 2025-08-11

- Dependency update

## 2025-04-18

- Dependency update

## 2024-12-25

- Dependency update
- Icon update

## 2024-10-17

- Dependency update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Debian 11 or later required

## 2024-08-21

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese

## 2024-07-02

- Daemon update
- Dependency update

## 2024-04-10

- Dependency update

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-09-19

- Added an option to send local files directly from a scenario; see the documentation.

## 2022-05-17

- Changed the API used to send messages to fix the incorrect date issue (messages were being sent with the date 1/01/1979)

## 2022-03-28

- Compatibility with Rocket.Chat v4
- This update requires reinstalling dependencies; this should happen automatically when you update the plugin.
- Added a table-style view of the equipment list for Jeedom 4.2
- Compatibility with Debian Stretch has been removed; from now on, you must be running at least Debian Buster

## 2020-12-02

- Added support for buttons to quickly reply to asks (Telegram type)
- New layout for the list of items
- Improvements to the layout of the device configuration and commands
- Layout Cleanup for Version 4

## 2020-08-15

- Forces the API key configuration to use the localhost mode

## 2020-03-30

- Relocation of documentation

## 2020-03-27

- We've changed the method for sending messages because the previous method caused the Rocket.Chat Android app to crash in certain situations (due to a bug in the Rocket.Chat API).

## 2020-03-20

- It is no longer necessary to mention the bot when interacting in a direct conversation or private message.
- Verifying the configuration before starting the daemon
- Checking the daemon's status before using a command

## 2020-02-14

- Added support for attachments (such as images from cameras)

## 2020-02-01

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
