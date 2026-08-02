---
layout: default
title: Hydrao documentation
lang: en_US
pluginId: hydrao
---

# Description

Plugin for integrating Hydrao showerheads.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

# Plugin configuration

In the plugin settings, you must enter the username and password you use for the Hydrao app, as well as your API key. To obtain your API key, you must contact Hydrao support directly.

You can also configure how many past showers should be synced with Jeedom; this is especially useful during the initial sync. More information is provided below.

# Equipment

Once the plugin is configured correctly, it will sync your showerheads.
It will synchronize every 2 hours, and you can manually refresh it using the corresponding command on the device.

> **Attention**
>
> Hydrao strictly limits the number of API calls. If you see this error in the log—"Login failed: (429) - response received: {"message":"Limit Exceeded"}"—I recommend contacting them directly to request an increase in the limit.

The plugin will create a *Showerhead* device for each showerhead enabled on your account. Each *Showerhead* device will have the info commands described below, providing information on the *last known shower*; however, previous showers that have not already been synchronized with Jeedom will also be synchronized and added to the command history in Jeedom, along with the time recorded by Hydrao. The maximum number of past showers to synchronize can be selected in the plugin’s configuration.

> **Attention**
>
> As you know, the synchronization date between the showerhead and Hydrao isn’t necessarily the actual date of the shower, and since this synchronization date is the only date known to the plugin, it’s impossible to know the actual date of the shower unless you synchronize your showerhead with Hydrao every time you shower. This is a limitation of the system provided by Hydrao, stemming from the fact that showerheads must be regularly synced with the Hydrao cloud via your phone.

The plugin will also create a *Dashboard* device that provides general information and statistics related to your account (rather than to a specific shower).

# Commands

On a *Pommeau* device, the following commands are available:

- **Sync Date** shows the last date the knob was synchronized with Hydrao
- **Volume** indicates the number of liters used during the last shower
- **Duration** indicates the duration, in seconds, of the last shower
- **Temperature** shows the average water temperature from the last shower
- **Time spent soaping up** & **Number of times soaped up** for the last shower (if known)
- **Flow rate** of the last shower
- **Average water usage** for the last 100 showers

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the *INFO* level, pasted into `Preformatted Text` (use the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
