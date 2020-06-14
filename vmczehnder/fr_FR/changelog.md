---
layout: default
title: Changelog VMC (Zehnder/Storkair)
lang: fr_FR
pluginId: vmczehnder
---

# 2020-06-15

- Refonte des pages de configuration en vue de futures mise à jours pour permettre la modification des configurations de la VMC

# 2020-05-12

- Déplacement de la documentation

# 2020-01-29

- Add compatibility with Jeedom mobile App: it's now possible to control fan speed via the app
- Improve connection with remote daemon
- fix error message on connection error

# 2019-08-03

- Updates to prepare support of Jeedom V4 and PHP 7.3
- Use plugin daemon instead generic to avoid side impact on/with others plugins

# 2019-03-19

- add configured delay (visible in config tab of your VMC)
- add usage counters (available as info commands and visible in config tab of your VMC)
- add action to reset filters counter (in config tab of your VMC)
- add filterError command (binary) to indicate that filters need to be cleaned or replaced
- adapt device screen layout to match 3.3

# 2019-03-15

- Add local dependencies management
- Change sync with VMC every minute instead of 5 minutes
- Improve daemon management
- Add get remote logs of daemon (every 5 min.)
- Add automatic update of remote daemon after plugin update
- Add socat management on remote pi (to connect CCEase/comfoSense module)

# 2019-03-02

- Reduce CPU usage of remote daemon

# 2019-02-25

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}})
