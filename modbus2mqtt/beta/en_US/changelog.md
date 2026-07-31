---
layout: default
title: Modbus 2 MQTT Change Log
lang: en_US
pluginId: modbus2mqtt
---

# Change log

## 2026-07-22

- Dependency Update

## 2026-06-12

- Implementation of a new deployment workflow for documentation
- Support for custom device images (Jeedom 4.5)
- Dependency Update
- Python 3.11 is required; it will be installed automatically if necessary.

## 2025-06-27

- Fixed a problem with the daemon startup that could occur on Debian 12

## 2025-04-18

- Added support for the *Coil status* and *Input status* tables
- Migration to pymodbus 3.8 => removal of the option to reverse the order of bytes
- Adapting the MQTT client ID to the format "modbus2mqtt-[random ID]" to facilitate monitoring
- Dependency Update

## 2024-12-26

- Added a new option to reverse the order of bytes
- Added support for 32-bit floating-point numbers
- Added an option to configure the Modbus request timeout
- Added an option to configure the interval between two readings
- Removal of the option to choose the writing mode: it is determined automatically based on the type.
- Daemon Update
- Dependency Update
- Icon Update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Fix: The terminal address (slave ID) was not being properly recognized
- Jeedom v4.4 required

## 2024-04-10

- Fix for dependency checking
- Dependency Update

## 2024-03-16

- Added a new option to choose the write mode: single (function 06) or multi (function 16)
- Added a new option to configure the slave terminal's address

## 2024-02-26

- Optimizing backup size

## 2024-02-14

- Added support for signed and unsigned integers on 32-bit and 64-bit systems
- Added a new option to reverse the words if necessary (for 32-bit and 64-bit numbers)
- Technical improvement to the daemon: switch to full asyncio
- Modification of the dependency installation script for Debian 12 compatibility
- New version of dependencies (paho-mqtt 2.0) and corresponding updates to the daemon

## 2023-08-24

- Fix a dependency issue on Debian 11 / Python 3.9

## 2023-05-20

- Jeedom v4.4 Compatibility

## 2023-01-30

- Fix: Unable to delete certain device commands in some cases

## 2022-11-11

- First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
