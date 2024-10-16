---
layout: default
title: WorxLandroidS documentation
lang: en_US
pluginId: worxLandroidS
---

# Description

This plugin allows to connect to Worx Landroid mowers.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

The connection to the mower is made from a cloud server using the account used when registering the mower.

The credentials are the one of the mobile application.
You need to wait until the dependencies are installed to allow communication with the mower.

Once the credentials have been saved, the daemon will start and automatically discover your mowers. For each of them, new device will be created automatically.

Stopping the daemon stops the connection with the mower.
If the mower is stopped for a long time, in winter for example, you can deactivate the daemon (and automatic management) or completely deactivate the plugin.

# Usage

The default name = Mower name on the mobile application

The dashboard shows:

- Battery status
- Back home button
- start button
- Pause button
- Refresh current infos
- The date and time of the last communication
- Distance and total operating time
- Charge cycles counter
- Rain delay in minutes
- rain delay change
- Mower state description and code
- Error description and code
- Daily schedule with start and stop times
- 'Edge.' means the cutting of the borders is planned

You can choose to show or hide information via the commands list of the device.

# Widget

A pre-configured widget is available in the plugin; you can activate this widget in the device configuration page.

![alt text](../images/doc.png)

# Appendices

## Error codes list

- 1: Blocked
- 2: Lifted
- 3: Wire not found
- 4: Out of bounds
- 5: Rain delay
- 6: Close the hood to mow
- 7: Close the cover to return to the base
- 8: Blade motor blocked
- 9: Wheel motor blocked
- 10: Timeout after blocking
- 11: Upside down
- 12: Low battery
- 13: Reverse cable
- 14: Battery charge error
- 15: Station search timeout exceeded
- 16: Locked
- 17: Battery temperature error
- 18: Dummy model
- 19: Battery cover opening delay exceeded
- 20: Wire search
- 21: msg num
- 100: Error docking to charge station
- 101: hbi error
- 102: OTA error
- 103: Map error
- 104: Excessive slope
- 105: Zone inaccessible
- 106: Charging station inaccessible
- 108: Insufficient sensor data
- 109: Training start refused
- 110: Camera error
- 111: Map exploration required
- 112: Mapping exploration has failed
- 113: rfid reader error
- 114: Headlight error
- 115: Missing charging station
- 116: Blade height adjustment blocked

## List of status codes

- 0: Inactive
- 1: At the station
- 2: Start-up sequence
- 3: Leave the base
- 4: Follow the cable
- 5: Base search
- 6: Cable search
- 7: Mowing in progress
- 8: Lift
- 9: Blocked
- 10: Blades blocked
- 11: Debug
- 12: Remote control
- 13: Digital fence escape
- 30: Back to base
- 31: Creating mowing zones
- 32: Cuts the edge
- 33: Departure to mowing area
- 34: Pause
- 103: Zone search
- 104: Base search
- 110: Crossing border
- 111: Discovering the lawn

# FAQ

> How often is the data updated?

Data are available in real time. There is no fixed delay, so it depends on whether the mower sends information or not; 
It will be several times per minute while mowing and maybe no updates during the night...

> What models are compatible?

It is not possible to list all compatible models; in principle all models equipped with a wifi connection, compatible with the Worx cloud will be compatible with the plugin.

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- a screenshot of the plugin's configuration page
- all available plugin logs pasted into a `Preformatted Text` (button `</>` on community), no files!
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...

# Do you like the plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
