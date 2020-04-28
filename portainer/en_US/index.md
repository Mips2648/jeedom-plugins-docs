---
layout: default
title: Portainer documentation
lang: en_US
pluginId: portainer
---

# Description

Plugin to connect to Portainer. Portainer is a solution to manage containers on docker which can be easily installed in a container.
With this plugin, it is possible to retrieve in Jeedom all dockers servers configured in Portainer and so all containers.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
You need to have Portainer already installed, solutions to have this are fully documented on their website.

# Plugin configuration

In the plugin configuration you have to provide portainer URL with the format `http://PORTAINER_SERVER:9000` as well as a username and a password.

# The devices

As soon as the configuration is done, the plugin will try to connect to Portainer every minute to synchronize.
All devices to which the plugin has access will be automatically created in Jeedom, it is not possible to create a device manually.

There are two options to get the output logs stdout and stderr to Jeedom. If the corresponding options are activated on the device, the logs will be read each time the device is synchronized and accessible in the Jeedom logs interface.

# Available commands

## Docker

On Docker type device, there are info commands giving the number of CPUs and total memory, as well as the number of containers switched on and off.

## Container

On Container type device, there is an info command giving the status of the container, the date of the last start-up as well as the last shutdown and action commands to start, stop, restart, pause and kill the container.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
