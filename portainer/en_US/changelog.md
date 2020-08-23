---
layout: default
title: Portainer Changelog
lang: en_US
pluginId: portainer
---

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

Add option to fetch stdout and stderr output during synchronization. It's needed to go to device configuration page and save the configuration to activate the option.

# 2020-03-10

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
