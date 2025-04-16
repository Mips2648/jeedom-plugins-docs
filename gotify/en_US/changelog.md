---
layout: default
title: Gotify changelog
lang: en_US
pluginId: gotify
---

# Beta

n/a

# Stable

## 2024-12-25

- Update dependencies
- Icon update

## 2024-10-17

- Update dependencies
- Jeedom v4.4 required

## 2024-09-16

- Removed the option not to check the Gotify host certificate, which had been inactive for almost 4 years.
- Debian 11 or higher required

## 2024-08-19

- Update dependencies
- Plugin translation in English, German, Spanish, Italian, Portuguese

## 2023-10-09

- Encrypt sensitive configuration data (token) in the database

## 2023-05-20

- Update device configuration screen
- Improve password fields
- Add links to documentation in beta

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-09-19

- The client token is now configured on the equipment and no longer in the global configuration of the plugin in order to allow the creation of devices (apps under Gotify) and clients under different Gotify users => check your configuration.

## 2022-01-05

- Add table display mode of the list of device for Jeedom 4.2

## 2020-11-28

- New presentation of objects list
- Cleanup of the layout for V4

## 2020-06-16

- Fix: the message can be empty if a file has been attached

## 2020-05-03

- Internal optimizations
- Add "Duplicate" button on device configuration

## 2020-02-12

- Verification on empty message before sending to Gotify

## 2020-01-19

- Added the possibility of creating several send commands by device
- Added a configuration on each command to choose the priority
- Added a configuration on each command to choose the format
- Add a command to delete all messages on the server (you must have configured a client token)

## 2019-09-28

- Added an option for checking the host name of the Gotify certificate
- Added support for notifications with images

## 2019-08-02

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
