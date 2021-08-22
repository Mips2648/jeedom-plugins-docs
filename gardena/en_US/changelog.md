---
layout: default
title: Changelog Gardena-Husqvarna
lang: en_US
pluginId: gardena
---

# 2021-08-22

- Add command **Remaining time** on Gardena Smart Mower
- Add info command ** Remaining time ** for Husqvarna Automower (calculated internally by the plugin) only when using the commands **Start manual mode** or **Back to base**
- Add table display mode of the list of device for Jeedom 4.2

# 2021-07-12

- Added a configurable cron for updating Husqvarna Automowers in the plugin configuration.
- Added the possibility of selecting pause time (in minutes) in command *Pause schedule*. To have this option, you must delete the existing command on the device (do not delete the device), save and then use the function *Create missing commands * so that the command is recreated with the correct configuration. The scenarios will have to be adapted with the new command.
- Move plugin to "Nature" category

# 2021-03-14

- Fix version of a dependency due to a bug in the latest version of it (see <https://github.com/websocket-client/websocket-client/commit/3112b7d75b1e5d65cb8fdfca7801606649044ed1#commitcomment-48226116>). If you installed the plugin and its dependencies after March 3, you probably need to rerun the dependency installation; if everything is working well for you it is not necessary.
- New presentation of objects list 
- Improved layout of device and commands configuration pages

# 2020-10-24

- Fixed an issue with the Smart Irrigation Control that prevented the daemon from starting correctly
- Increase of the maximum time limit (from 1 hour to 6 hours) for manual starting of Gardena Mowers.

# 2020-08-29

- Add **Last error** command on Gardena Smart Socket, Water Control and Irrigation Control: Please use the _Create missing commands_ button on the device page to add it
- Add info _Last error_ in health page
- Fix an issue on daemon start with Husqvarna Automower

# 2020-08-27

- Add command **Last error** on Gardena Smart Mower
- Delete command "Remaining time" on Gardena Smart Mower because the information is not available
- Fixed an issue with update of the value of the Gardena Smart Mower "Activity" command
- Fix an incorrect image link in the Gardena Smart Mower configuration page

# 2020-08-22

- Improvement of the reconnection process in the event of network failure or API disconnection by Gardena
- Cleanup of the layout for V4
- Fixed a dependency problem on some installations

# 2020-08-16

First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
