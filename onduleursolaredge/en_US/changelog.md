---
layout: default
title: Solaredge Changelog
lang: en_US
pluginId: onduleursolaredge
---

# 2020-03-30

- Move all documentations to a dedicated project

# 2020-03-27

- Ajout de vérification sur les valeurs configurées erronées pour éviter des erreurs
- Optimisations mineures.

# 2019-09-10

- Add support of Jeedom V4 and PHP 7.3

# 2019-03-19

- Adapt device config layout to Jeedom 3.3 standard
- Added option for the cron: dynamic management (as before), fixed value or deactivated.

# 2019-03-15

- Change to a cron dedicated to the plugin
- Dynamically calculating the cron frequency based on sunrise and sunset times to maximize the number of runs without exceeding the allowed limit of 300 queries per day
- Added a retry in case of a technical error with the Solaredge API

# 2019-02-25

- Add an option to choose the type of information to retrieve
- Addition units on device command
- Displaying the information about the inverter in the device page

# 2018-11-06

- Added an option to retrieve energy details: consumption, self-consumption, purchase and sale (if available in your installation)
- Change layout of the command screen

# 2018-09-30

- Added en_US translations

# 2018-09-24

- First version

# Documentation

[See documentation]({{site.baseurl}}/{{page.pluginId}})
