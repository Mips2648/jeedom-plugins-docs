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
| Jeedom    | >= 4.4                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Dans la configuration du plugin il faudra renseigner le nom d'utilisateur et le mot de passe.

# Les équipements

Dès que le démon démarre, si votre nom d'utilisateur et mot de passe sont correctes, le plugin va créer automatiquement les véhicules liés à votre compte.

Les infos sont actualisées toutes les 10 minutes.

# Les commandes

Pour l'instant les commandes infos suivantes sont disponibles:

- Kilométrage
- Prochaine vidange huile en jours et en km
- Prochain entretien en jours et en km
- Niveau du réservoir & autonomie

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- une capture d'écran de la page de config du plugin
- tous les logs disponibles du plugin collés dans un `Texte préformaté` (bouton `</>` sur community), pas de fichiers!
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
