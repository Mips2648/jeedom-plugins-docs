---
layout: default
title: Documentation Gotify
lang: fr_FR
pluginId: gotify
---

# Description

Plugin permettant à Jeedom d'agir comme une application Gotify qui peut envoyer des messages (notifications) à un serveur Gotify.
Vous trouverez plus de détails dans <a href="https://gotify.net/docs/" target="_blank">la documentation de Gotify</a>.

L'avantage de ce système est de pouvoir être hébergé chez vous (un conteneur docker suffit), vos données reste ainsi en votre possession.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Il est nécessaire de déjà avoir un serveur Gotify, l'installation ne sera pas détaillée ici car très clairement expliqué sur le site.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner l'URL du server Gotify sous la forme:

```HTTP
http://yourdomain.com:32768
```

Vous pouvez éventuellement configurer un token client, ceci permettra à jeedom de consulter et supprimer les messages sur le serveur (sinon il ne pourra qu'en envoyer).

# Configuration de l'équipement

Après avoir créé un nouvel équipement, les options habituelles sont disponibles.
Il faudra également renseigner le token de l'application que vous aurez précédemment créé dans Gotify (à ne pas confondre avec le token client).
Donc un équipement Jeedom correspond à une application Gotify.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
