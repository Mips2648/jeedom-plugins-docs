---
layout: default
title: Proxmox Change Log
lang: en_US
pluginId: proxmox
---

# Change log

## 2026-08-03

- Dependency update

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Dependency update

## 2025-11-08

- Option to configure Proxmox resource tags to exclude; the corresponding devices will not be created in Jeedom
- Saves the tags defined in Proxmox to the corresponding Jeedom devices so they can be used in searches on the Jeedom dashboard

## 2025-08-11

- Added the option to include or exclude RAM (the VM's state) when taking a VM snapshot; **Warning**: Check your scenarios—the default behavior has changed; RAM is now excluded by default
- Dependency update

## 2025-04-18

- Added disk usage commands (value and percentage) for LXC
- Redesign of the Health page and the dashboard
- Corrections to the panel: some translations were not applied

## 2025-02-24

- Fixed an issue where the system would attempt to create resources without names (this can occur due to an issue with your Proxmox servers)

## 2024-12-25

- Reduced timeouts for requests to Proxmox
- Fixed an error that occurred when one of the nodes in a cluster was disconnected (in a multi-node installation)
- Dependency update
- Icon update
- Jeedom v4.4 required

## 2024-09-16

- Dependency update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Debian 11 or later required

## 2024-07-02

- The *Enable* checkbox is now read-only because it is updated during synchronization
- Fix for Debian 12 if the Proxmox configuration is incorrect and, as a result, the plugin does not have access to all the information it is trying to access

## 2024-04-11

- Dependency update

## 2024-03-18

- Added a **Delete Snapshot** command for VM and LXC

## 2023-05-20

- Change to the naming convention for devices of the *storage* type to avoid conflicts when used with a cluster of nodes.
- The *Device Name* field is now read-only because the device name is defined by the synchronization process and therefore cannot be changed.
- Added the **Number of Failed Tasks** and **Errors** info commands for *Node* devices; the number of hours to be considered for verification is configured per device.
- Improvements to password fields
- Jeedom v4.4 compatibility
- Added links to the beta documentation

## 2022-10-17

- Update to the commands interface for Jeedom v4.3

## 2022-07-15

- Update to internal libraries

## 2022-02-11

- Improvement: Ability to configure a comma-separated list of IP addresses in the plugin settings (pointing to different nodes within the same cluster) to ensure resilience
- Minor changes to the layout of the configuration screens

## 2021-12-27

- Added a **Node** info command for VMs and LXCs that returns the node on which the VM is running (useful if you have multiple nodes in the cluster)
- Added a **Reboot** command that will perform a cleaner reboot of the VMs; the **Reset** command is still available.
- Added a panel and redesigned the health page. You must enable the panel in the plugin settings.
  - Organization of resources by node;
  - Sorting resources (same order as in Proxmox: LXC, VM, storage);
  - Ability to perform actions (Restart, Pause, Stop, etc.) on VMs and LXC containers from the dashboard;
- Added more configuration information about LXC
- Added info commands for nodes showing the number of VMs/LXCs that are running and stopped ([See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Added a table-style view of the equipment list for Jeedom 4.2
- Improvement: Devices that are VM and LXC templates now have a different icon to make them easier to identify
- Improvement: Synchronization has been moved to a daemon to increase the refresh rate; this can be configured in the plugin settings.
- Improvement: The **Updates Available** command is now an info/numeric command instead of info/binary, as it should have been from the start. Please check your scenarios.
- Various interface improvements
- minor bug fixes

## 2020-12-02

- Added a configuration option to the plugin that lets you set the default parent object to be used when creating a new resource; this will save you from having to do it manually every time.
- New layout for the list of items
- Improvements to the layout of the device configuration and commands

## 2020-08-25

- Updated the plugin icon to match the Jeedom standard
- Added an icon for each Proxmox resource type for greater clarity
- During synchronization, the plugin will automatically enable and disable the Jeedom devices corresponding to the Proxmox resources, depending on whether they exist or not, in order to simplify management and provide greater clarity.
- Add an accordion menu to the device page

## 2020-06-09

- Added support for the Zstandard (zstd) compression mode in the backup options; requires Proxmox 6.2

## 2020-03-30

- Relocation of documentation
- Adding a **Restart** command to VMs

## 2020-02-12

- Added **Start All** and **Stop All** commands to the nodes
- Added the **Stop Node** and **Restart Node** commands
- Added **Pause** and **Resume** commands for VMs and LXC

## 2019-11-23

- Added a dedicated support page listing an overview of all Proxmox devices

## 2019-11-16

- Added a field to enter a description (optional) when taking a snapshot. If you have any scenarios that use this command, please check them.
- Added a **List of Snapshots** command for VM and LXC
- Added a command that displays the usage percentage for memory, disk, and swap on all relevant devices
- Removal of the "vmid" and "Node" commands on all devices
- Fixed: The *paused* status is now correctly displayed on a paused VM or container
- Fixed: It is now possible to rename devices in Jeedom with a name different from the one in Proxmox

## 2019-11-12

- Adding configuration information to VMs (agent, processors, memory, network)
- Added commands for IPv4, IPv6, and MAC address information on VMs
- Added the PVE version to the node configuration page
- Added commands that return the average load on the node
- Added a command to display swap usage
- Add a binary command indicating whether updates are available on the node

## 2019-11-05

- Adding additional information about storage devices
- Added a "Backup" command for VMs (check the documentation for all options)

## 2019-10-28

- Fixes a (non-blocking) error that occurs when the plugin starts up and shuts down
- Added translations for en_US

## 2019-10-26

- Adding additional information about nodes
- Adding a "Refresh" command to nodes

## 2019-10-22

- Added support for Linux containers (LXC)
- Added a command to take a snapshot on VM and LXC
- Added Start, Stop, and Stop Immediately commands for VM and LXC (see the documentation)
- Adding a "Refresh" command to VM and LXC
- Fixes a connection issue with Proxmox when the certificate is invalid

## 2019-10-21

First stable release

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
