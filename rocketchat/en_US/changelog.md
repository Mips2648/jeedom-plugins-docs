---
layout: default
title: Rocket.Chat changelog
lang: en_US
pluginId: rocketchat
---

# beta

- Compatibility with Rocket.Chat v4
- This update requires reinstalling dependencies, this should be done automatically when updating the plugin.
- Add table display mode of the list of device for Jeedom 4.2
- Remove compatibility with Debian Stretch, henceforth it is essential to be under Debian Buster minimum

# 2020-12-02

- Add support for buttons to quickly respond to ask (like telegram)
- New presentation of objects list
- Improved layout of device and commands configuration pages
- Cleanup of the layout for V4

# 2020-08-15

- Force configuration of the API key in localhost mode

# 2020-03-30

- Move documentations

# 2020-03-27

- Change method for sending messages because the one used crashed the Android Rocket.Chat app in certain situations (due to a bug in the Rocket.Chat API)

# 2020-03-20

- It is no longer necessary to mention the bot for interactions in a direct / private message conversion.
- Check configuration before starting daemon
- Check daemon state before using a command

# 2020-02-14

- Add support of files attachments (e.g. pictures from cameras)

# 2020-02-01

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
