---
layout: default
title: Stock exchange Documentation 
lang: en_US
pluginId: stockexchange
---

# Description

Plugin to retrieve stock or index quotation as well as exchange rate between two currencies (including cryptocurrency such as bitcoin) and commodities prices.
Most of the time all data are available in real time but refresh frequency depends on the service used.

# Installation

In order to use the plugin, you must download, install and activate it like any Jeedom plugin.

# Plugin configuration

There is no configuration to perform at the plugin, the API keys are configured on the device according to the selected service.

# Device configuration

After creation of a new device , the usual options are available.
You will also be able to enter the frequency with which the information is updated.

Then you must select the service to use for this device from the list provided. A description of each service is available in the configuration page. You will also find the link to create a new account if you do not have one yet or if you want to create a new one.

It will then be necessary to configure the API key corresponding to the service.

> **Tip**
> Be careful not to request an update too frequently if it is not necessary taking into account the number of device you create to not exceed the limit of the selected service.

You must then choose the type of information you want:

- Stock quotation; the price of an action or index (depending the selected service)
- Exchange rate between 2 currencies (including cryptocurrency)

## Stock quotation & index

For this type of information, you must enter the symbol of the action or index.
The plugin offers a dynamic search function, just start typing the name of a company (minimum 3 characters) or the desired symbol and a list of possibilities will be proposed. You just have to choose from these.

![Configuration symbole](../images/config_symbol.png "Configuration symbole")

## Exchange rate

For this type of information, you must choose the original and destination currency.
The plugin offers a dynamic search function, just start typing the name of a currency or its code and a list of the corresponding currency will be proposed. You just have to choose from these.

![Configuration devise](../images/config_currency.png "Configuration devise")

## Commodity

For this type of information, you must enter the symbol of the commodity.
The plugin offers a dynamic search function, just start typing the name of a commodity (minimum 3 characters) or the desired symbol and a list of possibilities will be proposed. You just have to choose from these.

# Available commands

Below is an overview of the most important commands available by type of information.

## Stock quotation

- **Opening**: opening price
- **Previous closing**: price at the previous closing
- **Max**: maximum reached since the opening
- **Min**: minimum reached since opening
- **Price**: current price
- **Volume**: Action volume
- **Change**: Change since the opening

## Exchange rate

- **Exchange rate**
- **Bid**: the bid price
- **Ask**: the ask price

## Commodity

- **Prize**
- **Currency**
- **Unit**
- **Date**

# Changelog

[See the changelog](./changelog)

# Support

If despite this documentation and after having read the topics related to the plugin on [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) you do not find an answer to your question, do not hesitate to create a new topic with the tag of the plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
