---
layout: default
title: Modbus 2 MQTT changelog
lang: en_US
pluginId: modbus2mqtt
---

# Beta

- Add support for signed and unsigned integers on 32-bit & 64-bit
- Add a new option to reverse words if necessary (for 32-bit & 64-bit numbers)
- Technical improvement on the daemon: transition to full asyncio

# Stable

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
