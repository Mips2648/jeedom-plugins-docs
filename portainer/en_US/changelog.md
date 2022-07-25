---
layout: default
title: Portainer Changelog
lang: en_US
pluginId: portainer
---

# 2022-07-15

- Update of internal libraries

# 2022-02-09

- Add table display mode of the list of device for Jeedom 4.2

# 2021-08-21

- Added a _State_ command on **agent** and **docker** device
- Fix a sync issue when an endpoint is offline

# 2021-05-19

- Add support of Portainer instance of type **agent**
- Add info commands giving the number of containers, volumes, images, services and stacks on **agent** and **docker** type devices

# 2021-02-08

- Add a _Public URL_ command on the Docker device
- Add the display of the image used for the container in the device configuration page
- Fixed a case of duplicate display of containers on the panel if several dockers used (you have to force a manual sync so that the health page displays the correct information after the plugin update)

# 2021-01-06

- New presentation of the list of device by category: Docker & Container

# 2020-12-02

- New presentation of objects list
- Improved layout of device and commands configuration pages

# 2020-09-06

- Fix the refresh command on _Docker_ type device was not working
- Add of the Portainer version number in the health page
- Add an option in the plugin config to choose the automatic synchronization mode

# 2020-08-22

- New health page displaying an overview of all the containers and allowing all basic actions to be performed (similar to the "Containers" page on portainer.io)
- A new panel (to be activated in the plugin configuration) contains the same information and actions as the health page.
- Added a configuration on the plugin to define the default parent object that will be used when creating a new container, this will prevent you from having to systematically do it by hand.
- During a synchronization, the plugin will automatically activate and deactivate the Jeedom devices corresponding to the containers depending on whether or not they exist on Docker in order to facilitate the management of your containers and to provide more clarity.
- When a container is destroyed and recreated on Docker, the plugin will no longer create a new Jeedom device but will update the existing one if it finds it (the new container must have the same name and be on the same Docker instance than the old one); this will also greatly reduce the maintenance to be carried out on the Jeedom side.
- Add network information commands on containers (IP, MAC, gateway)
- Add list of ports published by the container with link to it (visible in the device configuration as well as on the new summary page)
- When deleting a Jeedom device, the logs files corresponding to the containers will also be deleted from your Jeedom in order to facilitate maintenance.
- "Docker" type device will have a different icon from "Container" type device to increase visibility.

# 2020-03-30

- Move documentations

# 2020-03-19

Add option to fetch stdout and stderr output during synchronization of device. It's needed to go to device configuration page and save the configuration to activate the option.

# 2020-03-10

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
