---
layout: default
title: Gotify change log
lang: en_US
pluginId: gotify
---

# Change log

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency update
- Jeedom v4.5 required

## 2025-07-07

- Dependency update

## 2024-12-25

- Dependency update
- Icon update

## 2024-10-17

- Dependency update
- Jeedom v4.4 required

## 2024-09-16

- Removed the option to skip verifying Gotify's host certificate; this option had not been active for nearly 4 years
- Debian 11 or later required

## 2024-08-19

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese

## 2023-10-09

- Encryption of sensitive configuration data (tokens) in the database

## 2023-05-20

- Update to the device configuration page
- Improvements to password fields
- Added links to the beta documentation

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-09-19

- The client token is now configured on the device itself rather than in the plugin's global settings, allowing you to create devices (apps in Gotify) and clients under different Gotify users => please check your configuration.

## 2022-01-05

- Added a table-style view of the equipment list for Jeedom 4.2

## 2020-11-28

- New layout for the list of items
- Layout Cleanup for Version 4

## 2020-06-16

- Fix: The message may be empty if a file has been attached

## 2020-05-03

- Internal optimizations
- Added a "Duplicate" button for equipment

## 2020-02-12

- Check for empty messages before sending to Gotify

## 2020-01-19

- Added the ability to create multiple send commands per device
- Added a setting to each command to choose the transmission priority
- Added a setting to each command to choose the message format
- Added a command to delete all messages on the server (you must have configured a client token)

## 2019-09-28

- Added an option to verify the hostname of the Gotify certificate
- Added support for notifications with images

## 2019-08-02

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
