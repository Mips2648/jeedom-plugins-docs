---
layout: default
title: Solaredge Change Log
lang: en_US
pluginId: onduleursolaredge
---

# Change log

## 2026-08-19

- Improved reliability of data retrieval from the SolarEdge API
- Improved handling of communication errors and invalid API responses

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency update
- Jeedom v4.5 required

## 2024-12-25

- Dependency update
- Icon update

## 2024-10-17

- Dependency update
- Jeedom v4.4 required

## 2024-09-16

- Translation of the plugin into English, German, Spanish, Italian, and Portuguese

## 2024-03-18

- Improved validation of sunrise and sunset commands and times

## 2023-10-02

- Fixed an issue with the *Update Date* command

## 2022-10-17

- Added battery charge percentage to the "Power & Flux" device
- Change to the default operating hours (if no configuration was set): previously from 4:00 a.m. to 10:00 p.m., and now from 12:00 a.m. to 11:59 p.m. You can adjust the plugin’s settings if necessary
- Inclusion of multiple inverters in the site details display
- Update to the commands interface for Jeedom v4.3

## 2021-10-04

- New layout for the list of items
- Improvements to the layout of the device configuration and commands

## 2020-08-24

- Layout Cleanup for Version 4

## 2020-03-30

- Relocation of documentation

## 2020-03-27

- Added validation checks on incorrectly configured values to prevent errors
- Minor optimizations.

## 2019-09-10

- Support for Jeedom V4 and PHP 7.3

## 2019-03-19

- Layout of the device page according to Standard 3.3
- Added options for cron: dynamic management (as before), fixed value, or disabled.

## 2019-03-15

- Switch to a cron job dedicated to the plugin
- Dynamically calculate the cron frequency based on sunrise and sunset times to maximize the number of runs without exceeding the allowed limit of 300 requests per day
- Add a second retry in case of a technical error with the Solaredge API

## 2019-02-25

- Added an option to choose the type of information to retrieve
- Adding units to commands
- Displaying inverter information on the device page

## 2018-11-06

- Added an option to retrieve energy details: consumption, self-consumption, and energy purchased from and sold to the grid (if available in your system)
- Layout change for the command page

## 2018-09-30

- Added translations for en_US

## 2018-09-24

- First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
