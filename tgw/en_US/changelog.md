---
layout: default
title: Changelog for Theengs Gateway
lang: en_US
pluginId: tgw
---

# Change log

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Added an advanced option to configure the scan mode
- Dependency update
- Jeedom v4.5 required

## 2026-01-01

- Fixed an error in the antenna installation script

## 2025-08-11

- Added support for *bindkeys*; see <https://gateway.theengs.io/use/use.html#reading-encrypted-advertisements>
- Opens the release notes page in a new tab
- Dependency update

## 2025-04-18

- Fix: It was no longer possible to disable a device that could no longer be reached via SSH

## 2025-02-24

- Fix for Theengs Decoder update notifications
- Service deactivation if the Jeedom device is disabled

## 2025-01-05

- Fixed an issue with detecting the version of Theengs Decoder (if >= 1.8.3)

## 2024-12-25

- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-06-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-07-02

> **Attention**
>
> A major change to antenna management requires you to uninstall and reinstall them. If you do not want to be affected immediately, do not update.
>
> Antenna installation on **Debian Buster (10) is no longer supported**. To install Antenna, you must be running Debian Bullseye (11) or Debian Bookworm (12).

## 2024-04-11

- Dependency update

## 2024-03-16

- Add an optional automatic antenna restart
- Dependency update

## 2024-02-14

- Fix: Sends the "antenna offline" message only if the device is enabled
- Added an optional parameter to enable the publication of advanced data

## 2024-02-04

- Added the installed version number and the latest available version to the device's configuration page
- Add a message if a new version is available
- Added a button to update the antenna if the latest version is newer than the installed version
- Added optional settings: *Scan duration* & *Interval between scans*
- Added an optional parameter for decoding private/random MAC addresses (see documentation)

## 2023-12-16

- Minor fix for the antenna configuration, which could sometimes cause issues with Theengs gateway >1.2 and/or Debian 11

## 2023-12-04

- Added a command to force the cleaning of remote logs
- Fix to handle `localhost` in the configuration (equivalent to `127.0.0.1`)
- Add the logrotate configuration for remote antenna logs
- Added a "Stop Service" button to the device configuration page (same function as the **Stop** command)
- Added buttons to view the antenna logs directly from the device's configuration page
- Fix for retrieving the list of Bluetooth adapters on a remote antenna

## 2023-11-06

- Fixed an issue with antenna configuration when adding a model to ignore whose name was already part of an existing ignored model name
- Fixed the antenna configuration when the list of models to ignore was empty
- Fixed a bug with the display of the list of models to ignore

## 2023-11-02

- Added an option to display a message in the message center when the antenna is offline

## 2023-10-30

- When a configuration change is made, the antenna will automatically restart if necessary and possible, provided it was already running.

## 2023-10-23

- Dependency update

## 2023-10-20

- Changes to the antenna installation to ensure compatibility with Debian 12. It is not required to reinstall existing antennas immediately after updating the plugin, but I recommend doing so when possible. Simply click the "Install Antenna" button, and the plugin will clean up the previous installation and reinstall the antenna.

## 2023-10-15

- Displaying the list of available Bluetooth interfaces (with their MAC addresses) on the antenna configuration page
- Modifying the plugin's configuration screen

## 2023-10-14

- Added configuration for the antenna log level
- Added a summary of the current antenna configuration (you'll need to resend the configuration to view it on the device)
- Automatic retrieval of service logs (every minute) on Jeedom

## 2023-10-13

- Improvements to Installation Status Verification
- Added the ability to manually check the system status
- Added an action to uninstall the service and the antenna if necessary

## 2023-10-12

- Add the installation of the bluez system package during antenna installation in case it is not already installed

## 2023-10-11

- Added a second check to verify whether the installation is still in progress
- Verifying that the plugin is configured correctly when setting up an antenna

## 2023-10-10

- Added antenna health information to the Jeedom Health page
- Added antenna status in the device table mode

## 2023-10-08

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
