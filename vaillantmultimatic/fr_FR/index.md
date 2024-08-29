---
layout: default
title: Documentation myVaillant
lang: fr_FR
pluginId: vaillantmultimatic
---

# Description

Plugin permettant de se connecter à un système myVaillant via sa passerelle internet (VR900, VR920, VR921).
Il est possible de remonter dans Jeedom l'état de tous les équipements connectés et de les contrôler: définir le mode (On, Off, Auto...), définir les températures de consigne, activer une marche forcée...

Les vannes et les thermostats de la gamme ambiSENSE reliées au système sont également gérés.

> **Important**
>
> Le plugin devrait fonctionner avec toutes les passerelles (VR900, VR920, VR921 ...) et régulateurs (VRC700, VRC720 ...) compatible avec l'application myVaillant.

# Versions supportées

> **Attention**
>
> Ce plugin n'est plus compatible avec le système vaillantMULTIMATIC mais uniquement myVaillant. Si vous n'avez pas encore migré sur myVaillant, n'installez pas cette version du plugin.

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.2                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

# Configuration du plugin

Vous devez renseigner le nom d'utilisateur et son mot de passe dans la configuration du plugin ainsi que votre pays et la marque de votre système (Bullex, Saunier Duval ou Vaillant)

![config](../images/config.png)

Vous avez également la possibilité de configurer la fréquence de mise à jour des informations, en minute.

> **Tip**
>
> Lors d'une action, un changement de consigne ou de mode par exemple, l'état de l'équipement est mis à jour immédiatement. Il s'agit ici de mise à jours supplémentaires effectuées en arrière plan.

# Les équipements et leurs commandes

Dès que les dépendances seront installées et la configuration du plugin sera correcte, le démon sera démarré et le plugin synchronisera vos équipements avec Jeedom.

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement Jeedom ne correspond plus à aucun équipement en votre possession, veuillez le supprimer manuellement.

Des équipements de différents types seront créés en fonction de ce qui existent dans votre système. Les équipements possibles sont: la passerelle elle-même, le contrôleur de votre production d'eau chaude et le circulateur, un équipement pour gérer la ventilation, un équipement par zone de chauffage et si vous avez des équipements de la gamme ambiSENSE, un équipement par pièce et un équipement par vanne et par thermostat.

> **Tip**
>
> Si votre système myVaillant ne dispose pas d'un des équipements listés ci-dessus il n'y aura donc pas d'équipement de ce type créé sous Jeedom, cela est normal. Cette documentation reprend simplement l'ensemble des possibilités.

## La passerelle

C'est l'équipement principal du système. Il permet le contrôle des modes rapides, du mode vacances et affichera les informations de température des différentes sondes en fonction de ce qui existe sur votre installation, par exemple la température de départ du chauffage, du ballon d'eau chaude, la température extérieur...

Les modes rapides sont les mêmes que ceux disponibles dans l'app mobile, ils ont un impact global sur les composants du système en fonction du mode activé.

Le mode vacances aura également un impact global mais il est un peu particulier car il a une date de début et de fin et est donc programmé. S'il est activé mais que la date actuelle ne se trouve pas dans l'interval défini il ne sera pas appliqué (et un autre mode rapide le sera éventuellement selon votre configuration).

Voici un aperçu des commandes disponibles:

- **Rafraichir** rafraîchit toutes les informations de tous les équipements
- **Online** commande info/binaire
- **Date début vacances**, **Date fin vacances** & **Définir dates vacances** sont respectivement les commandes donnant la date de début et de fin de vacances enregistrées ainsi que la commande pour définir ces dates
- **Consigne vacances** et **Définir consigne vacances** permettent de connaître et de définir la consigne de température appliquée lorsque le mode vacances est actif.
- **Mode vacances actif**, **Annuler mode vacances** sont les commandes permettant de connaître le statut et de désactiver le mode vacances.
- **Température extérieure**, **Température de départ** sont des commandes info/numérique

## Eau chaude sanitaire

Cet équipement reprend des informations sur la production d'eau chaude sanitaire.

- **Mode** retourne le mode actif, il peut avoir une des valeurs suivantes: _Auto_, _On_, _Off_
- **Auto**, **On**, **Off**, commande action pour activer le mode correspondant
- **Consigne** et **Définir consigne** indique et permet de modifier la consigne voulue
- **Température** indique la température actuelle de l'eau
- **Boost ECS actif**, **Boost ECS on** et **Boost ECS off** pour contrôler le mode boost de l'eau chaude sanitaire

## Ventilation

- **Mode** retourne le mode actif, il peut avoir une des valeurs suivantes: _Jour_, _Nuit_, _Off_
- **Jour**, **Nuit**, **Off**, commande action pour activer le mode correspondant
- **Etat** donne l'état actuel, _Jour_, _Nuit_, _Off_.
- **Vitesse** donne la vitesse actuelle
- **Vitesse Jour** et **Vitesse Nuit** commandes info donnant la vitesse programmée pendant le jour et la nuit respectivement
- **Définir vitesse Jour** et **Définir vitesse Nuit** commandes actions permettant de modifier la vitesse programmée pendant le jour et la nuit respectivement
- **Température** indique la température actuelle

