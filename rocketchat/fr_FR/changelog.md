---
layout: default
title: Changelog Rocket.Chat
lang: fr_FR
pluginId: rocketchat
---

# 2022-03-28

- Compatibilité avec Rocket.Chat v4
- Cette mise à jour nécessite de réinstaller les dépendances, cela devrait être fait automatiquement lors de la mise à jour du plugin.
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2
- Suppression de la compatibilité avec Debian Stretch, dorénavant il est indispensable d'être sous Debian Buster minimum

# 2020-12-02

- Ajout du support des boutons pour répondre rapidement au ask (type telegram)
- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes
- Nettoyage de la mise en page pour la V4

# 2020-08-15

- Force la configuration de la clé API en mode localhost

# 2020-03-30

- Déplacement de la documentation

# 2020-03-27

- Changement de méthode d'envoi des messages car celle utilisée plantait l'app Android Rocket.Chat dans certaines situations (dû à un bug dans l'API de Rocket.Chat)

# 2020-03-20

- Il n'est plus nécessaire de mentionner le bot pour les interactions dans une conversion directe / message privé.
- Vérification de la configuration avant le démarrage du démon
- Vérification de l'état du démon avant l'utilisation d'une commande

# 2020-02-14

- Ajout du support des pièces jointes (par exemple les images des caméras)

# 2020-02-01

Première version

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
