---
layout: default
title: SmartMeter P1 Release Notes
lang: en_US
pluginId: SmartMeterP1
---

# Change log

## 2026-07-22

- Dependency Update

## 2026-06-12

- Implementation of a new deployment workflow for documentation

## 2026-05-12

- Dependency Update
- Jeedom v4.5 required

## 2026-01-01

- Dependency Update

## 2025-06-27

- Dependency Update

## 2025-02-22

- Decoding correction for compatibility with Swiss meters
- Added codes 1.6.0 (maximum average power drawn over a 15-minute period since the beginning of the month) and 2.6.0 (maximum average power fed into the grid over a 15-minute period since the beginning of the month); this latter piece of information will not be available to everyone—it depends on whether the meter provides it or not.
- Migrating the PHP daemon to a Python daemon to improve performance
- Adding an internal heartbeat to the daemon
- Dependency Update
- Icon Update

## 2024-10-17

- Dependency Update
- Jeedom v4.4 required

## 2024-08-21

- Dependency Update
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese

## 2024-04-10

- Dependency Update

## 2024-03-03

- Added a **Status** command that returns the connection status with the module

## 2024-03-01

- Removing the plugin's cron job upon uninstallation

## 2024-02-26

- Addition of power drawn and fed back per phase
- Allows you to modify command subtypes to configure a "calculation formula" (requires core >= 4.4)

## 2024-02-01

First version

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
