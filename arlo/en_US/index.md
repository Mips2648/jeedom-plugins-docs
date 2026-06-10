---
layout: default
title: Documentation Arlo
lang: en_US
pluginId: arlo
---

# Description

A plugin that allows you to control Arlo devices such as cameras, the base station, and the built-in siren.
You can control the mode, turn cameras on and off, view live camera feeds, trigger video captures and recordings, and activate the siren...

All current models supported by the Arlo app (web or mobile) are supported by the plugin: Arlo, Arlo Pro (all versions), Ultra (all versions), Arlo Floodlight, Arlo Essential, Arlo Q, Arlo Go, Arlo Baby, Arlo Security Bridge & Light, Arlo Doorbell, and Video Doorbell...

Here is an overview of the plugin's features:

- select the mode: On, Off, or Schedule, as well as any custom modes;
- enable or disable each camera independently of the others (regardless of the current mode);
- trigger the siren built into the base station (or the Pro3 and Ultra) and check its status;
- Check the status of each camera:
  - online or offline
  - general status (inactive, alert, etc.)
  - battery level (and whether it is charging)
  - signal strength
  - if sound or motion detection is enabled
  - if sound or motion is detected
- take a screenshot (saved locally)
- make a recording (stored locally)
- view the screenshots and videos you've taken
- Start/stop a recording stored in the Arlo cloud
- view the live stream from your cameras
- Check the built-in light on compatible cameras
- Control the built-in siren on compatible cameras and bases

> **Important**
>
> We do not recommend using cameras and doorbells from the Essentials or Wire-free series (i.e., all cameras connected directly via Wi-Fi) if there is no base station in the system, unless they are continuously powered (by the mains or via a solar panel if there is sufficient sunlight), as their battery does not provide enough runtime. If a base station is present, there is no issue.

# Supported versions

| Component | Version |
|-----------|-----------------------------|
Debian | Bullseye(11) & Bookworm(12)
| Jeedom    | >= 4.4 |

> **Important**
>
> Compatibility with 32-bit systems (Raspbian 32-bit on Pi 3) will be removed in a future release.

# Installation

To use the plugin, you need to download, install, and activate it just like any other Jeedom plugin.
Next, you need to install the dependencies.

# Configuration

Arlo does not allow a single user to be logged in to multiple interfaces at the same time: if you are logged in to the app on one mobile device, you cannot be logged in on another mobile device or on the web interface at the same time. For example, if you log in via the web interface, you will be automatically logged out of the mobile app.
The plugin logs into the Arlo system as a standard user and will therefore be subject to the same restrictions.

You must therefore create a dedicated user account for the plugin; otherwise, it will not work properly.

## Two-step verification

Arlo is gradually rolling out two-step verification.

Before creating a new Arlo user, it is important to know the following information:

- The plugin manages this via email using IMAP support only, so you’ll need an email account with IMAP access (this is sometimes blocked or requires a fee, so check beforehand), and it only supports authentication via _username_/_password_; no MFA for email!
- The plugin must have direct access to the Arlo user's email account, since Arlo requests the TFA code every time the user logs in! So if the daemon needs to restart, it must be able to retrieve the code on its own.
- The plugin will only read emails sent from "<do_not_reply@arlo.com>"; so even though it’s recommended to use a dedicated email account rather than an alias of an existing one, this shouldn’t be a problem; it will mark emails as "read" in the inbox once this is done (and will not attempt to read them again on the next startup)
- The plugin will search only among the unread emails from the current day, in reverse chronological order (from newest to oldest), and will skip all emails sent before your last login.
- The language of the email doesn't matter: the search for the TFA code will work regardless of the email's language.

> **Type**
>
> From now on, to log in to a Gmail (Google) or Microsoft email account, you must create an _app password_, which will not require MFA to log in, as the "unsecured apps" option is no longer available.
> For more details on the procedure for Google, click here: <https://community.jeedom.com/t/google-applications-moins-securisees-mot-de-passe-dapplication/85617>.
> Pour les comptes Microsoft (outlook, hotmail...), lisez ceci <https://support.microsoft.com/en-us/account-billing/how-to-get-and-use-app-passwords-5896ed9b-4263-e681-128a-a6f2979a7944>

