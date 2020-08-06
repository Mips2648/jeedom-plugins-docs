---
layout: default
title: Documentation Gardena-Husqvarna
lang: fr_FR
pluginId: gardena
---

# Description

Plugin permettant d'intégrer tous les appareils de la gamme Gardena Smart System (Water Control, sensor, irrigation control, power socket et Sileno mower) ainsi que les robots Husqvarna Automower.
Il est possible d'accéder aux données des appareils, de les monitorer et d'effectuer certaine actions (en fonction de l'appareil)

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Dans la configuration du plugin, il faudra renseigner le nom d'utilisateur, ainsi que l'application key permettant l'accès aux API.
Vous devez également sélectionner les services que vous voulez activer parmi les 2 options possibles (les 2 peuvent être activés en même temps):

- Gardena Smart System
- Husqvarna Automower

# Synchronisation et configuration des équipements

Dès que la configuration du plugin est complète et correcte, le plugin synchronisera les équipements selon les services activés.
Il créera les équipements manquants avec leurs commandes et mettra à jour les commandes de tout les appareils connectés.

Les commandes des équipements de la gamme Gardena Smart System seront mises à jours en temps réel, il n'y a donc pas de configuration supplémentaire à faire.Les tondeuses Husqvarna Automower seront mise à jour chaque minute et une commande **Rafraichir** existe pour demander une actualisation supplémentaire manuelle.

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement jeedom ne correspond plus à aucun appareil en votre possession, veuillez le supprimer manuellement.

Dans la page de configuration d'un équipement, il existe un bouton pour créer les commandes manquantes sur celui-ci (dans le cas où vous auriez supprimé une commande par erreur par exemple).

# Les équipements et leurs commandes

## Les commandes communes à tous les appareils

Chaque équipement Gardena Smart System dispose des commandes suivantes:

- **Batterie** indique le niveau de charge la batterie (si applicable) en pourcent
- **Etat batterie** donne une description de l'état de la batterie
- **Niveau connexion** indique la niveau de la connexion avec la passerelle en pourcent
- **Etat connexion** donne une description de l'état de connexion

## Gardena Smart Sensor

- **Température** indique la température ambiante
- **Luminosité** indique la luminosité en lux
- **Humidité du sol** indique le pourcentage d'humidité du sol
- **Température du sol** indique la température du sol

## Gardena Smart Water Control

- **Santé** indique l'état général de la valve: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **Activité** indique l'activité en cours: *CLOSED*, *MANUAL_WATERING*, *SCHEDULED_WATERING*
- **Etat** commande info binaire indiquant si la valve est ouverte ou fermée
- **Démarrer** commande action pour démarrer l'arrosage demandant en option le nombre de minute (entière) d'arrosage
- **Arrêter** commande action pour arrêter l'arrosage
- **Durée restante** commande info donnant le temps restant (en minute) lorsque l'arrosage est en cours
- **Pause programmation** commande action
- **Reprise programmation** commande action

## Gardena Smart Power Socket

- **Santé** indique l'état général de la prise: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **On** commande action pour allumer la prise
- **Off** commande action pour éteindre la prise
- **On minuteur** command action pour allumer la prise avec auto extinction après x minutes (entières) passées en option de la commande
- **Activité** indique l'activité en cours: *OFF*, *FOREVER_ON*, *TIME_LIMITED_ON*, *SCHEDULED_ON*
- **Etat** commande info indiquant si la prise est allumée ou éteinte
- **Durée restante** commande info donnant le temps restant de la minuterie (si applicable)
- **Pause programmation** commande action
- **Reprise programmation** commande action

## Gardena Smart Mower

- **Santé** indique l'état général de la tondeuse: _OK_, _WARNING_, _ERROR_, _UNAVAILABLE_
- **Activité** indique l'activité en cours: *PAUSED*, *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*, *PARKED_TIMER*, *PARKED_PARK_SELECTED*, *PARKED_AUTOTIMER*, *NONE*
- **Active** commande binaire indiquant si la tondeuse est active ou non; elle sera indiquée comme active dans lors de ces activités: *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*
- **Heures de travail** commande info donnant le nombre d'heures de travail
- **Durée restante** commande info donnant le temps restant d'activité
- **Démarrage mode manuel** commande action pour démarrer en mode manuel demandant en option le nombre de minute d'activité
- **Démarrage mode auto** commande action pour démarrer en mode auto (en suivant la programmation)
- **Annulation et retour à la base** commande action, la tondeuse redémarrera lors de la prochaine tâche
- **Stop et retour à la base** commande action, la tondeuse ne redémarrera pas pour la prochaine tâche

## Gardena Smart Irrigation Control

## Husqvarna Automower

- **Connecté** commande info binaire indiquant si la tondeuse est connectée
- **Batterie** indique le niveau de charge la batterie (si applicable) en pourcent
- **Mode** aura une des valeurs suivantes: *MAIN_AREA*, *DEMO*, *SECONDARY_AREA*, *HOME*, *UNKNOWN* (voir ci-dessous pour une description des valeurs)
- **Etat** aura une des valeurs suivantes: *UNKNOWN*, *NOT_APPLICABLE*, *PAUSED*, *IN_OPERATION*, *WAIT_UPDATING*, *WAIT_POWER_UP*, *RESTRICTED*, *OFF*, *STOPPED*, *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* (voir ci-dessous pour une description des valeurs)
- **Activité** aura une des valeurs suivantes: *UNKNOWN*, *NOT_APPLICABLE*, *MOWING*, *GOING_HOME*, *CHARGING*, *LEAVING*, *PARKED_IN_CS*, *STOPPED_IN_GARDEN* (voir ci-dessous pour une description des valeurs)
- **Erreur** donne la description de l'erreur le cas échéant

### Description des modes

- *MAIN_AREA* - La tondeuse va tondre, rentrer à la base pour se charger selon son programme.
- *DEMO* - Identique à *MAIN_AREA* mais moins longtemps. Pas d'activité des lames.
- *SECONDARY_AREA* - Pas de programmation, la tondeuse est en mode manuel.
- *HOME* - La tondeuse est sur sa base et la programmation n'est pas appliquée.
- *UNKNOWN* - Inconnu.

### Description de l'état

- *PAUSED* - La tondeuse est en pause.
- *IN_OPERATION* - En opération, voir la valeur **Activité**.
- *WAIT_UPDATING* - La tondeuse télécharge et met à jour le firmware.
- *WAIT_POWER_UP* - La tondeuse s'allume.
- *RESTRICTED*` - la tondeuse ne peut pas tondre dû à la programmation ou un stop manuel.
- *OFF* - La tondeuse est éteinte.
- *STOPPED* - La tondeuse est arrêtée et demande une intervention manuelle.
- *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* - Une erreur s'est produite, voir la valeur de **Erreur**. La tondeuse demande une intervention manuelle.
- *NOT_APPLICABLE* - Pas applicable.
- *UNKNOWN* - Inconnu.

### Description de l'activité

- *MOWING* - Tonte en cours
- *GOING_HOME* - Se rend à la base
- *CHARGING* - Sur la base, en chargement.
- *LEAVING* - Quitte la base.
- *PARKED_IN_CS* - Sur la base.
- *STOPPED_IN_GARDEN* - Tondeuse arrêtée dans le jardin. Action manuelle nécessaire.
- *NOT_APPLICABLE* - Action manuelle nécessaire.
- *UNKNOWN* - Inconnu.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
