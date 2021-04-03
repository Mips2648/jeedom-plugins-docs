---
layout: default
title: Changelog Gardena-Husqvarna
lang: en_US
pluginId: gardena
---

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
