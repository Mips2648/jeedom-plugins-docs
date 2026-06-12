---
layout: default
title: Documentation Portainer
lang: en_US
pluginId: portainer
---

# Description

A plugin that allows you to connect to a [portainer.io](https://www.portainer.io/portainer-ce/) server, which is a Docker container management solution that can itself be easily installed within a container.
Using this plugin, you can retrieve all Docker instances configured on [portainer.io](https://www.portainer.io/portainer-ce/) as well as all their containers in Jeedom.

The plugin also features a health page and a dedicated dashboard that provides an overview of all containers and allows you to perform all basic actions, similar to the "Containers" page on [portainer.io](https://www.portainer.io/portainer-ce/).

# Supported versions

| Component | Version |
|-----------|-----------------------------|
Debian | Bullseye(11) & Bookworm(12)
| Jeedom    | >= 4.2 |

# Installation

To use the plugin, you need to download, install, and activate it just like any other Jeedom plugin.
You must already have a Portainer.io server set up; the various options for doing so are well documented on their website.

# Plugin Configuration

In the plugin settings, you will need to enter the Portainer URL in the format `http://PORTAINER_SERVER:9000`, along with a username and password.

You can also choose whether or not to enable the panel, as well as the parent object that will be used when creating Jeedom devices: if a device with the same name does not yet exist under that object, the new Portainer device will have that object as its parent; otherwise, it will be set to "None".
You can also choose between two modes for automatic synchronization:

- either create new containers that do not yet exist in Jeedom and update the existing containers
- or simply update the existing containers

> **Type**
>
> The _Synchronize_ action available on the equipment page to force a manual synchronization will always create any missing containers. The option above applies only to automatic synchronization

# Facilities

Once a user has been set up, the plugin will attempt to connect to portainer.io every minute to synchronize.
All devices that the plugin has access to will be automatically created in Jeedom; it is not possible to create a device manually.
You can perform a manual sync using the button on the equipment page.

There are two options for importing stdout and stderr logs into Jeedom. If the corresponding options are enabled on the device, the logs will be read each time the device synchronizes and will be accessible in the Jeedom logs interface.

# Available orders

## EndPoint

On EndPoint-type devices (Docker instances, Portainer agents, etc.), the following info commands are available:

- **Status** is 1 or 0 depending on whether the device is powered on and reachable
- **Number of CPUs** indicates the number of CPUs in the machine
- **Memory** displays the total memory of the machine in bytes
- **Number of lit containers** and **Number of unlit containers**
- **Number of sound containers** and **Number of unsound containers**
- **Number of volumes**
- **Number of images**
- **Number of services**
- **Number of stacks**
- **Public URL**

## Container

For container-type equipment, the following information commands are available:

- **Status**: Possible values are: _created_, _running_, _paused_, _restarting_, _removing_, _exited_, _dead_
- **Health status**: Possible values are: _none_, _starting_, _healthy_, _unhealthy_
- **Running** info/binary
- **Paused** info/binary
- **Restarting** info/binary
- **Dead** info/binary
- **OOMKilled** info/binary
- **IP address** of the container
- **MAC address** of the container
- **Gateway** network gateway
- **Last startup**: the date of the last startup
- **Final stop**: the last extinction

and action commands:

- **Start**
- **Stop**
- **Restart**
- **Pause**
- **Resume**
- **To kill**

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to start a new thread, and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the _INFO_ level, pasted into a `Preformatted Text` block (use the `</>` button on the community page)—no files!
- depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
