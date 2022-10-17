---
layout: default
title: Miele changelog
lang: en_US
pluginId: miele
---

# Beta

n/a

# Stable

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-03-10

- Fixed a crash when synchronizing consumption information due to a change in behavior of the Miele@Home API

## 2022-02-22

- Add commands **Water consumption** and **Energy consumption** commands on appliances supporting this functionality (see documentation), you must create the missing commands on the device if you wish to have these new commands

## 2021-12-20

- Add commands **Set ventilation step** and **Set colors** on hood
- Add commands **Power on** and **Power off** on appliances supporting this functionality (you must create the missing commands on the device if you wish to have these new commands)
- Fix due to a change in the Miele@Home API behavior

## 2021-11-13

- Update Miele@Home API
- Add an info command **Program name** which will return the name of the current program on devices supporting this functionality (you must create the missing commands on the device if you wish to have this new command)
- Change authentication mechanism to improve security
- New presentation of objects list in device configuration
- Improved layout of device and commands configuration pages
- Add table display mode of the list of device for Jeedom 4.2

## 2020-08-24

- Cleanup of the layout for V4

## 2020-05-04

- Fix a dependency issue on Jeedom Smart

## 2020-04-13

- Add authentication status and connection management in plugin configuration
- Add plugin health summary in Jeedom health page
- Added a specific health page listing an overview of all appliances

## 2020-04-06

- Add default icons on some actions commands
- Display units in commands tab
- Add possibility to invert binary values

## 2020-04-03

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
