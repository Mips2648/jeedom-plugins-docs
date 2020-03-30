---
layout: default
title: Index
lang: en_US
pluginId: designImgSwitch
---

# Description

Plugin to automatically change the background image of your design according to the weather.
Weather, sunrise and sunset information will be obtained from the official weather plugin.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.
You will also need to install and configure the official weather plugin.

There is no configuration to perform at the plugin level.

# Device configuration

The plugin is in the Plugins > Weather menu.
After creating new device, the usual options are available.

Then select the designs for which you want to change the background image according to the weather and choose the weather device to use.
If no weather device is active, you will see an error message.

# Device activation

As soon as the configuration is done, you can activate the device and save it.
Selected designs will be immediately updated and this each time weather condition change and at sunrise and sunset.
No other action or scenario is needed.

# "Refresh" command

The device has a "Refresh" command to update manually the selected designs.
In normal condition, this command should nerver be used, background images will be automatically updated whenever is needed.

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ({{site.tagPlugin}}).
