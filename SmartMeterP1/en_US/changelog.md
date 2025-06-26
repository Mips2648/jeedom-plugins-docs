---
layout: default
title: SmartMeter P1 changelog
lang: en_US
pluginId: SmartMeterP1
---

# Beta

n/a

# Stable

## 2025-06-27

- Update dependencies

## 2025-02-22

- Fix data decoding for compatibility with Swiss counters
- Addition of codes 1.6.0 (maximum average power withdrawn over a quarter of an hour since the start of the month) & 2.6.0 (maximum average power injected over a quarter of an hour since the start of the month), the latter information will not be present for everyone, depending on whether the meter provides it or not.
- Migrating the PHP daemon to a Python daemon to improve performance
- Adding an internal heartbeat to the daemon
- Update dependencies
- Icon update

## 2024-10-17

- Update dependencies
- Jeedom v4.4 required

## 2024-08-21

- Update dependencies
- Plugin translation in English, German, Spanish, Italian, Portuguese

## 2024-04-10

- Update dependencies

## 2024-03-03

- Addition of a **Status** command giving the status of the connection with the module

## 2024-03-01

- Removing the plugin cron during uninstallation

## 2024-02-26

- Add power consumed and injected per phase
- Allows the modification of command subtypes to allow the configuration of a “calculation formula” (requires core >=4.4)

## 2024-02-01

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
