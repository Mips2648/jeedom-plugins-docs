---
layout: default
title: Stock Exchange documentation
lang: en_US
pluginId: stockexchange
---

# Description

A plugin that retrieves stock prices for a specific action or index, as well as exchange rates between two currencies (including cryptocurrencies such as Bitcoin) and commodity prices.
All data is generally available in real time, but the refresh rate depends on the service used.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

# Plugin configuration

No configuration is required for the plugin; API keys are configured on the devices based on the selected service.

# Setting Up a device

After creating a new device, the usual options are available.
You can also specify how often the information is updated.

Next, you must select the service to use for this device from the list provided. A description of each service is available on the configuration page. There you will also find a link to create a new account if you do not already have one or if you wish to create a new one.

You will then need to enter the API key for that service.

> **Tip**
> Be careful not to request updates too frequently if it is not necessary, taking into account the number of devices you are creating, so as not to exceed the limit imposed by the service.

Next, you must select the type of information you want:

- Stock quotes: the price of an action or an index (depending on the selected service)
- Exchange rate between two currencies (including cryptocurrency)
- Raw materials
- Cryptocurrency

> **Attention**
> Save the configuration, including the API key, before continuing. A valid API key is required to complete the configuration, including the symbol lookup.

## Stock prices & stock indices

For this type of information, you must enter the symbol for the action or index.
The plugin offers a dynamic search feature—simply start typing the name of a company (at least 3 characters) or the desired symbol, and a list of options will appear. All you have to do is choose from among them.

![Symbol configuration](../images/config_symbol.png "Configuration symbole")

## Exchange rates

For this type of information, you must select the source and destination currencies.
The plugin offers a dynamic search feature—simply start typing the name of a currency or its code, and a list of matching currencies will be displayed. All you have to do is choose from the list.

![Currency settings](../images/config_currency.png "Configuration devise")

## Raw materials

For this type of information, you must enter the symbol for the raw material.
The plugin offers a dynamic search feature—simply start typing the name of a raw material (at least 3 characters) or the desired symbol, and a list of options will appear. All you have to do is choose from among them.

## Cryptocurrency

For this type of information, you must enter the symbol of the desired cryptocurrency and the destination currency.
The plugin offers a dynamic search feature—simply start typing the name of a cryptocurrency (minimum 3 characters) or the desired symbol, and a list of options will appear. All you have to do is choose from among them.

# Available commands

Below is an overview of the most important commands available by type of information.

## Stock Price

- **Opening**: opening price
- **Previous close**: price at the previous close
- **Max**: highest level reached since opening
- **Low**: low reached since the market opened
- **Price**: current price
- **Volume**: Trading volume
- **Evolution**: Evolution since opening

## Exchange rates

- **Exchange rates**
- **Offer**: the price of the offer
- **Request**: the price of the request

## Raw materials

- **Price**
- **Currency**
- **Unit**
- **Date**

## Cryptocurrency

- **Price**
- **Volume**
- **Volume change** over 24 hours
- **Percentage change** over 1 hour, 24 hours, 7, 30, 60, and 90 days
- **Market Capitalization**
- **Fully Diluted Market Capitalization**

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
