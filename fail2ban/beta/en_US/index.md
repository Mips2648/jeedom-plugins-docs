---
layout: default
title: fail2ban documentation
lang: en_US
pluginId: fail2ban
---

# Description

A plugin for monitoring fail2ban. It allows you to retrieve real-time information from a local or remote (via SSH) fail2ban instance, and it also keeps daily counts of blocked IP addresses as well as a count by the IP address's country of origin (the country is determined by geolocating the IP address).

It also allows you to block and unblock an IP address.

> **Important**
>
> This plugin does not allow you to install or configure fail2ban on the system.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

# Plugin Configuration

There is no configuration required here.

The plugin uses the Jeedom cron to update devices (see device configuration) and the cronDaily to reset daily counters.

# Equipment

Each device in the plugin corresponds to an instance of fail2ban on a machine. So you must start by adding a device and giving it a name.

In the device configuration, you'll see the standard settings common to all Jeedom devices, followed by the settings specific to this plugin:
![settings](../images/params.png)

The first step is to choose the mode: *local* or *SSH*. *Local* mode retrieves information from fail2ban installed on the Jeedom machine, while *SSH* mode allows you to connect to a remote machine via SSH. In this case, you must enter the hostname (or IP address), the port (if different from 22), the username (which must be in the sudoers group), and the password.

You can also set how often the data should be updated; by default, this will be every 10 minutes.

# Commands

After backing up the device, if the configuration is correct and the device is enabled, the plugin will retrieve the list of configured *jails* and, for each one, it will create the following commands:

- **Refresh** command to update the corresponding counters
- **Banip** action/message command to ban the IP address specified in the message
- **Unbanip** action/message command to unban the IP address specified in the message
- **Current Fails**: Information showing the number of failed attempts at this time
- **Total failure**: information showing the total number of failed attempts
- **Banned**: Information showing the number of IP addresses currently banned
- **Total Banned**: Information showing the total number of banned IP addresses
- **Last banned IP** Information showing the last banned IP
- **List of Banned IPs** Information listing the IPs that are currently banned
- **List of IPs Banned Today** Information listing the IPs banned today

In addition to these commands, during each refresh, if a new IP address is banned, the plugin will perform a geolocation search on the IP address and create a new command based on the country of origin, containing the number of unique visits (per IP address) (for public IP addresses only)

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the *INFO* level, pasted into `Preformatted Text` (use the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
