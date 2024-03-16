---
layout: default
title: Theengs gateway changelog 
lang: en_US
pluginId: tgw
---

# Beta

- Add automatic antenna restart as an option
- Update dependencies

# Stable

## 2024-02-14

- Fix: send antenna offline notification only if the device is activated
- Add optional setting to enable publication of advanced data

## 2024-02-04

- Add the installed version number and the latest available version in the device configuration page
- Add a message if a new version is available
- Add a button to update the antenna if latest version > installed version
- Add optional parameters: *Scan duration* & *Delay between 2 scans*
- Add optional parameter for decoding private/random MAC addresses (see documentation)

## 2023-12-16

- Minor fix in antenna configuration that could sometimes cause problems with Theengs gateway >1.2 and/or Debian 11

## 2023-12-04

- Add a command to force remote log cleaning
- Fix to manage `localhost` in configuration (equivalent to `127.0.0.1`)
- Add logrotate configuration for remote antenna logs
- Add “Stop the service” button in the device configuration page (same function as the **Stop** command)
- Add buttons to see antenna logs directly from the device configuration page
- Fix on retrieving the list of Bluetooth adapters on a remote antenna

## 2023-11-06

- Fix antenna configuration when adding a model to ignore whose name was already in a part of an already ignored model name
- Fix the antenna configuration in case the list of models to ignore was empty
- Fix a bug in the display of models to ignore

## 2023-11-02

- Add an option to add a message to the message center when the antenna is offline

## 2023-10-30

- After configuration change, the antenna will be automatically restarted if useful and possible and if it was already started

## 2023-10-23

- Update dependencies

## 2023-10-20

- Modification of the antenna installation to ensure compatibility with Debian 12. It is not mandatory to reinstall existing antennas immediately after updating the plugin, but I recommend that you plan this when possible for you. Just click on the “Install the antenna” button and the plugin will clean the previous installation and reinstall the antenna.

## 2023-10-15

- View the list of available Bluetooth interfaces (with their MAC address) in the antenna configuration page
- Modification of the plugin configuration screen

## 2023-10-14

- Add antenna log level configuration
- Add a summary of the current antenna configuration (you will have to send it again the configuration to see it on the device)
- Automatic retrieval of service logs (every minute) on Jeedom

## 2023-10-13

- Improving the verification of the status of the installation
- Added the ability to manually check the status of the installation
- Add an action to uninstall the service and antenna if necessary

## 2023-10-12

- Add the installation of the bluez system package when installing the antenna in case it is not already installed

## 2023-10-11

- Add a second check to check if the installation is still in progress
- Verifying the correct configuration of the plugin when setting up an antenna

## 2023-10-10

- Add health information of antennas in the Jeedom health page
- Add antenna status in device table display mode

## 2023-10-08

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