After creating an email address for the plugin, you can move on to the next step.

## Creating a dedicated Arlo user for the plugin

- To do this, go to <https://my.arlo.com> or open the mobile app;
- Click "Settings" in the upper-right corner;
![Arlo Settings](../images/settings.png "Paramètres Arlo")

- Click "Allow access" in the left-hand menu, then click "Add" on the right.
![Arlo Access](../images/access.png "Accès Arlo")

- Enter the requested information, including a new email address (a Gmail alias—such as adding "+jeedom" before "@gmail.com"—will work; however, for two-factor authentication, I recommend using an email address dedicated to the plugin);
- **Select the Arlo devices** that the plugin will have access to;
- **Enable the "Grant access rights" option** to be able to switch modes, start a recording, take screenshots, etc., from Jeedom.
![Create an Arlo account](../images/create.png "Création compte Arlo")
- Click "Send an invitation"
- You will receive a confirmation email to help you set up your new Arlo account. Just follow the instructions.

> **Type**
>
> Sign out of "My Arlo," open an "incognito window" in your browser, or use a different browser to create your second Arlo account.

## Plugin Configuration

On the plugin's settings page:

- Enter your username (the new email address) and the associated Arlo password.
- If you have enabled two-step verification, enter the IMAP address of the mail server in the format _imap.server.com_, along with the username and password for the associated email account (or the app password in the case of a Gmail account instead of your personal password) (not required if two-factor authentication is not enabled on your Arlo account)
- Start the daemon (if it doesn't start automatically)

If the login credentials are correct, the status should turn green and the plugin will begin syncing your previously shared devices.

On this page, you can also configure retention rules for captures and recordings; these rules allow the plugin to automatically delete the oldest media files (stored locally).

# Usage

If the plugin is configured correctly (see the previous step), you should see a list of the Arlo devices you shared when you created the account for the plugin.

You cannot create a device manually. Devices are created or updated automatically by the plugin during synchronization with the Arlo system. Synchronization occurs automatically at least once a day; if necessary, you can initiate a synchronization manually via the device management screen.

![Facilities](../images/devices.png "Équipements")

The plugin will never automatically delete a device; if you no longer have the device or if you have revoked the plugin's access rights, we recommend that you manually delete the corresponding device in Jeedom.
If you add a new device or change the modes via the Arlo app, we recommend performing a manual sync to update the plugin's configuration immediately; otherwise, this will happen during the next automatic sync.

> **Type**
>
> Of course, this does not apply to control settings such as the selected mode or motion and sound detection, which are updated in real time.

For most devices, no specific configuration is required; the device name will be the one defined in the Arlo system. However, be sure to assign a parent and category and enable the device.

For camera-type devices, you can configure an action/message command (many plugins support this). If this is configured, the plugin will send a message, including the capture, as soon as a new capture is received.

# Facilities

> **Important**
>
> It is not recommended to use battery-powered devices (unless they are regularly recharged, for example via a solar panel if there is sufficient sunlight) that are connected directly to Wi-Fi if there is no base station in the system, as their batteries do not provide enough power to send events to Jeedom. If a base station is present, there is no issue even if some devices are connected directly to Wi-Fi.

Some model-specific orders may not be available (yet); in that case, please contact me via the forum for more information.

> **Type**
>
> If you add a device (hub, camera, doorbell, etc.), you must restart the daemon for it to work properly in Jeedom.

## Change of style

Depending on your setup and your Arlo account settings, you can choose how your devices operate—specifically, whether they detect sound and/or motion, or whether they are turned off.

It appears that for accounts created through the end of 2023, this is possible on all base/hub devices, including: bases, standalone cameras, and doorbells such as Arlo Go, Arlo Q, Arlo Baby, Essential...
Each of these devices features a control button for each defined mode—on, off, and each custom mode—as well as an info button that indicates the current mode.

Some users—specifically those who created their accounts starting in late 2023—will have an additional "location" device that you have also set up in your Arlo app.
As with the devices listed above, a control option based on the current mode will be available. If this applies to you, there is no point in changing the modes on the devices; only the mode of this "location" device is taken into account, so that is the one you should use.

## Sirena

Devices with a built-in siren (Hub, Essential, Pro, Ultra, etc.) include the following controls for operating it:

- **Sirens Status**: Indicates whether the siren is active
- **Siren On**: To manually activate the siren
- **Siren Off**: To turn off the siren

## Lamp

Equipment with built-in lighting (Essential, Pro, Floodlight, Ultra, etc.) includes the following controls for managing the lighting status:

- **Lamp status**: Indicates whether the lamp is currently on or off
- **Turn On Light**: To manually turn on the light (during the default delay set in the Arlo app)
- **Lamp Off**: To turn off the lamp manually

## Cameras

The following controls are available on all models:

- **Connection**: indicates whether the connection to the camera is active
- **Activity**: Provides a description of the camera's current activity
- **Active**: indicates whether the camera is currently active
- **On**: Enables the camera; it will be affected by mode changes
- **Off**: Disables the camera; it will not be affected by mode changes
- **Battery**: battery level (%)
- **Signal**: Signal strength (between 0 and 4) for the base station on Arlo Pro, Pro 2, and Ultra, and cellular signal strength for ArloGo
- **Loading**: indicates whether the camera is loading
- **Motion Detection**: Indicates whether motion detection is enabled
- **Sound Detection**: Indicates whether sound detection is enabled
- **Motion detected**: if motion is detected
- **Sound detected**: if sound is detected
- **Last image**: (local) path to the last image captured by the camera
- **URL of the latest snapshot**: (Local) URL for the latest image captured by the camera
- **Take a screenshot**: allows you to take a screenshot (saved locally) using the camera
- **Send a screenshot**: Allows you to send a screenshot (which will be saved locally) from a scenario by selecting the notification command to use
- **Send a recording**: allows you to send a video recording (which will be saved locally) from a scenario by selecting the notification command to use
- **Start Recording**: Starts video recording (saved locally)
- **Stop Recording**: Stops a local recording
- **Start cloud recording**: Starts recording to the Arlo cloud
- **Stop cloud recording**: stops recording to the Arlo cloud

The widget has a few unique features. From top to bottom and left to right, you will see:

- the signal strength at the base station
- battery level
- The sound indicator has three possible states: detection disabled, active monitoring, sound detected.
- the motion sensor, which again has three possible states: detection disabled, active monitoring, motion detected.
- a button to open the library where you can view screenshots and recordings saved locally.

Next, the most recent image captured by the camera is displayed; by clicking on it, you can view the camera feed in near real time (with a delay of a few seconds).

And below that, a button to take a screenshot and start recording (locally).

![Camera](../images/widget_camera.png "Caméra")

## Arlo Baby

The Arlo Baby is now fully integrated; you can manage the camera and all its features entirely through the plugin, including the night light, lullaby, and air quality sensor data.

Here is an overview of the available commands:

- **IP**: the camera's IP address
- **Brightness**: room brightness
- **Temperature**: room temperature
- **Humidity**: in percent
- **Air quality**: as a percentage; less than 30% is "normal," 30% to 65% is "abnormal," and more than 65% is "very abnormal" (according to Arlo's documentation)
- **Nightlight**: Indicates whether the nightlight is currently on or off.
- **Nightlight On** and **Nightlight Off**: to turn the nightlight on and off
- **Nightlight mode**: The available modes are: _White_, _Color_, _Light Show_
- **Nightlight brightness**: Info and Action controls for adjusting the nightlight brightness
- **Nightlight Color**: Info and Action commands, and to change the nightlight color (in _Color_ mode)
- **Color temperature**: info and action commands to change the color temperature (in _White_ mode), values between 2500K and 9000K
- **Pilot Light Timer**: Information and control buttons to set the timer and check the remaining time (in minutes) before the pilot light automatically turns off
- **Reading**: a binary command and a string command that return the reading status of the lullaby
- **Play**, **Pause**, **Next**: controls for managing playback
- **Track**: displays the selected track, and **Playlist** displays the list of available tracks
- **Repeat**: Use the info and action controls to enable or disable repeat mode: continuous playback or single-track playback
- **Random**: info and action commands to enable and disable random mode
- **Volume**: lets you view and adjust the volume of the lullaby (in %)
- **Lullaby Timer**: Information and action buttons to set the timer and check the remaining time (in minutes) before the lullaby automatically turns off

## Go to Area

The following controls are also available on the Arlo GO:

- **Network Name**: Displays the name of the mobile network
- **IP**: the current IP address
- **Active network**: shows the currently active network (Wi-Fi or mobile)

## Arlo security bridge & light

The "light" package includes the following features:

- **Lamp status**: Indicates whether the lamp is currently on or off
- **Turn On Light**: To manually turn on the light (during the default delay set in the Arlo app)
- **Lamp Off**: To turn off the lamp manually
- **Motion Detection**: Indicates whether motion detection is enabled
- **Motion detected**: if motion is detected
- **Connection**: indicates whether the connection is active
- **Battery**: battery level (%)
- **Charging**: indicates whether the device is currently charging

## Arlo Doorbell and Video Doorbell

The doorbell has the following controls:

- **Connection**: indicates whether the connection is active
- **Battery**: battery level (%)
- **Signal**: Signal strength (between 0 and 4) with the base station
- **Motion detected**: if motion is detected
- **Button**: if the doorbell button has been pressed (it will remain active for 1 minute after the last press)
- **Silent Mode**: Indicates whether silent mode is enabled
- **Silent Mode On**: Enables silent mode
- **Silent Mode Off**: Turns off silent mode

### Arlo Video Doorbell

In addition to the controls listed above, the Video Doorbell has a few controls that are common to cameras:

- **Activity**: Provides a description of the camera's current activity
- **Loading**: indicates whether the camera is loading
- **Motion detected**: if motion is detected
- **Last image**: URL (local) to the last image captured by the camera
- **Take a screenshot**: allows you to take a screenshot (saved locally) using the camera
- **Start Recording**: Starts video recording (saved locally)
- **Stop Recording**: Stops a local recording
- **Start cloud recording**: Starts recording to the Arlo cloud
- **Stop cloud recording**: stops recording to the Arlo cloud

# Viewing live video feeds from cameras - live streaming

By clicking on the thumbnail in the widget, you can start the camera feed.
The video will open in a new window, and you can, of course, switch to full screen:

![Feed](../images/streaming.png "Flux")

This is a live video stream; the camera and stream will stop when the window is closed.

# The library

When a local video recording is made, or when a snapshot is taken by the plugin or received from Arlo following motion detection, these can be viewed in the library section of each camera.

![Library](../images/media_library.png "Bibliothèque")

On this screen, which displays a preview of the screenshots and videos you've taken, you can delete the files directly and permanently if you wish; otherwise, the plugin will handle this automatically according to the rules defined in the settings.
You can also click on the screenshots to view them in a larger window, or click on the videos to play them.

# Integration with Jeedom Connect

You can use the camera widget from [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) to integrate Arlo cameras with this mobile app.

For this purpose, I recommend the following configuration:

![Jeedom Connect](../images/jeedomConnect.png "Jeedom Connect")

- the camera's **Last Snapshot URL** command (the one that returns text starting with "http" pointing to your Jeedom, not the one that displays the Arlo image) for the _Snapshot URL Command_ setting in the widget
- the **Start Recording**, **Stop Recording**, and **Recording** controls for the _Record_, _Stop Recording_, and _Recording Info_ settings of the widget
- In the _Recording Folder_ settings, you need to copy the path displayed on the Arlo camera's configuration page, as shown in this screenshot:

![Records File](../images/config_recordspath.png "Dossier des enregistrements")

You can use the small "Copy" button to the right of the path to copy it to the clipboard, and then simply paste the information into the widget settings on Jeedom Connect

Currently, it is not possible to view the live video feed from the Jeedom Connect app.

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to start a new thread, and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the _INFO_ level, pasted into a `Preformatted Text` block (using the `</>` button on the community site), no files!
- depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
