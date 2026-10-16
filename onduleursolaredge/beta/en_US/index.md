---
layout: default
title: Solaredge Documentation
lang: en_US
pluginId: onduleursolaredge
---

# Description

The plugin allows you to read photovoltaic production data from a SolarEdge site via the v2 monitoring API.

The available information is:

- photovoltaic power generation;
- energy generated, depending on the selected time period;
- total energy generated since the site went into operation;
- the features of the site and its equipment.

> **Important**
>
> SolarEdge requires external access to Jeedom via **HTTPS with a valid certificate**.\
> You won't be able to use the plugin without this access.

# Supported Versions

| Component | Version |
|-----------|---------------------------|
| Debian    | Bookworm (12) & Trixie (13) |
| Jeedom    | >= 4.5 |
| PHP | >= 8.2 |

# Installation

> **Tip**
>
> To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

# Setup

## Connection to SolarEdge

> **Important**
>
> The v2 API uses OAuth authentication. The old API key can no longer be used to configure this version of the plugin.

### Obtaining the Client ID and Client Secret

You must have a **Client ID** and a **Client Secret** for SolarEdge OAuth access. If you do not yet have these credentials, follow the steps below.

> **Important**
>
> SolarEdge requires external access to Jeedom via **HTTPS with a valid certificate**. An internal address or an address without HTTPS cannot be used as a redirect URL.

1. Go to the [SolarEdge Developer Platform](https://developer.solaredge.com/) and create an account.
2. Create an app. The only required settings are the **name** of the app and the **redirect URL**.
3. For the redirect URL, enter the external Jeedom address followed by `/plugins/onduleursolaredge/core/php/oauth.php`, for example: `https://monjeedom.mondomaine.com/plugins/onduleursolaredge/core/php/oauth.php`.
4. Generate the application credentials by enabling **all available scopes** (access permissions): `SITE_DATA` and `DEVICE_DATA`. Enter the **Client Id** and **Client Secret** you receive in the plugin's configuration.

### Integration between Jeedom and SolarEdge

1. Verify that Jeedom's external access address is correctly configured in its network settings and accessible from the browser used for authorization.
2. In the plugin settings, fill in the **Client Id** and **Client Secret** fields, then save.
3. Click **Link Jeedom and SolarEdge** and confirm that the authorization window opens.
4. Log in with your SolarEdge account and approve the connection.
5. After returning to Jeedom, click **Refresh** to verify that the status is **OK**.

The plugin stores access tokens and renews them automatically. If the status indicates that authorization is required, restart the connection.

## Creating the device in your Jeedom

1. Open the **Plugins** menu, then **Energy** and **Solaredge**.
2. Click **Add** and give the device a name.
3. Enter the **SolarEdge site ID** that your account has access to.
4. Configure the parent object, the **Enable** and **Visible** options, and then save.

The site information is saved if the installation date is not yet known. The **Reload Site Details** button allows you to update this information: type, installation date, peak power, manufacturer, model, and number of optimizers.

## Configuring Commands

The **Refresh** action is created automatically.

A single device can contain multiple production information commands; add the desired commands using the **Add Command** button.

For each command, enter a name, the data to be retrieved, the time period, and the unit. The commands added are of the numeric information type. You can choose to display them and log them.

| Data | Available periods | Available units |
| -------- | ---------------------- | -------------------- |
| Photovoltaic generation (power) | Quarter-hour, hour | W, kW, MW |
| Solar power generation (energy) | Quarter-hour, hour, day, week, month, year, total | Wh, kWh, MWh |
| Total photovoltaic generation | Total | Wh |

The **Total Photovoltaic Production** type command provides the energy produced since the site was commissioned by reading a cumulative energy meter built into the equipment, rather than summing the measurements received for each interval. SolarEdge uses the production meter if the site has one, or the sum of these meters if there are multiple. Otherwise, the value corresponds to the sum of the inverters’ cumulative energy meters. Unlike the **PV Production (Energy)** command with the **Total** period, this value is not affected by gaps in the transmission history: it reflects the actual meter readings, not just the sum of the received intervals.

### Refresh

Each information command also has a cron field for scheduling its own refresh. The **?** button opens the Jeedom cron wizard.

Leave the cron field for a command blank if you do not want to add a custom schedule to it. The **Refresh** command updates all equipment information commands, including those that have their own cron. It can also be called from a scenario.

Each updated command sends its own request: adjust the frequency based on the number of commands and the limits applicable to your SolarEdge access.

### Retrieved values

For power and energy commands, the plugin requests measurements from the start of the previous period until the time of the request, then retains the last numerical value available in the response.

If the last data point is `null`—for example, because the current quarter-hour is not yet available—the plugin uses the previous data point. A value of `0` is retained. The displayed value therefore does not necessarily correspond to an instantaneous measurement.

If no numerical value is available, the command is not updated and a warning is logged. For total production, the value is read directly from the energy field returned by SolarEdge.

## Migration from API v1

> **Attention**
>
> Migrating to the v2 API requires reconfiguring the connection and devices. Older devices are disabled upon the update; their old refresh tasks are deleted.

1. **Create your account** on the [SolarEdge Developer Platform](https://developer.solaredge.com/)
2. **Set up the OAuth connection** in the plugin settings (Client ID + Client Secret).
3. **Create new devices** by entering the site ID.
4. **Add the desired commands** (power, energy per period, total energy).
5. **Set up schedules** for cooling.
6. **Check the received values**.
7. **Customize your scenarios, widgets, virtuals, design**, etc. (you can use the *Replace* tool in the core for this).
8. Once everything has been verified, **delete the old v1 devices**.

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- A screenshot of the plugin's configuration page, with the Client ID and Client Secret hidden
- All available plugin logs at the *INFO* level, pasted into a `Preformatted Text` field (use the `</>` button on the community page)—no files! If you're having a data issue, the *DEBUG* level lets you view the API responses.
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...

Before posting screenshots or logs, hide usernames, OAuth tokens, and any personal information.
