---
layout: default
title: Documentation Theengs gateway
lang: fr_FR
pluginId: tgw
---

# Description

Le but de ce plugin est de vous faciliter la tâche pour l'installation et la configuration d'antennes tournant sous *Theengs gateway* qui permet de capter des périphériques Bluetooth (BLEA) et les remonter vers Jeedom pour être intégré via le plugin [MQTT Discovery]({{site.baseurl}}/MQTTDiscovery/{{page.lang}}).

Il offre une solution clé en main pour effectuer ce paramétrage.

Je vous invite à consulter [cette documentation](https://mips2648.github.io/jeedom-plugins-docs/MQTTDiscovery/fr_FR/#tocAnchor-1-14) pour comprendre plus en détails comment l'ensemble fonctionne.

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

# Les commandes

Chaque antenne dispose de 3 commandes:

- **Online** commande info/binaire indiquant si l'antenne est en ligne ou non. "En ligne" veut dire connecté au broker et à l'écoute de périphérique Bluetooth.
- **Redémarrer** action permettant de (re)démarrer l'antenne si nécessaire
- **Stop** action permettant d'arrêter l'antenne si nécessaire

# Comment créer un utilisateur sous Debian et lui donner les droits sudo

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

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
