---
layout: default
title: Arlo Release Notes
lang: en_US
pluginId: arlo
---

# Beta

- Updating dependencies
- Python 3.11 is required; it will be installed automatically if necessary.

# Stable

## 2026-05-29

- Update to support the new custom mode management.
- Fix for reading the mode of *rental* equipment, which causes an error when the connection to the cloud is no longer active
- Correction: Some commands (such as those for controlling the siren or spotlight) were missing for cameras connected directly to Wi-Fi.
- Support for custom device images (Jeedom 4.5)
- Updating dependencies

## 2025-08-11

- Added support for several new camera models
- Limits the retrieval of videos and screenshots from the library via the cloud to 1 day
- Updating dependencies
- PHP 8.4 Compatibility

## 2025-02-24

- Improvements to the login process and removal of warnings from the log
- Focus on local recording & streaming

## 2025-02-13

- Stop the daemon if a connection to Arlo cannot be established
- Update the headers used during authentication

## 2025-02-06

- Added support for the Arlo Pro 5
- Updating dependencies
- Emergency fix to work around a connection outage that occurred during the night of February 5–6

## 2024-12-25

- Added support for the HD & 2K Video Doorbell
- Fixed a bug in the **Schedule Status** command
- Updating dependencies
- Icon update

## 2024-11-16

- Improved support for Arlo Essential models
- Fixes a potential daemon crash if the mode update fails
- Limits the version of a dependency (cryptography) to maintain compatibility with 32-bit Raspberry Pi 3 systems. Please note that compatibility with 32-bit systems will be removed in a future release!
- Updating dependencies
- Jeedom v4.4 required

## 2024-09-23

- Fixed a bug in the **Schedule Status** command
- Fixed a daemon crash if the email username is not an email address

## 2024-09-16

