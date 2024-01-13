---
layout: default
title: fail2ban documentation 
lang: en_US
pluginId: fail2ban
---

# Description

Plugin to monitor fail2ban. It allows you to retrieve all the instant information from a local or remote fail2ban instance (via SSH) but it also keeps daily counters of blocked IP as well as a counter by country of origin of the IP address (country fetch via IP geolocation).

It also allows you to ban and unban an IP address.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

There is no additional configuration to do here.

The plugin uses the Jeedom cron to update the devices (see device configuration) and the CronDaily to reset the daily counters.

# Devices

Each device will correspond to a fail2ban instance on a machine. So you have to start by adding a device and giving a name.

In the configuration of the device, you will see the usual parameters common to all Jeedom device and below the parameters specific to this plugin:
![params](../images/params.png)

The first thing is to choose the mode: *local* or *SSH*. *local* mode allows you to retrieve information from fail2ban installed on the Jeedom machine while *SSH* mode allows you to connect to a remote machine via SSH. In this case you have to enter the hostname (or IP address), the port (if different than 22), the username (who must be in the sudoers group) and the password.

You can also set how often data should be refreshed, by default it will be every 10min.

# Commands

After saving the device, if the configuration is correct and if the device is activated, the plugin will retrieve the list of *jails* configured and for each it will create the following commands:

- **Refresh** action command to refresh the corresponding counters
- **Banip** action/message command to ban the IP given in the message
- **Unbanip** action/message command to unban the IP given in the message
- **Currently failed** info giving the number of currently failed attempts
- **Total failed** info giving the total number of failed attempts
- **Currently banned** info giving the number of IPs currently banned
- **Total banned** info giving the total number of banned IP
- **Last banned IP** info giving the last banned IP
- **List of banned IP** info giving the list of currently banned IP
- **List of IPs banned for the day** Info giving the list of IP banned for the day

On top of to these commands, during each update, if a new IP is banned, the plugin will search for the geolocation of the IP address and create a new command by country of origin containing the distinct number of visits (per IP address) (only for public IP addresses)

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- all available plugin logs
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
