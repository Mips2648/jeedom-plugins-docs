---
layout: default
title: Proxmox changelog
lang: en_US
pluginId: proxmox
---

# Beta

n/a

# Stable

## 2024-09-16

- Update dependencies
- Translation of the plugin into English, German, Spanish, Italian and Portuguese
- Debian 11 or higher required

## 2024-07-02

- The *Active* check box is now read-only because it is updated during synchronization
- Fix for Debian 12 if the Proxmox configuration is incorrect and therefore the plugin does not have access to all the information it is trying to access

## 2024-04-11

- Update dependencies

## 2024-03-18

- Add a **Delete snapshot** command on VM and LXC

## 2023-05-20

- Change to the naming of *storage* type equipment to avoid conflicts when used with a cluster of nodes.
- The *Device name* field is now read-only because the device name is defined by the synchronization process and therefore cannot be modified.
- Add info commands **Number of tasks in error** and**Errors** on the *Node* devices; the number of hours to take into account for verification is configured per device.
- Improve password fields
- Compatibility Jeedom v4.4
- Add links to documentation in beta

## 2022-10-17

- Update of the presentation of commands for Jeedom v4.3

## 2022-07-15

- Update of internal libraries

## 2022-02-11

- Improvement: possibility to configure a list of IPs, separated by a comma, in the plugin config (to different nodes of the same cluster) to ensure resilience
- Minor layout changes to configuration screens

## 2021-12-27

- Add an info command **Node** on VM and LXC which returns the node on which the VM is running (useful if you have several nodes in the cluster)
- Add a **Restart** (reboot) command that will do a clean reboot of VMs, the **Restart immediately** (reset) command still exists.
- Add a panel and redesign of the health page. You must activate the panel in the plugin configuration.
  - Organization of resources by node;
  - Sorting of resources (same order as in Proxmox: LXC, VM, storage);
  - Possibility to execute actions ((re)Start, Pause, Stop ...) on VMs and LXC from the panel;
- Add more config information on LXCs
- Add info commands on nodes giving the number of VM/LXC started and stopped ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Add table display mode of the list of device for Jeedom 4.2
- Improvement: Devices which are VM and LXC templates have a different icon to identify them more easily
- Improvement: move synchronization process to daemon to be able to increase the refresh rate, this can be configured in the plugin configuration.
- Improvement: The **Updates Available** command is now an info/numeric command instead of info/binary as it should have been from the start, please check your scenarios.
- Various interface improvements
- minor bugfixes

## 2020-12-02

- Added a configuration on the plugin to define the default parent object that will be used when creating a new resource, this will prevent you from having to systematically do it by hand.
- New presentation of objects list
- Improved layout of device and commands configuration pages

## 2020-08-25

- Update of the plugin icon to match the Jeedom standard
- Add an icon for each type of Proxmox resource for greater clarity
- During synchronization, the plugin will automatically activate and deactivate Jeedom devices corresponding to Proxmox resources depending on whether they exist or not in order to facilitate management and provide more clarity.
- Add an accordion menu in the devices page

## 2020-06-09

- Add support for Zstandard compression mode (zstd) in backup options, requires Proxmox 6.2

## 2020-03-30

- Move documentations
- Add **Restart** command on VM

## 2020-02-12

- Add commands **Start all** and **Shutdown all** on the nodes
- Add commands **Shutdown the node** and **Reboot the node**
- Add commands **Suspend** and **Resume** on VMs and LXCs

## 2019-11-23

- Added a specific health page listing an overview of all Proxmox resources

## 2019-11-16

- Added a field to enter a description (optional) when taking a snapshot. If you have scenarios using this command please check them.
- Add **snapshot list** command on VM and LXC
- Added a command giving the percentage of usage for memory, disk and swap on all devices
- remove vmid and node commands on all devices
- Fixed: status *paused* is correctly specified on a VM or a container on pause
- Fix: It is now possible to rename the device in Jeedom with a different name than the one in Proxmox

## 2019-11-12

- Added configuration information on VMs (agent, processors, memory, network)
- Added IPv4, IPv6 and MAC address information commands on VMs
- Adding the PVE version on the node configuration page
- Added commands giving the average load of the node
- Addition of a command giving swap usage
- Added a binary command indicating if updates are available on the node

## 2019-11-05

- Added more information on storage device
- Added a Backup command for VMs (check documentation for all options)

## 2019-10-28

- Fix an (non-blocking) error when starting and stopping the plugin
- Add translation for en_US

## 2019-10-26

- Added more information on nodes
- Added a Refresh command on nodes

## 2019-10-22

- Added support for linux containers (LXC)
- Added a command to take a snapshot on VM and LXC
- Added a Start, Shutdown and Stop immediately command on VM and LXC (see documentation)
- Added a Refresh command on VM and LXC
- Fixed problem connecting to Proxmox when the certificate is invalid

## 2019-10-21

First stable release

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
