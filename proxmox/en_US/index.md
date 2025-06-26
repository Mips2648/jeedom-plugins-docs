---
layout: default
title: Proxmox Documentation
lang: en_US
pluginId: proxmox
---

# Description

Plugin allowing the management of a Proxmox server (a node) or a Proxmox cluster (several nodes in the same cluster), in other words **one and only one** Proxmox *datacenter*.
It is possible to get all resources (nodes, vm, lxc, storage) and all their properties (status, memory, CPU, disk, IP address, up time, snapshots list...).
The plugin can also start, stop vm and containers and take snapshots and backups.
It also has a specific health page summarizing all the information of your devices.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |
| Proxmox   | >= 8.2                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Proxmox User Configuration

> **Tip**
>
> It is recommended to create a local user dedicated to Jeedom and that is what is documented here, other configurations are possible of course as long as Jeedom has a user having access to Proxmox resources that you want to monitor.

Creating a Proxmox user will not be documented in detail here, just the main information, please use the official Proxmox documentation for more details.

This configuration is done on the "datacenter" in the Proxmox interface, menu "Permissions"

## User creation

In the Permissions>Users menu, click on "Add" and complete the following screen:

![Proxmox user](../images/proxmox_user.png "Proxmox user")

> **Important**
>
> Select the realm "Proxmox VE authentication server" otherwise you will not be able to choose the password here.

Remember the username and password chosen, this will be configured in the plugin.

## Assigning permissions

We have created a new user under Proxmox but this one has no access yet.

In the main menu "Permissions", click on "Add" then "User permission" and fill in the following screen according to the permissions you want to grant to Jeedom (see the Proxmox documentation for more details):

![Proxmox permissions](../images/proxmox_permissions.png "Proxmox permissions")

It is not recommended to give the "Administrator" role to the "Jeedom" user; the minimum privileges required for all functions of the plugin to work are as follows:

| Privileges              | Node: info | Node: actions | KVM & LXC: infos | KVM & LXC: actions | KVM & LXC: backup & snapshot | Storage: infos |
|-------------------------|--------------|----------------|------------------|--------------------|------------------------------|-----------------|
| Datastore.Allocate      |              |                |                  |                    | required                       |                 |
| Datastore.AllocateSpace |              |                |                  |                    | required                       |                 |
| Datastore.Audit         |              |                |                  |                    | required                       | required          |
| Sys.Audit               | required       | required         |                  |                    |                              |                 |
| Sys.Modify              |              | required         |                  |                    |                              |                 |
| Sys.PowerMgmt           |              | required         |                  |                    |                              |                 |
| VM.Monitor              |              |                | required           |                    |                              |                 |
| VM.Audit                |              |                | required           | required             |                              |                 |
| VM.Backup               |              |                |                  |                    | required                       |                 |
| VM.PowerMgmt            |              |                |                  | required             |                              |                 |
| VM.Snapshot             |              |                |                  |                    | required                       |                 |

To limit access to what is strictly necessary, you need to create a new custom role ("Permissions" > "Roles" menu); give it a name and grant the privileges listed above.
You can then assign this role to the user via the "Permissions" menu (instead of the "Administrator" role).

You will find more information here: <https://pve.proxmox.com/wiki/User_Management>

# Plugin configuration

The following information must be entered in the plugin configuration:

- IP address of your server (or of one of the nodes of the cluster if you have several). You can configure a list of IPs for each of the nodes of **the same cluster / datacenter**, separated by a comma.
- the port if different from the default port (8006)
- a username and password
- the authentication realm of the user, if different from "pve" (= "Proxmox VE authentication server", default realm for users created locally on Proxmox, see Proxmox documentation)

![Plugin configuration](../images/plugin_config.png "Plugin configuration")

You can check if the configuration of the plugin is correct thanks to the health page (menu Analysis > Health)

![Plugin health](../images/plugin_health.png "Plugin health")

If the connection is successful, the version of your Proxmox server will be displayed.

You can also configure the object in which the device will be created to not have to move them afterwards. The plugin will attempt to assign the parent to the device unless a device with the same name already exists for this object.

