---
layout: default
title: Portainer documentation
lang: en_US
pluginId: portainer
---

# Description

Plugin to connect to [portainer.io](https://www.portainer.io/portainer-ce/) which is a solution to manage containers on docker which can be easily installed in a container.
With this plugin, it is possible to retrieve in Jeedom all dockers servers configured in [portainer.io](https://www.portainer.io/portainer-ce/) and so all containers.

The plugin has also a health page and a dedicated panel displaying an overview of all containers and allowing you to perform all basic actions, similar to the "Containers" page on [portainer.io] (https://www.portainer.io/portainer-ce/).

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
You need to have portainer.io already installed, solutions to have this are fully documented on their website.

# Plugin configuration

In the plugin configuration you have to provide portainer URL with the format `http://PORTAINER_SERVER:9000` as well as a username and a password.

You can also choose to activate or not the panel as well as the parent object that will be used when creating Jeedom device: if a device with the same name does not yet exist under this object, the new Portainer device will have this object as parent otherwise "None".
It is also possible to choose between two modes for automatic synchronization:

- either create new containers that do not yet exist under jeedom and update existing containers
- or only update existing containers

> **Tip**
>
> The _Synchronize_ action available in the device page to force a manual synchronization will always create the missing containers. The above option is only applicable for automatic synchronization

# Devices

As soon as the configuration is done, the plugin will try to connect to portainer.io every minute to synchronize.
All devices to which the plugin has access will be automatically created in Jeedom, it is not possible to create a device manually.
It is possible to do a manual synchronization via the button in the devices page.

There are two options to get the output logs stdout and stderr to Jeedom. If the corresponding options are activated on the device, the logs will be read each time the device is synchronized and accessible in the Jeedom logs interface.

# Available commands

## EndPoint

On device of type EndPoint (docker instance, portainer agent...), there are the following info commands:

- **Number of CPU** gives the number of CPU of the machine
- **Memory** gives the total memory of the machine in bytes
- **Number of containers running** and **Number of containers stopped**
- **Number of healthy containers** and **Number of unhealthy containers**
- **Volumes counter**
- **Images counter**
- **Stacks counter**
- **Public URL**

## Container

On device of type Container, there are the following info commands:

- **Status**
- **IP address** of container
- **MAC address** of container
- **Gateway** network gateway
- **Last start** the date of the last start
- **Last shutdown** last shutdown

and actions commands:

- **Start**
- **Stop**
- **Restart**
- **Pause**
- **Unpause**
- **Kill**

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
