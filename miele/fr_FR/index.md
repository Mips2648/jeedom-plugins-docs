---
layout: default
title: Documentation Miele
lang: fr_FR
pluginId: miele
---

# Description

Plugin permettant d'intégrer tous les appareils de la gamme Miele@Home.
Il est possible d'accéder aux données des appareils, de les monitorer et d'effectuer certaines actions (en fonction de l'appareil).

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Vous devez avoir un compte utilisateur Miele avec au moins un appareil compatible Miele@Home lié et enfin <a href="https://www.miele.com/f/com/en/register_api.aspx" target="_blank">activer l'accès à l'API</a>

# Configuration du plugin

Dans la configuration du plugin, il faudra renseigner le nom d'utilisateur, le mot de passe ainsi que le pays d'inscription, ainsi que le ClientId et le Client Secret reçus permettant l'accès à l’API.

# Les équipements

Dès que la configuration du plugin est correcte, le plugin synchronisera vos appareils chaque minute. Il créera les appareils manquants avec leurs commandes et mettra à jour l'état de tout les appareils connectés.

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement jeedom ne correspond plus à aucun appareil en votre possession, veuillez le supprimer manuellement.

Dans la page de configuration d'un équipement, il existe un bouton pour créer les commandes manquantes sur celui-ci (dans le cas où vous auriez supprimé une commande par erreur par exemple).

# Les commandes

## Les commandes de type infos communes à tous les appareils

Chaque appareil Miele dispose des commandes suivantes, toutes ne sont pas forcément applicables en toute circonstance pour vos appareils:

- **Etat** & **Statut** donne l'état de l'appareil sous forme de chaîne de caractère et d'identifiant respectivement (voir ci-dessous pour la liste des états possibles)
- **Programme** donne le programme en cours (voir ci-dessous la liste des valeurs possibles connues)
- **Phase** donne la phase en cours du programme
- **Temps restant** donne le temps restant en heure et minute avant la fin du programme.
- **Heure de démarrage**
- **Temps écoulé** donne le temps écoulé depuis le début du programme
- **Température du programme** donne la température cible du programme
- **Température** donne la température actuelle de l'appareil (votre four est par exemple réglé sur 180°C mais n'a que 70°C)
- **Notification** valeur binaire indiquant si une notification est active
- **Erreur** valeur binaire indiquant si l'appareil est en erreur
- **Porte** valeur binaire indiquant si la porte de l'appareil est ouverte
- **Lumière** valeur binaire indiquant le statut de la lumière de l'appareil (si applicable)

> **Tip**
>
> Les informations de **Temps restant**, **Heure de démarrage** et **Temps écoulé** sont chacune disponible dans une commande type chaîne de caractère formatée pour l'affichage dans le widget et d'une autre en format numérique (hhmm) pour l'utilisation dans un scénario par exemple.

### Liste des valeurs pour l'info "Statut" = "Etat"

- 1 = OFF
- 2 = ON
- 3 = PROGRAMMED
- 4 = PROGRAMMED WAITING TO START
- 5 = RUNNING
- 6 = PAUSE
- 7 = END PROGRAMMED
- 8 = FAILURE
- 9 = PROGRAMME INTERRUPTED
- 10 = IDLE
- 11 = RINSE HOLD
- 12 = SERVICE
- 13 = SUPERFREEZING
- 14 = SUPERCOOLING
- 15 = SUPERHEATING
- 146 = SUPERCOOLING_SUPERFREEZING
- 255 = NOT_CONNECTED

### Listes des valeurs pour l'info "Programme"

Cette liste n'est pas exhaustive, il peut exister d'autres valeurs.

- Normal operation mode
- Own program
- Automatic program
- Cleaning-/Care program

### Listes des valeurs connues pour l'info "Phase"

Cette liste n'est pas exhaustive, il peut exister d'autres valeurs.

#### Lave-vaisselle

- Main Wash
- Rinse
- Final Rinse
- Drying
- Finished

#### Four & tiroir Chauffant

- PreHeat
- Program Running

## Les commandes de type infos spécifiques à certain appareils

- **Vitesse de rotation** pour les machines à laver, valeur numérique en rpm.
- **Niveau de séchage** pour les sèches linge, voir ci-dessous pour la liste des valeurs possibles
- **Niveau de ventilation** pour les hottes, valeurs de 0 à 4

### Liste des valeurs pour l'info "Niveau de séchage"

- No drying step
- Extra dry
- Normal Plus
- Normal
- Slightly Dry
- Hand iron level 1
- Hand iron level 2
- Machine iron

## Les commandes actions

Les commandes actions ci-dessous seront présentes sur les équipements si l'action est supportée par l'appareil. De plus, pour pouvoir effectuer une action il faut que l'appareil soit dans un statut/état donné (voir ci-dessus). Il n'est par exemple pas possible de stopper celui-ci s'il n'était pas démarré.

- **Démarrer**, l'appareil doit être en statut 4-Programmé et en attente de démarrage
- **Arrêter**, l'appareil doit être en statut 4-Programmé et en attente de démarrage, 5-Fonctionnement ou 6-Pause
- **Pause** ??
- **Démarrer Freezing**, uniquement pour les appareils de type surgélateur, l'appareil doit être en statut 5-Fonctionnement
- **Arrêter Freezing**, uniquement pour les appareils de type surgélateur, l'appareil doit être en mode Freezing
- **Démarrer Cooling**, uniquement pour les appareils de type congélateur, l'appareil doit être en statut 5-Fonctionnement
- **Arrêter Cooling**, uniquement pour les appareils de type congélateur, l'appareil doit être en mode Cooling
- **Allumer la lumière**, l'appareil doit être en statut 5-Fonctionnement
- **Eteindre la lumière**, l'appareil doit être en statut 5-Fonctionnement
- **Définir heure de démarrage**, l'appareil doit être en statut 4-Programmé et en attente de démarrage

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
