---
layout: default
title: Documentation MyAudi
lang: fr_FR
pluginId: myaudi
---

# Description

Plugin permettant la connexion à la plateforme MyAudi permettant de récupérer les voitures de la marque qui sont compatibles.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.2                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner le nom d'utilisateur et le mot de passe.
Vous pouvez aussi renseigner une clé API Google Maps qui sera utilisée pour afficher la carte avec la localisation du véhicule sur le widget.

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
- Statut d'ouverture et de verrouillage des portes
- Localisation du véhicule (latitude et longitude)

# Widget

Dans la configuration avancée de la commande _Localisation_ vous pouvez configurer les options suivantes:

- **showMap:** 0 pour ne pas afficher la carte, 1 pour afficher la carte
- **mapWidth:** largeur de la carte, par défaut 240
- **mapHeight:** hauteur de la carte, par défaut 180
- **showCoordinates:** si la carte est affichée, par défaut n'affiche pas les coordonnées (latitude et longitude). 1 pour les afficher.

![Paramètres localisation](../images/location.png "Paramètres localisation")

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
