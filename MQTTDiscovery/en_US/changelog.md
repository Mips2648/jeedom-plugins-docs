---
layout: default
title: MQTT Discovery changelog 
lang: en_US
pluginId: MQTTDiscovery
---

# Beta

## 2023-10-16

- Added a button in the device configuration page to see the raw configuration of the device as well as a button to easily copy it to share it with me if necessary
- Reorganization of plugin data: in principle the custom images have been moved to the desired location, if not, please create a post on Community

## 2023-10-15

- Behavior change for the *cover* type (panes for example): creation of open/close/stop commands even if there is no status feedback
- Change the visibility and the default template on creation of some commands

## 2023-10-14

- Support for the type *update* which allows you to have info commands **Installed version**, **Latest version** and a **Firmware Update** action command to start updating the hardware for devices supporting this feature (for example OMG)

## 2023-10-12

- *device_tracker* support for compatibility with “Tiles”
- Add filters to the manual addition of device window to allow searching

## 2023-10-10

- Add possibility of having custom images on devices (one image per model)

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
