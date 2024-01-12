---
layout: default
title: Documentation Linksys
lang: fr_FR
pluginId: linksys
---

# Description

Plugin permettant de contrôler certains aspects de vos routeurs Linksys compatibles.

Ce qui est disponible:

- Modèle et firmware
- Statut du réseaux invités et du contrôle parental
- Nombre d'équipements connectés au routeur par type de connexion
- Activer/Désactiver le contrôle parental
- Activer/Désactiver le réseau invités
- Reboot
- Activer/Désactiver les LEDs du routeur
- Mise à jour du firmware
- Statut WAN

> **Important**
>
> Le plugin a été testé avec un routeur Linksys Velop et devrait fonctionner pour d'autres modèles également.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Il n'y a aucune configuration à effectuer au niveau du plugin.

## Configuration des équipements

Le plugin se trouve dans le menu Plugins → Communication.

Après avoir créé un nouvel équipement, les options habituelles sont disponibles.

Vous devrez ensuite renseigner l'adresse IP locale du routeur, l'identifiant du compte Admin (si différent de 'admin'), et le mot de passe.

Vous pouvez également configurer la fréquence d'actualisation des données.

# Credits

Ce plugin a été initialement créé par @hugoks3.

Ce plugin s'est inspiré du travail de [reujab](https://github.com/reujab) via sa librairie Go pour JNAP: [linksys](https://github.com/reujab/linksys)

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
