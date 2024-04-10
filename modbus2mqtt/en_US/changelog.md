---
layout: default
title: Modbus 2 MQTT changelog
lang: en_US
pluginId: modbus2mqtt
---

# Beta

n/a

# Stable

## 2024-04-10

- Fix on dependencies check
- Update dependencies

## 2024-03-16

- Add new option to choose the writing mode: simple (function 06) or multi (function 16)
- Add new option to configure the address of the slave terminal

## 2024-02-26

- Optimizing the size of backups

## 2024-02-14

- Add support for signed and unsigned integers on 32-bit & 64-bit
- Add a new option to reverse words if necessary (for 32-bit & 64-bit numbers)
- Technical improvement on the daemon: transition to full asyncio
- Modifying the dependency installation script for Debian 12 compatibility
- New version of the dependencies (paho-mqtt 2.0) and adaptation of the daemon accordingly

## 2023-08-24

- Fix a dependency issue on Debian 11 / Python 3.9

## 2023-05-20

- Compatibility Jeedom v4.4

## 2023-01-30

- Fix: Unable to remove some commands from device in some cases

## 2022-11-11

- First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