## Les zones

Il y aura un équipement de type _Zone_ par zone de chauffage (par circuit) géré par votre system Vaillant.
Chaque zone disposera des commandes suivantes:

- **Actif** commande info binaire indiquant si la zone est active ou non
- **Mode** retourne le mode actif, il peut avoir une des valeurs suivantes: _Auto_, _Jour_, _Nuit_, _Off_
- **Auto**, **Jour**, **Nuit**, **Off**, commande action pour activer le mode correspondant
- **Consigne** donne la consigne appliquée actuellement
- **Consigne jour** et **Définir consigne** indique et permet de modifier la consigne utilisée en mode _Jour_
- **Consigne nuit** et **Définir consigne nuit** indique et permet de modifier la consigne utilisée en mode _Nuit_
- **Température** indique la température actuelle de la zone
- **Activer température forcée** commande action/slider permettant de donner une consigne et d'activer le mode forcé, autrement dit de forcer l'application de cette consigne indépendamment du programme en cours. Ce mode sera actif pendant la durée configurée dans la commande **Durée mode forcé** avant de revenir au programme précédent.
- **Annuler température forcée** commande action permettant d'annuler le mode forcé
- **Durée mode forcé** contient la durée pendant laquelle le mode forcé sera actif _lors de la prochaine activation_
- **Définir durée mode forcé** permet de modifier la durée pendant laquelle le mode forcé sera actif _lors de la prochaine activation_. Modifier cette durée n'a pas d'influence sur la durée restante si la température forcée était déjà activée, pour cela il faut à nouveau utiliser la commande **Activer température forcée**

## Les pièces

Lorsque vous avez des vannes et/ou des thermostats de la gamme ambiSENSE reliées au système, le plugin créera des équipements _Pièce_ correspondant aux pièces existantes dans l'app mobile.
La gestion de la consigne de température se fera individuellement via ces équipements et plus de façon centralisée sur la zone entière. Cela permettra donc une gestion plus granulaire de votre chauffage.
Les équipements _Pièce_ disposent des commandes suivantes:

- **Rafraichir** rafraîchit les informations de la pièce
- **Mode** retourne le mode actif, il peut avoir une des valeurs suivantes: _Auto_, _Manuel_, _Off_
- **Auto**, **Manuel**, **Off**, commande action pour activer le mode correspondant
- **Etat** donne l'état actuel: _Auto_, _Manuel_ ou _Off_
- **Consigne** donne la consigne appliquée actuellement
- **Définir consigne** permet de modifier la consigne. En mode _Manuel_ cela changera la consigne manuelle, en mode _Auto_ ou _Forcé_ cela activera le mode forcé et appliquera la nouvelle consigne (équivalent à la commande **Activer température forcée**)
- **Température** indique la température actuelle de la pièce
- **Humidité** indique l'humidité actuelle de la pièce si un thermostat s'y trouve sinon aucune info ne remontera sur cette commande
- **Activer température forcée** commande action/slider permettant de donner une consigne et d'activer le mode forcé, autrement dit de forcer l'application de cette consigne indépendamment du programme en cours. Ce mode sera actif pendant la durée configurée dans la commande **Durée mode forcé** avant de revenir au programme précédent.
- **Annuler température forcée** commande action permettant d'annuler le mode forcé et de revenir au programme précédent
- **Durée mode forcé** contient la durée pendant laquelle le mode forcé sera actif _lors de la prochaine activation_
- **Définir durée mode forcé** permet de modifier la durée pendant laquelle le mode forcé sera actif _lors de la prochaine activation_. Modifier cette durée n'a pas d'influence sur la durée restante si la température forcée était déjà activée, pour cela il faut à nouveau utiliser la commande **Activer température forcée**
- **Sécurité enfant** commande info binaire indiquant si la sécurité enfant est activée sur la vanne ou le thermostat de la pièce
- **Fenêtre ouverte** commande info binaire indiquant si la vanne ou le thermostat de la pièce a détecté une fenêtre ouverte (par une chute brutale de la température)

## Vannes & thermostats

Ces équipements "techniques" n'ont aucune commande pour gérer le chauffage, tout ce fait via les équipements _Pièce_. Ils disposent tout de même des 2 commandes suivantes:

- **Batterie faible** commande info binaire indiquant si l'état de la batterie est faible. Il n'existe pas de remontée de l'état en pourcent.
- **Hors portée** commande info binaire indiquant si l'équipement est hors portée du système (et que donc il ne communique plus avec la passerelle).
- **rssi** commande info numérique indiquant la qualité du signal

Le plugin remontera l'information _batterie_ dans l'équipement pour que le core puisse y accéder de façon standard (comme tous les autres équipements sous Jeedom) et que l'on puisse être notifié via les alertes prévues dans Jeedom mais comme l'information en pourcent n'existe pas réellement, les valeurs fictives suivantes seront définies:

- 100% tant que la commande **Batterie faible** vaut 0
- 10% lorsque la commande **Batterie faible** vaut 1

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
