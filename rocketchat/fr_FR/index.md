---
layout: default
title: Documentation Rocket.Chat
lang: fr_FR
pluginId: rocketchat
---

# Description

Plugin permettant la connexion à un serveur Rocket.chat. Rocket.chat est un plateforme de messagerie collaborative (type Slack, HipChat...).
Le plugin gère le ask (dans les scénarios), les interactions et l'envoi de pièces jointes (ex: image de caméra).
L'avantage de cette solution est de pouvoir être hébergée chez vous (un docker suffit), vos données reste ainsi en votre possession.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il est nécessaire de déjà avoir un serveur Rocket.chat, les différentes solutions pour cela sont très bien documentée sur leur site.
Sur celui-ci, veillez à créer un utilisateur ayant comme role `bot`.

> **Important**
>
> Il est indispensable d'être sous Debian 10 Buster minimum pour faire fonctionner le plugin.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner l'URL du server rocketchat sous la forme `https://IP_SERVER:3000` ainsi que le nom d'utilisateur et le mot de passe de votre bot.

# Les équipements

Dès que le démon démarre et que votre bot a pu se connecter, le plugin va créer un équipement par canal existant sur votre serveur (pour autant que le bot ait accès).

Chaque équipement dispose d'une commande action pour envoyer un message sur le canal ainsi que deux commandes info donnant le dernier message envoyé (par un autre utilisateur que le bot) et le nom de l'utilisateur.

Par défaut, lorsqu'un message est reçu sur le canal, le plugin va créer un commande correspondante à l'utilisateur l'ayant envoyé (si elle n'existe pas déjà).

Une option existe sur l'équipement pour désactiver ce comportement.
![Config équipement](../images/device.png "Config équipement")

Ces commandes permettent d'envoyer un message sur le canal de l'équipement en notifiant l'utilisateur correspondant, (ex: `@Mips Ceci est un message test`).

# Options des commandes messages

Un champ *Options* existe sur les commandes *messages* du plugin. Actuellement une seule option existe: la possibilité de spécifier un fichier accessible localement pour l'envoyer (par exemple une capture de caméra qui se trouverait déjà sur votre Jeedom).
Il faut y mettre une config similaire à ceci: `file=/path/to/file description="description de mon fichier"`

Attention de bien mettre des guillemets s’il y a des espace dans le path ou dans la description (sinon pas nécessaire); La description est optionnelle.

> **Tip**
>
> Ceci n'est pas nécessaire lors de l'envoi d'une nouvelle capture depuis le plugin caméra (par exemple), pour ce cas il suffit d'utiliser la commande adéquate du plugin caméra dans votre scénario et d'y spécifier la commande *message* du plugin *Rocket.Chat* pour l'envoi.

# Interactions

Pour que les interactions fonctionnent, il faut que le plugin connaissent l'utilisateur, il faut donc que la commande correspondante ait été créé (voir ci-dessus).

Ensuite, dans l'onglet commande, il faut sélectionner l'utilisateur Jeedom correspondant à l'utilisateur Rocket.Chat en le sélectionnant dans la liste. Il est possible d'activer ou désactiver la prise en charges des interactions pour chaque utilisateur.
![Commandes](../images/commands.png "Commandes").

Dans les canaux publics ou les groupes de discussions privés, votre bot (le plugin) ne répondra aux interactions que s'il est notifié sur le canal (ex: `@jeedombot Allume la radio`) ceci afin d'éviter qu'il ne réponde `Désolé je n'ai pas compris` à chaque message échangé entre d'autres utilisateurs.
Ceci n'est pas le cas dans les messages directes privés entre vous et le bot.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
