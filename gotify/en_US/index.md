---
layout: default
title: Gotify documentation
lang: en_US
pluginId: gotify
---

# Description

Plugin allowing Jeedom to act as a Gotify application that can send messages (notifications) to a Gotify server.
You will find more details in <a href="https://gotify.net/docs/" target="_blank">Gotify's documentation</a> .

The advantage of this system is that it can be self-hosted (a docker container is enough), your data remains in your possession.

# Supported versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

It is needed to already have a Gotify server setup, the installation will not be detailed here because it is very clearly explained on the site.

# Plugin configuration

In the configuration of the plugin it will be necessary to setup the URL of the Gotify server in the format:

```HTTP
http://yourdomain.com:32768
```

# Devices configuration

After creating new device, the usual options are available.

It will also be needed to setup the token of the application which you will have previously created in Gotify (do not mix with the client token).
So one Jeedom device matches one Gotify application.

You can optionally configure a client token, this will allow Jeedom to view and delete messages of all apps belonging to the associated client on the server (otherwise it can only send new messages).

It is possible to create several send commands with different priorities (see Gotify documentation on this subject) if your client application manages these.

# Changelog

[See the changelog](./changelog)

# Support

If you have a problem, start by reading the latest plugin-related topics on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If despite this you do not find an answer to your question, do not hesitate to create a new topic, with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you will need to provide:

- a screenshot of the Jeedom health page
- a screenshot of the plugin's configuration page
- all available plugin logs pasted into a `Preformatted Text` (button `</>` on community), no files!
- depending on the case, a screenshot of the error encountered, a screenshot of the configuration causing the problem...
