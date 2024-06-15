---
layout: default
title: Documentation Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Description

Le but de ce plugin est de vous faciliter la tâche pour l'installation et la configuration d'antennes tournant sous *Theengs gateway* qui permet de capter [des périphériques Bluetooth (BLE)](https://decoder.theengs.io/devices/devices.html) et les remonter vers Jeedom pour être intégré via le plugin [MQTT Discovery]({{site.baseurl}}/MQTTDiscovery/{{page.lang}}).

Il offre une solution clé en main pour effectuer ce paramétrage.

Je vous invite à consulter [cette documentation](https://mips2648.github.io/jeedom-plugins-docs/MQTTDiscovery/fr_FR/#tocAnchor-1-14) pour comprendre plus en détails comment l'ensemble fonctionne.

> **Important**
>
> Ce plugin ne garantit pas que *Theengs gateway* fonctionnera sur votre machine, il y a beaucoup trop de paramètres qui peuvent influencer le bon fonctionnement: cela dépend de votre matériel, de la version de votre système, de la clé Bluetooth utilisée etc. Le plugin se charge uniquement d'installer l'application et vous permet de contrôler son état depuis Jeedom.
>
> L'installation d'antenne sur **Debian Buster (10) n'est plus supportée**. Pour installer une antenne, il est obligatoire d'avoir à disposition une machine sous **Debian Bullseye (11) ou Debian Bookworm (12)** (ou équivalent raspbian pour raspberry). Ceci ne concerne pas le plugin lui-même, donc cela ne concerne pas la machine sur laquelle tourne Jeedom mais uniquement les antennes. Donc si votre Jeedom tourne sous Buster c'est ok mais vous ne pourrez pas installer d'antenne en local mais uniquement distante.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
**Theengs gateway** nécessite le plugin *MQTT Manager (MQTT2)* pour fonctionner, cela permet de récupérer l'état des antennes et de faciliter la configuration de celles-ci.

# Configuration du plugin

Avant de commencer, assurez-vous d'avoir installé et configuré le plugin *MQTT Manager (MQTT2)*, voir documentation de ce plugin.

Il faudra ensuite configurer les informations de connexions au broker MQTT que les antennes vont utiliser, vous pouvez simplement utiliser les informations qui ont déjà été configurée par *MQTT Manager (MQTT2)* en choisissant l'option correspondante dans la liste déroulante mais vous avez aussi la possibilité de configurer un nom d'utilisateur et un mot de passe différents pour les antennes mais c'est tout à fait optionnelle. Attention, dans ce dernier cas, le nom d'utilisateur et le mot de passe configurés ici doit avoir été créés par vos soins, ce n'est pas **Theengs gateway** qui s'en charge.

Si vous ne savez pas ou en cas de doute, utilisez la configuration de *MQTT Manager (MQTT2)*.

> **Important**
>
> Les informations configurées ici serviront uniquement à la configuration des antennes. Le plugin **Theengs gateway** utilisera toujours *MQTT Manager (MQTT2)* pour se connecter au broker.

# Les équipements

Le plugin se trouve dans le menu Plugins → Programmation.

Chaque équipement correspondra à une antenne Theengs. Donc vous devez commencer par ajouter un équipement et donner un nom.
Dans la configuration de l'équipement, vous verrez les paramètres habituels communs à tous les équipements Jeedom.

## Installation de l'antenne

Ensuite la première chose à faire est de choisir si c'est une antenne locale ou distante (via SSH) et dans le cas d'une antenne distante il faut fournir les informations de connexions:

![auth](../images/auth.png)

> **Important**
>
> L'utilisateur configuré doit être dans le groupe *sudoers* et avoir le droit de faire un `sudo` sans confirmer son mot de passe.

Si vous avez besoin d'aide pour la création et la configuration de cet utilisateur, [suivez ces étapes](#tocAnchor-1-8)

Par défaut l'interface Bluetooth utilisée sera *hci0*, si nécessaire vous pouvez changer cette configuration.

Sur la partie droite de l'écran vous verrez le statut de l'installation ainsi que le statut du service:

![Actions](../images/actions.png)

Lorsque vous avez configuré la section *Authentification*, vous devez sauvegarder l'équipement et ensuite vous pouvez procéder à l'installation de l'antenne en cliquant sur le bouton *Installer l'antenne*.

> **Important**
>
> Cette étape peut être très longue (1h ou plus sur un pi0). Il est très important de patienter et de ne pas lancer de multiple fois l'installation sur une même antenne.
> Par contre vous pouvez parfaitement lancer l'installation de plusieurs antennes en parallèle.
>
> Pensez à couper l'antenne du plugin BLEA si vous vous serviez du pi pour BLEA. Celui-ci étant fort consommateur de ressources, il ralentira d'autant l'installation.
>
> Les deux process (antenne BLEA & Theengs Gateway) ne peuvent pas utiliser le Bluetooth en même temps, il est fortement recommandé d'avoir 2 clés / puces Bluetooth différentes ou de n'utiliser que l'un des deux à la fois.

Le statut de l'installation passera à *En cours* et pour finir à *OK*. Le log d'installation sera visible dans le menu Analyse → Logs y compris pendant l'installation et sera nommé `tgw_[eqLogicID]_update` donc il est toujours possible de suivre en détails l'avancement de l'installation.

## Configuration et démarrage

Lorsque le statut de l'installation passe à *OK*, vous pouvez cliquer sur le bouton *Configurer le service et redémarrer*, cela ne devrait prendre que quelques secondes.

Cette étape va écrire le fichier de configuration et créer le service *TheengsGateway* sur l'hôte distant.

> **Important**
>
> Si vous changez un paramètre de l'équipement ou les informations de connexion au broker dans la configuration du plugin, il sera nécessaire de refaire la configuration du service **après** avoir sauvé l'équipement.

Le service sera configuré pour un démarrage automatique à chaque reboot du système ou en cas d'échec.

En cas de besoin, un dernier bouton permet de (Re)Démarrer le service, ce bouton a la même fonction que la commande **Redémarrer** décrite ci-dessous.

## Paramètres optionnels

Dans la config de l'équipement vous trouverez plusieurs paramètres optionnels qui permettent de modifier les paramètres de *Theengs gateway*. La plupart sont relativement évident à comprendre et donc ne demandent pas d'explication particulière mais si besoin n'hésitez pas à consulter la [documentation de Theengs gateway](https://gateway.theengs.io/use/use.html) ou [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

### Configuration du décodage des adresses MAC aléatoires

Cette configuration permet de décoder une adresse MAC aléatoire vers l'adresse MAC réelle et permet donc de faire de la détection de présence du dispositif.

Pour cela, vous devez entrer l'adresse MAC réelle et, en séparant par un espace, la "clé de résolution d'identité" (IRK - Identity Resolving Key) tel que vous pouvez le voir sur cet exemple:
![MAC_IRK](../images/mac.png)

Il est possible d'effectuer plusieurs configurations, une par ligne.

Pour savoir comment obtenir cette IRK pour les appareils Apple, veuillez consulter [cette documentation](https://gateway.theengs.io/use/use.html#getting-identity-resolving-key-irk-for-apple-watch-iphone-and-ipad).

# Les commandes

Chaque antenne dispose de 3 commandes:

- **Online** commande info/binaire indiquant si l'antenne est en ligne ou non. "En ligne" veut dire connecté au broker et à l'écoute de périphérique Bluetooth.
- **Redémarrer** action permettant de (re)démarrer l'antenne si nécessaire
- **Stop** action permettant d'arrêter l'antenne si nécessaire

# Annexe: comment créer un utilisateur sous Debian et lui donner les droits sudo

Les étapes suivantes décrivent comment créer un utilisateur sous Debian (qui pourra être dédié au plugin), comment lui donner les droits *sudo* et lui permettre d'exécuter `sudo` sans devoir confirmer son mot de passe. Vous ne devez pas nécessairement suivre ces étapes si vous savez comment le faire ou si vous avez déjà un utilisateur correctement configuré.

Les commandes suivantes supposent que vous allez effectuer les opérations avec un utilisateur ayant lui-même les droits *sudo*. Si vous les effectuées avec l'utilisateur *root* il ne faut bien-entendu pas taper la commande `sudo` en début de ligne.

> **Important**
>
> Ne pas effectuer ces étapes sur la machine hébergeant Jeedom mais uniquement sur une antenne distante!

## Création d'un utilisateur

Connectez-vous sur votre machine en ligne de commande (ssh ou console) et tapez la commande suivante pour créer un utilisateur nommé *jeedom*

```bash
sudo adduser jeedom
```

Vous devrez ensuite choisir son mot de passe, suivez les instructions à l'écran.

## Ajout de l'utilisateur dans le group sudo

Ensuite, ajoutez l'utilisateur dans le groupe *sudo*

```bash
usermod -aG sudo jeedom
```

## Executer sudo sans confirmation de mot de passe

Editez le fichier de configuration avec la commande suivante

```bash
sudo visudo
```

A la fin du fichier, ajouter cette ligne:

```text
jeedom ALL=(ALL) NOPASSWD:ALL
```

Quittez en tapant les touches `ctrl+X` et confirmez la sauvegarde en tapant `O` ou `Y` suivant la langue de votre système (voir message dans le bas de l'écran)

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