Finally, you can choose the information refresh time, by default at 30s.

You can also activate the panel for the dashboard which will be accessible via the *Home* menu

![Menu panel](../images/panel_menu.png "Menu panel")

# Panel

The panel provide a lot of information, it offers a global view of all proxmox resources (containers, virtual machines and storage spaces) organized by nodes. It is possible to perform all actions on the VMs directly from the panel and the information is updated in real time.

![Panel](../images/panel.png "Panel")

# How the plugin works

As soon as the plugin configuration is complete, the daemon should start and will try to connect to Proxmox according to the configured delay in order to synchronize the information.

All resources to which the plugin has access will be automatically created in Jeedom and activated, it is not possible to create device manually. The name of the device cannot be modified under Jeedom, it will always correspond to the name under Proxmox. A device will never be automatically deleted but it will be deactivated.

It is possible to do a manual synchronization via the button in the device page.

After an action has been executed (taking a snapshot or restarting a machine for example), the status of the device will also be automatically updated.

# Available commands

## The nodes

These devices have several info commands giving the up time, CPU, disk and memory usage as well as information on the number and type of CPU and the version of the kernel used.
The following action commands are also available:

- **Reboot the node**: Stop all the VMs and reboot the node
- **Shutdown the node**: Shutdown all VMS and the node
- **Start all**: Starts all machines and containers that have the "Start at boot" option activated
- **Shutdown all**: Shutdown all virtual machines and containers

## Virtual machines & containers

Plusieurs commandes info existent donnant entre autre le statut, le nombre de CPU et leur utilisation, la mémoire totale et l'utilisation, le temps d'activité, les adresses IPv4 et IPv6.

> **Tip**
>
> Pour remonter les adresses IP, il est nécessaire d'installer l'agent Proxmox sur les VMs et de l'activer (voir documentation Proxmox). Cet agent assurera aussi un état stable de votre VM lors des sauvegardes et snapshots.

Les commandes actions suivantes sont également disponibles:

- **Start**: Starts the virtual machine or container.
- **Shutdown**: This triggers a clean shutdown of the virtual machine or container.
- **Stop immediately**: This immediately and abruptly stops the virtual machine or container, this can damage the data.
- **Suspend**: Suspends the virtual machine or the container
- **Resume**: Resume the virtual machine or the container after being suspended
- **Snapshot**: allows to take a snapshot, it is possible to give the name of the snapshot (optional). The name must consist exclusively of letter and number as well as the underscore character (_) and must begin with a letter. If no name is provided or the name is not valid, a random name will be generated by the plugin.
- **Backup**: allows to take a backup. This command (of type message) has an 'email' field which can contain an email address to which a notification will be sent once the backup is finished (email sent by your Proxmox server) and an 'Options' field in which you can pass each desired option in the form *option=value* (please use a space character to separate options; see the table below for a list of available options).

| Name              | Description                                                                                                                        | Format                                                                                                                                                          | Default value                                                    |
|------------------|------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| storage          | Backup location                                                                                                              | The name of the storage resource that must be configured as destination for 'backup' content and be 'available'. Be careful to respect the case. | By default, the first storage meeting the criteria is used. |
| mode             | Backup mode                                                                                                                     | possible values are: `snapshot`, `suspend`, `stop`                                                                                                       | `snapshot`                                                           |
| compress         | Backup compression                                                                                                                 | possible values are: `0`, `gzip`, `lzo`, `zstd`                                                                                                          | `lzo`                                                                |
| mailnotification | Specifies when to send a notification                                                                                            | possible values are: `always`, `failure`                                                                                                                 | `always`                                                             |
| remove           | Deletes old backups if there are more than the maximum configured for the chosen storage (see Proxmox configuration) | possible values are: `0`, `1`                                                                                                                            | `1`                                                                  |

## The storages

Info commands give the disk usage as well as the status of the device.

It is also possible to see the type of content (backup, iso, disks of vms ...); this information is useful when using the "Backup" command of virtual machines.

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- a screenshot of the plugin's configuration page
- all available plugin logs pasted into a `Preformatted Text` (button `</>` on community), no files!
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
