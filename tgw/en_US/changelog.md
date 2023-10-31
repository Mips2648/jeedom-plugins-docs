---
layout: default
title: Theengs gateway changelog 
lang: en_US
pluginId: tgw
---

# Beta

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
