---
layout: default
title: MQTT Discovery changelog 
lang: en_US
pluginId: MQTTDiscovery
---

# Beta

- Update dependencies

# Stable

## 2025-06-27

- Improvement of the name automatically given to commands when not defined in the configuration: the name should be shorter (especially the case with zwave-js and zigbee2mqtt).
- Invert behavior of the *Visible* property on commands: now most commands are not visible by default when created, you need to check *Visible* to display them on the widget. The aim is to make the widget easier to configure, with only the most relevant information and commands displayed by default, rather than displaying almost everything.
- Improvement and translation of command names when they are correctly categorized by the source (~= there is a generic type associated with the command).
- Use default widget based on the generic type of command (where available).
- Modification to device image management: the previous configuration (and custom images) should be migrated, but you may have to make manual corrections.
- Management of *model_id* to correctly retrieve device images under zigbee2mqtt 2.x
- Adaptation of the mqtt clientID as "mqttdiscovery-[random ID]" for easier monitoring
- new binary info commands created from a *device_automation* entity will now have the "repeat identical values" parameter enabled by default on creation (no change to existing commands)
- Added missing translation on some command names
- Fix: in some cases, the command "off" of a switch was not created.

## 2025-02-24

- Update dependencies
- Minor fix on the management of discovered topics
- Fix an error when creating command action if several commands have the same name

## 2024-12-26

- Support of *Climate* / *HVAC* type
- Added "schema json" support for the *light* type: supports bulbs with brightness variation, color temperature, color selection, effects, transitions.
- Add **Status**, **On** and **Off** commands to the *light* type using the *default schema*.
- Fix on info commands for type *vacuum*.
- Fix on the creation of list commands that did not contain the list of options in some cases
- Fix on *EMS-ESP* integration due to a mix of 2 different syntax not supported by the plugin
- Plugin translation in English, German, Spanish, Italian, Portuguese
- Update dependencies
- Icon update
- Jeedom v4.4 required

## 2024-07-02

- Adding the *vacuum* type
- Fixed a problem with some device images not being displayed
- Update dependencies

## 2024-05-14

- Improved: creation of equipment commands after addition is immediate, no need to restart the daemon
- Improvement: last module name taken into account during discovery (useful if the name is changed after inclusion, for example).
- Improved: images of all zigbee modules (zigbee2mqtt compatible) will be automatically retrieved by the plugin.
- Add a button to open the module configuration if the url is provided in the discovery information (e.g. to the module config on zigbee2mqtt, to omg)
- fix of *update* type for zigbee devices (via zigbee2mqtt)
- Fix of type *device_automation* / *device trigger*; it is necessary to delete the corresponding commands and restart the daemon to recreate them correctly.
- Fix on dependencies check
- Update dependencies
- Internal modification of daemon

## 2024-02-25

- Optimizing the size of backups
- Add of the image of some zigbee modules

## 2024-02-14

- *select* type support (action/list command)
- *device_automation* type support
- *music_player* type support (to support sonos2mqtt gateway)
- Add **Open**, **Close** and **Stop** commands to the *cover* type (shutter, blind, curtain...).
- Improvement: command info whose unit is `%` will have their minimum and maximum values set to 0 and 100 by default.
- Add image for zigbee modules *Sonoff occupancy sensor (SNZB-06P)* and *Aqara curtain driver E1 (ZNCLBL01LM)*.
- Add a button to purge all discovered devices from the list and from the MQTT broker (not created devices, of course).
- Add a button to remove unknown devices from the list
- Removal of the “Duplicate” device button that had no reason to exist
- New version of the dependencies (paho-mqtt 2.0) and adaptation of the daemon accordingly
- Fix on discovering a *Lock* component when it has no defined name
- Fix action on*cover* on some devices

## 2023-12-09

- Reduce unnecessary logs
- Add button to permanently delete discovered device, including on the MQTT broker
- Fix: some “off” commands did not work properly because their configuration was saved incorrectly (this depended on the payload of the command)
- Add images of different devices models
- Add the default generic type configuration on the command (when possible)
- Add the update of the status of the battery of the device in the core (when possible)
- Add default icons on commands based on the generic type
- Add the possibility of managing presence on Bluetooth devices that are not decoded (and therefore not visible in discovered devices)
- Add the possibility to define a custom model name and therefore a custom image for each device (after changing the name of the device model)
- Fix: update the temperature info commands for Bluetooth device when the command was discovered by OMG (if discovered by Theengs Gateway it worked correctly)

## 2023-11-07

- Support *lock* type for lock management (e.g. Nuki)
- Add a default image for the Nuki Smart Lock 3.0 Pro
- Filters the types of files accepted by the plugin when selecting an image to send for a device model
- Fix on the “Configuration” button in the discovered devices screen

## 2023-11-02

- Improvement in the parsing of configurations for certain device (support for the “base topic” if declared)
- Change in presence management: **rssi** commands will be forced to -200 if no more update of the command (after the configured time limit)

## 2023-10-22

- Setting the min & max for **rssi** commands

## 2023-10-19

- Logs reorganization
- Minor fix on the creation process during automatic discovery

## 2023-10-18

- Add a **rssi** command by gateway providing the info. The main **rssi** command maintains the current behavior: it is the last value received on all antennas and presence management is based on this value
- Internal reorganization of the code which should be completely transparent

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

## 2023-07-20

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
