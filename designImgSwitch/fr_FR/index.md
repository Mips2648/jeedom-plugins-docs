---
layout: default
title: Documentation Design Image
lang: fr_FR
pluginId: designImgSwitch
---

# Description

Plugin permettant de changer automatiquement l'image de fond de vos design en fonction de la météo.
Les informations de météo ainsi que de lever et coucher du soleil seront obtenues soit du plugin Météo officiel (intégration automatique) soit depuis des commandes de votre choix avec configuration manuelle.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Vous devrez aussi installer et configurer le plugin Météo officiel (weather) si vous voulez utiliser l'intégration automatique.

Il n'y a aucune configuration à effectuer au niveau du plugin.

# Configuration de l'équipement

Le plugin se trouve dans le menu Plugins > Météo.
Après avoir créé un nouvel équipement, les options habituelles sont disponible.

Il suffit alors de sélectionner les designs pour lesquels vous voulez changer l'image de fond en fonction de la météo et de choisir l'équipement météo à utiliser.

En cas de configuration manuelle, il est nécessaire de fournir des commandes info qui donneront l'heure du levé et du couché du soleil au format Jeedom (HHMM) ainsi que d'encoder les conditions pour chacun des situations météorologiques afin que le plugin puisse déduire l'image de fond à utiliser.

Les images de fond sont personnalisable via l'écran de configuration des équipements.

# Activation de l'équipement

Dès que la configuration est faite, vous pouvez activer l'équipement et sauvegarder.
Les designs sélectionnés seront immédiatement mis à jour et cela à chaque fois que les conditions météos changent ainsi qu'à l'heure du lever et du coucher du soleil.
Aucune autre action ni aucun autre scénario n'est nécessaire.

# Commandes

L'équipement dispose d'une commande **Rafraichir** pour mettre à jour manuellement les designs liés.
A priori celle-ci ne doit jamais être utilisée, les images de fonds seront déjà automatiquement mises à jours à chaque fois que nécessaire.

Une commande info **Condition** donne la dernière condition météo calculée qui vaudra une des valeurs suivantes: _Brume_, _Neige_, _Nuage_, _Orage_, _Pluie_, _Soleil_, _Vent_, _Défaut_.

Une commande info **Phase du jour** vaudra une des valeurs suivantes: _Jour_, _Nuit_ en fonction de la phase du jour actuelle qui a servi au plugin pour choisir l'image.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
