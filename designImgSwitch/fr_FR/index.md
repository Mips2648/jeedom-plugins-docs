---
layout: default
title: Index
lang: fr_FR
pluginId: designImgSwitch
---

# Description

Plugin permettant de changer automatiquement l'image de fond de vos design en fonction de la météo.
Les informations de météo ainsi que de lever et coucher du soleil seront obtenues du plugin Météo officiel.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Vous devrez aussi installer et configurer le plugin Météo officiel (weather).

Il n'y a aucune configuration à effectuer au niveau du plugin.

# Configuration de l'équipement

Le plugin se trouve dans le menu Plugins > Météo.
Après avoir créé un nouvel équipement, les options habituelles sont disponible.

Il suffit alors de sélectionner les designs pour lesquels vous voulez changer l'image de fond en fonction de la météo et de choisir l'équipement météo à utiliser.
Si aucune équipement météo n'est actif, vous verrez un message d'erreur.

# Activation de l'équipement

Dès que la configuration est faite, vous pouvez activer l'équipement et sauvegarder.
Les designs sélectionnés seront immédiatement mis à jour et cela à chaque fois que les conditions météos changent ainsi qu'à l'heure du lever et du coucher du soleil.
Aucune autre action ni aucun autre scénario n'est nécessaire.

# Commande "Rafraichir"

L'équipement dispose d'une commande "Rafraichir" pour mettre à jour manuellement les designs liés.
A priori celle-ci ne doit jamais être utilisée, les images de fonds seront déjà automatiquement mises à jours à chaque fois que nécessaire.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
