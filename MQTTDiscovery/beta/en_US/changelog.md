---
layout: default
title: MQTT Discovery Changelog
lang: en_US
pluginId: MQTTDiscovery
---

# Change log

## 2026-08-18

- Improving code consistency and security for PHP 8
- Fixes for `climate`-type components
- Dependency update

## 2026-08-01

- Fixes and optimizations regarding command updates when an MQTT message is received
- Fixes for parsing discovery information when the payload contains quotation marks
- Dependency update
- Python 3.11 is required; it will be installed automatically if necessary.

## 2026-06-13

- Support for custom device images (Jeedom 4.5)
- Standardization of Bluetooth device command updates
- Protection against incorrect configurations
- Change the default daemon send interval from 1 second to 0.5 seconds, and change the minimum allowed value from 0.5 seconds to 0.1 seconds
- Adaptation to handle configurations of *Cover*-type devices without *state_topic*
- Adaptation to manage configurations of *Cover*-type devices with the opening percentage reversed (which is therefore a closing percentage)
- Fixed the default configuration for *moisture* commands, which were configured as *temperature* commands (applies only if the generic type is received in the discovery information)
- Jeedom v4.5 required
- Dependency update
- Implementation of a new deployment workflow for documentation

## 2026-01-02

- Correction: Command updates were not working in some cases when the configuration used MQTT wildcards (the *+* symbol in the topic), particularly with the OMG *RTL_433toMQTT* gateway.

## 2025-11-30

- Dependency update
- Added *step* handling to the slider action command created for a *number* entity

## 2025-06-27

- Improvement to the automatically generated names for commands when they are not defined in the configuration: the names should be shorter (especially in the case of zwave-js and zigbee2mqtt)
- Behavior change regarding the *Visible* property on commands: now, most commands are not visible by default when created; you must check *Visible* to display them on the widget. The goal is to make the widget easier to configure by displaying only the most relevant information and commands by default, rather than displaying almost everything.
- Improvement and translation of command names when they are correctly categorized by the source (~= there is a generic type associated with the command)
- Apply a default widget based on the command's generic type (if available)
- Changes to device image management: The previous configuration (and custom images) should be migrated, but you may need to make some manual adjustments.
- Managing the *model_id* to correctly retrieve device images in Zigbee2MQTT 2.x
- Adapting the MQTT client ID to the format "mqttdiscovery-[random ID]" to facilitate monitoring
- New binary commands created from a *device_automation* entity will now have the "repeat identical values" setting enabled by default upon creation (no change to existing commands)
- Added missing translations for certain command names
- Correction: In some cases, the "off" command for a switch was not created.

## 2025-02-24

- Dependency update
- Minor fix to the handling of discovered topics
- Fixes an error that occurs when creating an action command if multiple commands have the same name

## 2024-12-26

- Support for *climate* / *HVAC* types
- Added "JSON schema" support for the *light* type: supports light bulbs with dimming, color temperature adjustment, color selection, effects, and transitions.
- Added the **Status**, **On**, and **Off** commands to the *light* type using the *default schema*
- Fix for the info commands for the *vacuum* type
- Fixed an issue where list commands sometimes did not include the list of options
- Fixed the *EMS-ESP* integration issue caused by a mix of two different syntaxes that were not supported by the plugin
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-07-02

- Add the *vacuum* type
- Fixed an issue where some device images were not displaying
- Dependency update

## 2024-05-14

- Improvement: Device commands are created immediately after a device is added; it is no longer necessary to restart the daemon
- Improvement: Takes into account the module's latest name during discovery (useful if the name is changed after inclusion, for example)
- Improvement: Images from all Zigbee modules (Zigbee2mqtt-compatible) will be automatically retrieved by the plugin
- Added a button to open the module's configuration if the URL is provided in the discovery information (for example, to the module's configuration on zigbee2mqtt, to omg)
- *Update*-type fix for Zigbee devices (via zigbee2mqtt)
- For *device_automation* / *device trigger* types, you must delete the corresponding commands and restart the daemon to recreate them correctly
- Fix for dependency checking
- Dependency update
- Internal daemon modification

## 2024-02-25

- Optimizing backup size
- Added images of a few Zigbee modules

## 2024-02-14

