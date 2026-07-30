---
layout: default
title: Gotify Documentation
lang: en_US
pluginId: gotify
---

# Description

A plugin that allows Jeedom to act as a Gotify application capable of sending messages (notifications) to a Gotify server.
You can find more details in <a href="https://gotify.net/docs/" target="_blank">the Gotify documentation</a>.

The advantage of this system is that it can be hosted on your own server (a Docker container is all you need), so your data remains in your possession.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5 |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

You must already have a Gotify server; the installation process will not be covered here, as it is clearly explained on the website.

# Plugin Configuration

In the plugin settings, you'll need to enter the Gotify server URL in the following format:

```HTTP
http://yourdomain.com:32768
```

# Device Setup

After creating a new device, the usual options are available.

You will also need to enter the application token that you previously created in Gotify (not to be confused with the client token).
So, a Jeedom device corresponds to a Gotify app.

You may want to configure a client token; this will allow Jeedom to view and delete messages from all apps for that client (otherwise, it will only be able to send messages).

You can create multiple send commands with different priorities (see the Gotify documentation on this topic) if your client application supports them.

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
