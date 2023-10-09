---
layout: default
title: MQTT Discovery changelog 
lang: en_US
pluginId: MQTTDiscovery
---

# Beta

## 2023-10-07

- Add the identifier, manufacturer and model of the device in the configuration page
- Addition of a new function listing all devices discovered but not yet created, with the possibility of adding them one by one to without having to activate automatic creation
- Add a notification on the device page when new device has been discovered
- Fix a parsing bug on some devices

## 2023-09-30

- Add a configuration to disable the automatic creation of discovered devices
- Add the *alarm_control_panel* type

## 2023-09-11

- *MQTT Manager (mqtt2)* is no longer a prerequisite (you must have an mqtt broker installed, either by you or via any other Jeedom plugin). If *MQTT Manager (mqtt2)* is installed, the broker configuration is semi-automatic.
- Implementation of an MQTT client dedicated to the plugin to improve performance and flexibility; the plugin now has a daemon
- Add the *cover* type
- Modification & improvement of the plugin configuration page

## 2023-09-07

- Fix on light/brightness

# Stable

n/a

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