- This new version completely revamps the integration with Arlo to ensure compatibility with the "Arlo V4" interface (which has been in beta for six months).
See also [this thread on the community](https://community.jeedom.com/t/nouvelle-version-pour-la-compatibilite-arlo-v4/119611)
- Added support for the Arlo Essential Indoor 2
- Added support for the Video Doorbell 2
- Added support for the Arlo Essential XL
- Improvements to the Arlo Essential XL
- Translation of the plugin into English, German, Spanish, Italian, and Portuguese
- Reducing the plugin's size
- Optimizing backup size
- Debian 11 or later is required

## 2024-01-20

- Changes to dependency checking for Debian 12 compatibility
- Displays the **On** and **Off** buttons on the camera widget

## 2023-08-21

- Internal changes to dependency management
- Adjust the URL from the last cache during the first sync to avoid an access issue (CSP)
- Blocks the daemon if no Arlo authentication server is found

## 2023-07-19

- Fix for cloud recording that starts up more slowly than before (due to the Arlo cloud)
- Fix local recording & streaming
- Fixed an issue where the duration option was not displayed on the "Record" command in scenarios
- Fix a dependency issue with pi3 on Buster

## 2023-07-03

- Adapting the media library for mobile browsing
- Major overhaul and improvement of Arlo authentication:
  - Saving the session for reuse upon reconnection: Now, reconnecting to Arlo after restarting the daemon will be nearly instantaneous (if the previous session is still valid) because there will no longer be a need to authenticate (so you no longer have to wait for the one-time code via email, go through Cloudflare, etc.)
  - Added alternative connection methods in case the connection is blocked by Cloudflare (but this doesn't work 100% of the time)

## 2023-05-22

- Fix cloud storage

## 2023-05-17

- Update on the Arlo Baby mode change following a change in Arlo's behavior
- Improvements to password fields
- Jeedom v4.4 Compatibility
- Exclude locally saved screenshots and videos from the Jeedom backup to reduce its size
- Updated dependencies to resolve a hang when connecting at daemon startup
- Changes to dependency management to prevent potential conflicts with other plugins

> Normally, dependencies will be reinstalled automatically when the plugin is updated. If this does not happen, please reinstall them manually.

## 2022-11-11

- Minor fix related to Audio Doorbells

## 2022-10-17

- Update to the control interface for Jeedom v4.3

## 2022-10-06

- Improvements to Arlo Floodlight integration: support for additional models, and the addition of custom event handling if no default settings are available (see documentation)
- Minor fix to the camera widget for Jeedom v4 and removal of compatibility with Jeedom v3; the minimum required version of Jeedom is now 4.0

## 2022-08-17

- Fixed: The camera widget for non-admin users was not displaying the latest screenshot

## 2022-05-17

- Support for the VMC4041P model (Arlo Pro 4)
- Added the **Enable Event Management**, **Disable Event Management**, and **Event Management Status** controls to the Arlo Wireless Doorbell and Arlo Go

## 2022-02-11

- Addition of the **Shield Status** command to the Arlo Essential Indoor
- Added the **Siren Status**, **Siren On**, and **Siren Off** controls to the Arlo Essential
- Improvement: Optionally displays all existing action commands on the camera widget
- Added a button to the library to download recordings
- Event management is disabled by default on the Arlo Essential when no hub is connected, as it drains the battery on this model too quickly
- Added new commands to enable on-demand event management on the Arlo Essential: **Enable Event Management**, **Disable Event Management**, and **Event Management Status**
- Fixed: The name of the object/part was still visible on the camera widget
- Removed the installation of the custom version of FFmpeg, which was required on Debian Stretch.

## 2021-10-31

- Updating audio controls during manual and automatic refreshes of the Arlo Baby
- Cloud video recording fix

## 2021-09-22

- Better integration with third-party plugins such as [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) ([See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) for more information)
  - Added a *Last Snapshot URL* command for cameras; this command can be used in the *Snapshot URL Command* setting of the Jeedom Connect camera widget
  - Added an easy-to-copy link to the camera configuration page; this path can be used in the *Recording Folder* setting of the Jeedom Connect camera widget
- Restored several features for the Arlo Video Wireless Doorbell (event management is still disabled); [See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) for more details
- Add the Arlo Chimes 2 (AC2001)
- Fixed the "Playing" status on Arlo Baby, which wasn't always accurate.

## 2021-08-22

- Added a table view of the equipment list for Jeedom 4.2
- Enhancement: Optionally displays the following metrics on the Arlo Baby widget: **Temperature**, **Humidity**, **Air Quality**, **Light Level**
- Fix: The **Air Quality** command was returning a value in parts per thousand instead of a percentage; the value is now back to a percentage.
- Fixes a daemon crash that occurs when a camera (not connected to a base) is offline.

## 2021-07-28

- Support for the Arlo Essential Indoor
- Support for the Arlo Pro 4
- Allows tiles to be displayed in a grid (except for the camera tile, which is customized by the plugin)
- Disable event management on the Arlo Video Doorbell Wire-Free (this isn't an issue with the standard Video Doorbell) because it drains the battery on this model too quickly
- Internal optimization of the heartbeat and reconnection processes
- Improved timeout handling
- Improvement: Real-time mode is now updated if it is changed outside the plugin (i.e., in the Arlo app); previously, this could take up to 1 minute and 30 seconds.

## 2021-06-02

- Add an *Send Recording* action command to Arlo VideoDoorbells
- Fixed the issue with retrieving the two-step authentication code following a change in the format of the email sent by Arlo
- Complete overhaul of the daemon's handling of connections to the Arlo system:
  - The daemon will attempt to reconnect automatically without stopping if a problem occurs during login or if Arlo forces a disconnection,
  - The daemon will re-execute the requested mode change before logging out, if necessary

## 2021-04-03

You must re-run the installation of the dependencies after installing this update, even if they are already *OK*.

- Support for the Arlo Video Doorbell Essential (Wire-Free) AVD2001
- Improved support for the Arlo Essential and Arlo Go product lines
- Complete overhaul of event handling by the daemon (reducing disconnections and reducing the number of requests on battery-powered devices such as Arlo Essential and Arlo Go)
- Urgent fix following a change made by Arlo overnight from April 2 to 3: if you do not install this update, the daemon will no longer be able to connect

## 2021-01-11

- Improvements to the daemon's heartbeat at startup
- Improved integration of the Arlo Essential
- Fixed an issue where the image for the AVD1001A video doorbell was not displaying
- Fix: Since the last update, the siren equipment (built into certain bases) mistakenly included the following commands: *Refresh*, *Connected*, *Mode*, and *Schedule Status*, which obviously did not work. These commands can be removed from this equipment; they will no longer be created by the plugin.
- Fixed a minor error that could appear in the logs (with no impact) when a camera was not shared with Jeedom

## 2020-12-02

- New layout for the list of items
- Improvements to the layout of the equipment configuration and controls
- Added support for Arlo Essential
- Install the Fix app on the Video Doorbell if it's connected without a base station

## 2020-09-21

- Added support for two-factor authentication ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Added lighting support for the Arlo Pro 3 and Arlo Ultra
- Added support for the Arlo Pro 3 Floodlight
- Fixed a crash in the daemon when equipment was offline or disabled

## 2020-08-26

- Force the API key configuration to use localhost
- Automatic rotation of the API key with each update
- Layout cleanup for Version 4
- Removed an "error" connection log entry that was not important (since the daemon reconnects automatically if necessary)
- Added a log if two-factor authentication is enabled for the plugin user, as this feature is not yet supported

## 2020-08-02

- Fixes the broken streaming and local recording features following a change by Arlo (their new system seems slower than before)
- Urgent update required due to a URL change at Arlo that took place overnight from July 31 to August 1: if you do not install this update, the daemon will no longer be able to connect.

## 2020-07-08

- Fix the issue where a video doorbell exists (without a base station)

## 2020-06-18

- Added mode controls to the Video Doorbell widget (when it is not connected to a base station)
- Added the *IP*, *Brightness*, *Temperature*, *Humidity*, and *Air Quality* controls to Arlo Baby
- Added support for the Arlo Baby night light: on/off, timer, brightness, color, color temperature, and mode ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Added support for Arlo Baby lullaby controls: Play/Pause/Next, timer, playlist, volume, repeat mode, and shuffle ([See documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Optimization on the widget
- Fixed an issue with mode management on the Arlo Baby, where modes weren't always reported correctly
- Fixed tooltips on the camera widget in v4

## 2020-06-4

- Urgent fix required due to a URL change at Arlo that took place overnight on June 3–4: if you do not install this update, the daemon will no longer receive events (even if it shows as *OK*) and will likely be unable to connect at all in the near future.

## 2020-05-24

You must re-run the installation of the dependencies after installing this update, even if they are already *OK*.

- Migrating the daemon to Python 3
- Permission settings: Non-admin users can view the live stream and the media library.
- Improved management of order visibility options (primarily battery, movement, etc.) on the camera widget
- Added support for the Arlo Video Doorbell
- Dependency optimizations.

## 2020-03-30

- Relocation of documentation
- Optimization: No longer reinstall FFmpeg if the correct version is already installed

## 2020-03-21

- Added ffmpeg version check to the dependency check
- Fixes HTTP 403 error when starting the daemon caused by a change introduced by Arlo during login

## 2020-02-19

- Fixes a streaming issue that may occur on Raspbian Stretch: forces the use of ffmpeg 4.2.1, as version 4.2.2 appears to be corrupted (reinstall the necessary dependencies if this applies to you)

## 2020-02-14

- Fixes a display issue in 'Planning' mode
- Support des plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) et [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) en plus de Mail et Telegram pour l'envoi des notifications

## 2020-02-06

- Added the ability to enable "Planning" mode
- Added a "Send Screenshot" command to cameras, allowing users to send a screenshot from a scenario by selecting the notification command to use

## 2020-01-22

- Fixes an issue with the on/off controls on Arlo Q and Arlo Qs cameras
- Fixed a streaming issue on Raspbian Buster

## 2019-12-28

- Fixed a streaming issue with Arlo Q and Arlo Qs cameras
- Added support for Arlo Pro 3
- Added support for the built-in siren in the Arlo Pro 3 and Arlo Ultra

## 2019-12-01

- Added a dedicated support page listing an overview of all Arlo devices
- Improved integration with the Jeedom mobile app
- The "Last Image" command now returns the relative path to the image

## 2019-09-26

- Add live streaming
- Removal of the "startStream" and "streamURL" commands

## 2019-09-17

- Added local save feature
- Update to Font Awesome 5 (for Jeedom V4)
- Improvements to the media library and the addition of video playback
- Customizing the widget
- Fixed for the on/off controls on Arlo Baby

## 2019-09-10

- securing access to on-site data
- API update to the my.arlo.com domain following changes made by Arlo

## 2019-08-02

- Support for Jeedom V4 and PHP 7.3
- Fix: Screenshots not saved if Jeedom is not running in /var/www/html/
- Fix: Default widget size

## 2019-07-19

- Added mode controls to the Arlo Baby and Arlo Q camera widget
- Added On/Off and status controls for camera equipment
- Library improvements: added a button to delete a screenshot and display the screenshot at full size
- Fixes an issue with the daemon if the plugin is used only with an Arlo Baby camera

## 2019-06-26

- Added support for Arlo Go
- Added generic types to commands to prepare for integration with the Jeedom mobile app

## 2019-06-21

- Added support for Arlo Lights
- Added support for Arlo Doorbells

## 2019-06-10

- Added a feature to send screenshots via Telegram or email (the corresponding plugins must be installed)
- Set a fixed size for screenshots on the mobile widget
- Fixes a bug that occurs when starting the daemon if the password contains certain special characters
- Improvements to the heartbeat process
- Internal optimization of the plugin to prepare for the integration of new Arlo devices

## 2019-05-30

It is recommended that you re-run the dependency installation after installing this update, even if they are already *OK*.

- Added support for Arlo Q
- Update the charging status on the widget when the camera is plugged into a power outlet: display a power outlet icon instead of a battery icon
- Fixes issues with dependency compatibility
- Fixes a dependency compatibility issue on *Debian Jessie*: if you're running Jessie, you need to reinstall the dependencies even if they're already *OK*
- reducing the size of the plugin
- Adjusts the image on the Arlo Baby

## 2019-05-24

- Improved daemon stability
- Change the default port to 55064 to avoid conflicts with the *RfPlayer* plugin

## 2019-05-13

- Improvements to the camera widget and the addition of display customization (in the *Display* tab of the device's advanced settings)
- Prevents the creation of inactive devices: if you have inactive devices in Arlo, they will not be created or synced with Jeedom
- Improved compatibility when multiple Arlo base stations are associated with the same account
- Fixes a daemon crash if there is no base station (e.g., when used with only Arlo Q cameras)

## 2019-05-12

First stable release

# Documentation

[See the documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
