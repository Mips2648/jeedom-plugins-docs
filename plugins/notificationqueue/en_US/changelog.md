---
layout: default
title: Changelog
lang: en_US
---

# Changelog

## 2020-01-11

- Added an option to manage duplicate notifications

## 2020-01-04

- Added a command to empty the queue
- Added an info command to know the number of messages in the queue
- Added ask support for notifications

## 2020-01-01

- Added a configurable delay between each assessment of the condition of a queue (applied between each message in the queue)
- Added management of multiple notification commands (separate commands by && in the configuration)

## 2019-10-05

- Rewrite the plugin to have a queue by device instead of one per command. The migration of your old devices is done during the update but you will have to correct your scenarios.
- Improved behavior for TTS notifications, you should include TTS status in the condition to make it work properly.

## 2019-09-18

- First version
