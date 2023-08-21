---
layout: default
title: Documentation Hydrao
lang: fr_FR
pluginId: hydrao
---

# Description

Plugin permettant d'intégrer les pommeaux de douches Hydrao.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Dans la configuration du plugin, vous devez spécifier votre nom d'utilisateur et votre mot de passe utilisés sur l'application Hydrao ainsi que la clé API. Pour obtenir votre clé API, vous devez contacter le support d'Hydrao directement.

Vous pouvez également configuré combien de douches dans le passé doivent être synchroniser avec Jeedom, cela est surtout utile lors de la première synchronisation, plus d'information ci-dessous.

# Les équipements

Dès que la configuration du plugin est correcte, le plugin synchronisera vos pommeaux de douche.
Il effectuera une synchronisation toutes les 2 heures et vous pouvez faire un refresh manuel via la commande correspondante sur l'équipement.

> **Attention**
>
> Hydrao limite fortement le nombre d'appel API, si vous recevez cette erreur dans le log ´Login failed: (429) - response received: {"message":"Limit Exceeded"}´ je vous invite à les contacter directement pour leur demander d'augmenter la limite.

Le plugin créera une équipement *Pommeau* par pommeau activé sur votre compte. Chaque équipement *Pommeau* aura les commandes info décrites ci-dessous donnant l'information sur la *dernière douche connue* mais les douches précédentes qui n'auraient pas déjà été synchronisées avec Jeedom seront synchronisées également et insérées dans l'historique de la commande sous Jeedom, avec l'heure connue par Hydrao. Le nombre maximum de douche à synchroniser dans le passée est à choisir dans la configuration du plugin.

> **Attention**
>
> Comme vous savez, La date de synchronisation entre le pommeau de douche et Hydrao n'est pas forcément la date réelle de la douche et cette date de synchro est la seule date connue par le plugin, il est impossible de connaître la date réelle de la douche à moins que vous ne fassiez la synchro entre votre pommeau et Hydrao lors de chaque douche. Ceci est une limite du système fourni par Hydrao lié au fait que les pommeaux doivent être régulièrement synchronisés avec le cloud Hydrao via votre téléphone.

Le plugin créera également un équipement *Tableau de bord* qui donne des informations et des statistiques générales liées à votre compte (et pas à une douche en particulier).

# Les commandes

Sur un équipement *Pommeau*, il existe les commandes suivantes:

- **Date synchro** donne la dernière date de synchronisation entre le pommeau et Hydrao
- **Volume** indique le nombre de litre consommé lors de la dernière douche
- **Durée**indique la durée, en seconde, de la dernière douche
- **Température** indique la température moyenne de l'eau de la dernière douche
- **Durée de savonnage** & **Nombre de savonnage** pour la dernière douche (si connu)
- **Débit** de la dernière douche
- **Consommation moyenne** des 100 dernières douches

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
