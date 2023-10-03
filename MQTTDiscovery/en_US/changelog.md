---
layout: default
title: MQTT Discovery changelog 
lang: en_US
pluginId: MQTTDiscovery
---

# Beta

## 2023-09-30

- Add a configuration to disable autodiscovery
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
