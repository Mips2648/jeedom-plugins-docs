---
layout: default
title: Hydrao Documentation
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

# Plugin Configuration

In the plugin settings, you must enter your username and password for the Hydrao app, as well as your API key. To obtain your API key, you must contact Hydrao support directly.

You can also configure how many past showers should be synced with Jeedom; this is especially useful during the initial sync. See below for more information.

# Equipment

Once the plugin is configured correctly, it will sync your showerheads.
It will synchronize every 2 hours, and you can perform a manual refresh using the corresponding command on the device.

> **Attention**
>
> Hydrao strictly limits the number of API calls. If you see this error in the log—"Login failed: (429) - response received: {"message":"Limit Exceeded"}"—I recommend contacting them directly to ask them to increase the limit.

The plugin will create a *Showerhead* device for each showerhead activated on your account. Each *Showerhead* will have the info commands described below, providing information on the *last known shower*, but previous showers that have not yet been synchronized with Jeedom will also be synchronized and added to the command history in Jeedom, along with the time recorded by Hydrao. The maximum number of showers to synchronize from the past can be selected in the plugin’s settings.

> **Attention**
>
> As you know, the synchronization date between the showerhead and Hydrao isn't necessarily the actual date of the shower, and this synchronization date is the only date known to the plugin; so it’s impossible to know the actual date of the shower unless you sync your showerhead with Hydrao every time you shower. This is a limitation of the system provided by Hydrao, stemming from the fact that showerheads must be regularly synced with the Hydrao cloud via your phone.

The plugin will also create a *Dashboard* feature that provides general information and statistics related to your account (not to a specific shower).

# Orders

On a *Pommeau* system, the following controls are available:

- **Sync Date** shows the last date the knob was synchronized with Hydrao
- **Volume** indicates the number of liters used during the last shower
- **Duration** indicates the duration, in seconds, of the last shower
- **Temperature** shows the average water temperature from your last shower
- **Duration of lathering** & **Number of times lathered** for the last shower (if known)
- **Water flow rate** of the last shower
- **Average water usage** for the last 100 showers

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available logs from the plugin, at the *INFO* level, pasted into `Preformatted Text` (the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
