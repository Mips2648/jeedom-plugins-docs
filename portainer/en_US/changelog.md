---
layout: default
title: Portainer Release Notes
lang: en_US
pluginId: portainer
---

# Beta

- Updating dependencies

# Stable

## 2025-04-18

- Fixes to the panel: some translations were not being applied
- Updating dependencies

## 2025-02-22

- Updating dependencies
- Icon update

## 2024-09-16

- Optimizations
- Updating dependencies
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Added commands for container-type devices: **Health Status**, **Running**, **Paused**, **Restarting**, **Dead**, **OOMKilled** [(See documentation)]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
- Debian 11 or later is required

## 2023-05-20

- Added information about the latest available version of Portainer.io to the health page (requires Portainer.io >= 2.17) + message in the message center
- Improvements to password fields
- Jeedom v4.4 Compatibility
- Added links to the beta documentation

## 2022-10-17

- Update to the control interface for Jeedom v4.3

## 2022-07-15

- Updating internal libraries

## 2022-02-09

- Added a table view of the equipment list for Jeedom 4.2

## 2021-08-21

- Added a _Status_ command for equipment of the **agent** and **docker** types
- Fixed a synchronization issue when an endpoint is offline

## 2021-05-19

- Added support for **agent**-type Portainer instances
- Added info commands that return the number of containers, volumes, images, services, and stacks on **agent** and **docker** devices

## 2021-02-08

- Add a _Public URL_ command to the Docker device
- Added a display of the image used for the container to the device configuration page
- Fixed an issue where containers were displayed twice on the dashboard when multiple Docker instances were used (you must force a manual sync for the health page to display the correct information after updating the plugin)

## 2021-01-06

- New layout for the list of equipment by category: Docker & Containers

## 2020-12-02

- New layout for the list of items
- Improvements to the layout of the equipment configuration and controls

## 2020-09-06

- The refresh command on a _Docker_-type device was not working
- Added the Portainer version number to the health page
- Added an option in the plugin settings to choose the automatic synchronization mode

## 2020-08-22

- New health page displaying an overview of all containers and allowing you to perform all basic actions (similar to the "Containers" page on portainer.io)
- A new panel (which can be enabled in the plugin settings) displays the same information and actions as the health page.
- We've added a configuration option to the plugin that lets you set the default parent object to be used when creating a new container, which will save you from having to do this manually every time.
- During synchronization, the plugin will automatically enable and disable the Jeedom devices associated with the containers depending on whether they exist in Docker, in order to simplify container management and provide greater clarity.
- When a container is deleted and recreated in Docker, the plugin will no longer create a new Jeedom device but will update the existing device if it finds it (the new container must have the same name and be on the same Docker instance as the old one); this will also significantly reduce the maintenance required on the Jeedom side.
- Added network information commands for containers (IP, MAC, gateway)
- Added a list of ports published by the container, along with a link to the container (visible in the device settings and on the new summary page)
- When you delete a Jeedom device, the logs associated with the containers will also be deleted from your Jeedom to facilitate maintenance.
- "Docker"-type equipment will have a different icon from "Container"-type equipment to improve visibility.

## 2020-03-30

- Relocation of documentation

## 2020-03-19

Added an option to capture stdout and stderr output during device synchronization. You must return to the device page and save the configuration to enable this option.

## 2020-03-10

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
