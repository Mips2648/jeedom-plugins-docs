---
layout: default
title: Index
lang: fr_FR
pluginId: myaudi
---

# Description

Plugin permettant la connexion à la plateforme MyAudi permettant de récupérer les voitures de la marque qui sont compatibles.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

> **Important**
>
> Le plugin ne fonctionnera pas sous Jessie, il est nécessaire de pouvoir installer python 3.5 minimum, qui n'est pas disponible sous Jessie.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner le nom d'utilisateur et le mot de passe.

# Les équipements

Dès que le démon démarre, si votre nom d'utilisateur et mot de passe sont correctes, le plugin va créer automatiquement les véhicules liés à votre compte.
Il est possible de faire une synchronisation manuelle via la page des équipements.

Dans la page de l'équipement vous pouvez configurer la fréquence d'actualisation des données.

# Les commandes

Pour l'instant les commandes suivantes sont disponibles:

- Température extérieur
- Kilométrage
- Prochaine vidange huile en jours et en km
- Prochain entretien en jours et en km
- Niveau de l'huile (en L et en %)
- Avertissement du niveau d'huile bas et changement d'huile
- Niveau du réservoir
- Autonomie totale (en km)
- Autonomie AdBlue (en km)

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ({{site.tagPlugin}}).
