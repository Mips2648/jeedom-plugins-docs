---
layout: default
title: Solaredge changelog
lang: en_US
pluginId: onduleursolaredge
---

# Beta

- Better validation of sunrise & sunset dates

# Stable

## 2023-10-02

- fix a problem with the command *Update date*

## 2022-10-17

- Added battery charge percentage on "Power & Flow" device
- Changed default operating hours (if no configuration was done): previously from 4h00 to 22h00 and now from 0h00 to 23h59. You can adapt the configuration of the plugin if necessary
- Manage case of multiple inverters in site details view
- Update of the presentation of commands for Jeedom v4.3

## 2021-10-04

- New presentation of objects list
- Improved layout of device and commands configuration pages

## 2020-08-24

- Cleanup of the layout for V4

## 2020-03-30

- Move documentations

## 2020-03-27

- Ajout de vérification sur les valeurs configurées erronées pour éviter des erreurs
- Optimisations mineures.

## 2019-09-10

- Add support of Jeedom V4 and PHP 7.3

## 2019-03-19

- Adapt device config layout to Jeedom 3.3 standard
- Added option for the cron: dynamic management (as before), fixed value or deactivated.

## 2019-03-15

- Change to a cron dedicated to the plugin
- Dynamically calculating the cron frequency based on sunrise and sunset times to maximize the number of runs without exceeding the allowed limit of 300 queries per day
- Added a retry in case of a technical error with the Solaredge API

## 2019-02-25

- Add an option to choose the type of information to retrieve
- Addition units on device command
- Displaying the information about the inverter in the device page

## 2018-11-06

- Added an option to retrieve energy details: consumption, self-consumption, purchase and sale (if available in your installation)
- Change layout of the command screen

## 2018-09-30

- Added en_US translations

## 2018-09-24

- First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
