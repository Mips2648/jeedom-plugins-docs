---
layout: default
title: Changelog Gardena-Husqvarna
lang: en_US
pluginId: gardena
---

# 2022-06-30

- Fix possible crash of the daemon when renewing the connection

# 2022-06-11

- Change on the authentication method due to a change made by Gardena / Husqvarna, it is necessary to redo the configuration of the plugin: the email and the password are no longer necessary, however the secret application is now required.

# 2022-05-22

- Fix: action/message commands for Husqvarna robots were not working.
- Fix: **Remaining Time** info command for Husqvarna robots never updated.

# 2022-04-30

- Updating info for Husqvarna robots in real time and therefore removing the update cron which is no longer necessary. There is therefore no longer a limit on the number of updates.
- Add the following commands for Husqvarna robots:
  - **Height of cut** allowing to know and define the height of cut
  - **Headlight** allowing to know and define the lighting mode of the headlights
  - **Last report time** and **Next departure time**
  - **Schedule restriction** giving the reason for the exception on normal schedule
  - **Positions** containing the history of the last 50 positions of the robot (the commands **Last position**, **Latitude** and **Longitude** still exist and indicate the last known position)
- Addition of a widget for displaying the history of positions on a map to be applied to the **Positions** command (see documentation) (contribution from @t0urista)

# 2022-03-12

- Fix dependency check

# 2022-02-11

- Minor layout changes to configuration screens

# 2021-10-04

- Add 3 commands giving the GPS position on the Husqvarna mower: **Latitude**, **Longitude** and **Position**
- Update dependencies: this update requires reinstalling dependencies: this should be done automatically when updating the plugin.

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

- Add **Last error** command on Gardena Smart Socket, Water Control and Irrigation Control: Please use the *Create missing commands* button on the device page to add it
- Add info *Last error* in health page
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
