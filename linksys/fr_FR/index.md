---
layout: default
title: Documentation Linksys
lang: fr_FR
pluginId: linksys
---

# Description

Plugin permettant de contrôler certains aspects de vos routeurs Linksys compatibles.

Ce qui est disponible :

- Modèle et firmware
- Status du Réseaux Invités et du Contrôle Parental
- Nombre d'équipements connectés au routeur par type de connexion
- Activer/Désactiver le contrôle parental
- Activer/Désactiver le réseau invités
- Reboot
- Activer/Désactiver les LEDs du routeur
- Contrôle du firmware upgrade
- WAN status

> **Important**
> Le plugin a été testé avec un routeur Linksys Velop VLP01 et firmware 1.1.13.202617. Devrait fonctionner pour d'autres modèles également.

# Configuration

## Configuration du plugin

Le plugin **Linksys** ne nécessite aucune configuration spécifique et doit seulement être activé après l'installation.

Les données sont vérifiées toutes les 5 minutes.

## Configuration des équipements

Pour accéder aux différents équipements **Linksys**, dirigez-vous vers le menu **Plugins → Communication → Linksys**.

Sur la page de l'équipement, renseignez l'adresse IP locale du routeur, l'identifiant du compte Admin (normalement 'admin'), et le mot de passe du compte Admin.

# Credits

Ce plugin s'est inspiré des travaux suivants :

- [reujab](https://github.com/reujab) via sa librairie Go pour JNAP: [linksys](https://github.com/reujab/linksys)

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