- Support for the *select* type (list action command)
- Support for the *device_automation* type
- Support for the *music_player* type (for the Sonos2MQTT gateway)
- Added the **Open**, **Close**, and **Stop** commands to the *cover* type (shutters, blinds, curtains, etc.)
- Improvement: Info commands whose unit is `%` will have their minimum and maximum values set to 0 and 100 by default
- Added images for the Zigbee modules *Sonoff occupancy sensor (SNZB-06P)* and *Aqara curtain driver E1 (ZNCLBL01LM)*
- Added a button to remove all discovered devices from the list and from the MQTT broker (not including manually created devices, of course)
- Added a button to remove unknown devices from the list
- Removal of the "Duplicate" button for a device that had no reason to exist
- New version of dependencies (paho-mqtt 2.0) and corresponding updates to the daemon
- Fix for the discovery of a *Lock* component when it does not have a defined name
- Fix for *cover* action on certain devices

## 2023-12-09

- Reducing Unnecessary Logs
- Added a button to permanently delete a discovered device, including those on the MQTT broker
- Fixed: Some "off" commands were not working correctly because their configuration was saved incorrectly (this depended on the command's payload).
- Added images of various device models
- Add the default configuration for the generic type to the command (when possible)
- Added support for reporting the battery status of devices in the core (where possible)
- Add default icons to commands based on generic type
- Added the ability to manage presence on undecoded Bluetooth devices (which therefore do not appear in the list of discovered devices)
- Added the ability to set a custom model name and, consequently, a custom image for each device (after changing the device's model name)
- Fixed: Updated temperature information commands for Bluetooth devices when the command was discovered by OMG (it worked correctly when discovered by Theengs Gateway)

## 2023-11-07

- Support for the *lock* type for lock management (e.g., Nuki)
- Adding a default image for the Nuki Smart Lock 3.0 Pro
- Filters the file types accepted by the plugin when selecting an image to upload for a device template
- Fixed the "Configuration" button on the discovered devices screen

## 2023-11-02

- Improvements to configuration parsing for certain devices (support for the "base topic" if declared)
- Change to presence management: **rssi** commands will be set to -200 if there are no further updates to the command (after the configured timeout)

## 2023-10-22

- Configuring the min and max values for **rssi** commands

## 2023-10-19

- Reorganization of logs
- Minor fix to the automatic creation process during discovery

## 2023-10-18

- Addition of an **rssi** command via the gateway providing the information. The main **rssi** command retains its current behavior: it returns the latest value received from any antenna, and presence detection is based on this value.
- Internal reorganization of the code that should be completely transparent

## 2023-10-16

- Add a button to the device configuration page to view its raw configuration, as well as a button to easily copy it so I can share it with you if necessary
- Reorganization of plugin data: In principle, custom images have been moved to the correct location; if this is not the case, please create a post on the Community forum.

## 2023-10-15

- Behavior change for the *cover* type (e.g., shutters): creation of open/close/stop commands even if there is no status feedback
- Modifying the visibility and default template when creating certain commands

## 2023-10-14

- Support for the *update* type, which provides information commands such as **Installed Version** and **Latest Version**, as well as an action command, **Firmware Update**, to initiate a hardware update for devices that support this feature (e.g., OMG)

## 2023-10-12

- Support for *device_tracker* for compatibility with "Tile," which reports data slightly differently than Nuts
- Added filters to the manual device addition window to enable searching

## 2023-10-10

- Added the ability to use custom images for devices (one image per model)

## 2023-10-07

- Added the device ID, manufacturer, and model to the configuration page
- Added a new feature that lists all detected devices that haven't been created yet, with the option to add them one by one as desired without having to enable automatic creation
- Added a notification to the devices page when new devices are detected
- Fixed a bug related to parsing certain devices

## 2023-09-30

- Added a setting to disable the automatic creation of discovered devices
- Add the *alarm_control_panel* type

## 2023-09-11

- *MQTT Manager (mqtt2)* is no longer a prerequisite (you must have an MQTT broker installed, either by yourself or via any other Jeedom plugin). If *MQTT Manager (mqtt2)* is installed, the broker configuration is semi-automatic.
- Implementation of a dedicated MQTT client for the plugin to improve performance and flexibility; the plugin now includes a daemon
- Add the *cover* type
- Modifications and improvements to the plugin's configuration page

## 2023-09-07

- Light/Brightness Control

## 2023-07-20

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
