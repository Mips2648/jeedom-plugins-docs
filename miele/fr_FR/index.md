---
layout: default
title: Documentation Miele
lang: fr_FR
pluginId: miele
---

# Description

Plugin permettant d'intégrer tous les appareils de la gamme Miele@Home.
Il est possible d'accéder aux données des appareils, de les monitorer et d'effectuer certaines actions (en fonction de l'appareil).

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Vous devez avoir un compte utilisateur Miele avec au moins un appareil compatible Miele@Home lié et enfin <a href="https://www.miele.com/f/com/en/register_api.aspx" target="_blank">activer l'accès à l'API</a>

L'installation ou la mise à jour des dépendances s'effectue normalement de façon automatique. Si ce n'est pas le cas, vous pouvez lancer l'installation manuellement. Python 3.11 minimum est requis: il sera installé automatiquement si besoin, mais cela peut prendre du temps sur une petite configuration. Veuillez patienter et ne pas interrompre l'installation.

# Configuration du plugin

Dans la configuration du plugin, il faudra renseigner le _Client Id_ et le _Client Secret_ reçus permettant l'accès à l’API et sauvegarder.
Démarrez le démon, puis cliquez sur le bouton Lier Jeedom et Miele@Home et suivez les instructions. Un nouvel onglet s'ouvrira sur le site de Miele, où vous devrez vous connecter avec vos identifiants Miele pour valider le lien.

Si tout s'est déroulé sans erreur, en revenant sur la page de configuration, vous devriez voir que le statut de la connexion est à présent _OK_.

![Configuration](../images/config.png "Configuration")

# Les équipements

Dès que l'authentification est réussie, le plugin synchronisera vos appareils. Il créera les appareils manquants avec leurs commandes et mettra à jour l'état de tous les appareils connectés. La mise à jour des commandes se fera ensuite en temps réel (tant que le démon est lancé)

> **Tip**
>
> Le plugin ne supprimera jamais un équipement dans votre Jeedom. Si effectivement un équipement ne correspond plus à aucun appareil en votre possession, veuillez le supprimer manuellement.

Dans la page de configuration d'un équipement, un bouton permet de recréer les commandes manquantes (utile si vous avez supprimé une commande par erreur).

# Les commandes

Ci-dessous, vous trouverez la description de toutes les commandes qui peuvent exister sur vos équipements, en fonction de leur type et de leur fonctionnalité. Il est normal que toutes les commandes décrites ci-dessous ne soient pas présentes sur vos équipements : cela dépend de chaque équipement, et le plugin gère cela dynamiquement.

De plus, pour pouvoir effectuer une action il faut que l'appareil soit dans un statut/état donné. Il n'est par exemple pas possible de stopper celui-ci s'il n'était pas démarré.

## Commandes communes à tous les appareils

- **Rafraichir** : Rafraîchir les informations de l'appareil.
- **Statut** & **Description statut** : indique l'état de l'appareil (numérique) et sa description respectivement (voir ci-dessous pour la liste des états possibles)
- **Etat** : commande info/binaire indiquant si l'appareil est allumé ou éteint
- **Erreur** : valeur binaire indiquant si l'appareil est en erreur

## Information & actions générales

Vous trouverez ci-dessous les commandes disponibles sur différents appareils, selon qu'ils peuvent être allumés ou éteints, ou qu'ils disposent d'une porte ou d'un éclairage associé.

- **Etat** : État binaire de l'appareil (allumé/éteint).
- **On** : Allumer l'appareil.
- **Off** : Éteindre l'appareil.
- **Notification** : valeur binaire indiquant si une notification est active
- **Porte** : valeur binaire indiquant si une (des) porte(s) de l'appareil est ouverte
- **Lumière** : valeur binaire indiquant le statut de la lumière de l'appareil (si applicable)
- **Allumer la lumière** & **Eteindre la lumière**

## Commandes "programme"

Ces commandes sont généralement présentes sur les lave-linge, sèche-linge, lave-vaisselle, machines à café, fours (traditionnels, vapeur, micro-ondes ou combinés), réfrigérateurs, congélateurs (ou combinés) et armoires à vin.

- **Démarrer** : Démarrer l'appareil, l'appareil doit être en statut 4-Programmé et en attente de démarrage.
- **Pause** : Mettre l'appareil en pause.
- **Arrêter** : Arrêter l'appareil, l'appareil doit être en statut 4-Programmé et en attente de démarrage, 5-Fonctionnement ou 6-Pause.
- **Type de programme** : donne le programme en cours (voir ci-dessous la liste des valeurs possibles connues)
- **Nom du programme** : le nom du programme en cours sur les appareils supportant cette fonctionnalité.
- **Phase** : la phase en cours du programme
- **Temps restant** : le temps restant en heure et minute avant la fin du programme; format HHMM
- **Démarrage dans** : le temps avant le prochain démarrage programmé; format HHMM
- **Temps écoulé** : le temps écoulé depuis le début du programme; format HHMM
- **Démarrer dans** : Commande action pour démarrer l'appareil dans un délai donné (format HHMM).
- **Démarrer programme** : Démarrer un programme spécifique.
- **Température du programme** : la température cible du programme
- **Température** : la température actuelle de l'appareil (votre four est par exemple réglé sur 180°C mais n'a que 70°C)

**Temps restant**, **Démarrage dans**, **Temps écoulé** sont donc des infos numériques au format HHMM directement utilisables dans un scénario par exemple (avec bloc _DANS_ ou _A_) mais si elles sont affichées dans un widget, le plugin se charge de les rendre lisibles et affichera la valeur sous la forme `hh:mm`, par exemple `01:30` ou `--:--` si la valeur est à 0; ce qui veut dire que l'info n'est pas pertinente dans l'état actuel de l'appareil, qu'il n'y a pas de programme en cours et qu'aucun programme n'est planifié.

## Commandes "température"

Ces commandes sont généralement présentes sur les fours (traditionnels, vapeur, micro-ondes ou combinés), réfrigérateurs, congélateurs (ou combinés) et armoires à vin.

- **Température du programme 1** : Température cible du programme 1.
- **Température 1** : Température mesurée 1.
- **Température du programme 2** : Température cible du programme 2.
- **Température 2** : Température mesurée 2.
- **Température du programme 3** : Température cible du programme 3.
- **Température 3** : Température mesurée 3.

## Machine à laver, séche-linge, lave-vaisselle

- **Vitesse de rotation** : Vitesse de rotation en tours par minute (rpm)
- **Niveau de séchage** : Voir ci-dessous pour la liste des valeurs possibles
- **Consommation eau** : Consommation actuelle de la machine en litre
- **Consommation énergie** : Consommation actuelle de la machine en kWh
- **Prévision eau** : Prévision de consommation d'eau (en %).
- **Prévision énergie** : Prévision de consommation d'énergie (en %).

## Hotte

- **Niveau de ventilation** : Valeurs de 1 à 4
- **Définir niveau de ventilation** : Définir le niveau de ventilation (1 à 4)
- **Définir couleurs** : Définir la couleur d'éclairage de l'appareil.

## Réfrigérateur, congélateur & armoire à vin

- **Démarrer Freezing** : Démarrer le mode super congélation.
- **Arrêter Freezing** : Arrêter le mode super congélation.
- **Démarrer Cooling** : Démarrer le mode super refroidissement.
- **Arrêter Cooling** : Arrêter le mode super refroidissement.
- **Mode** : Sélectionner le mode de fonctionnement (Normal, Sabbat, Fête, Vacances).

# Valeurs possibles des commandes infos

## Commande info "Statut"

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

## Commande info "Programme"

Cette liste n'est pas exhaustive, il peut exister d'autres valeurs.

- Normal operation mode
- Own program
- Automatic program
- Cleaning-/Care program

## Commande info "Phase"

Ces listes ne sont pas exhaustives, il peut exister d'autres valeurs.

### Lave-vaisselle

- Main Wash
- Rinse
- Final Rinse
- Drying
- Finished

### Four et tiroir chauffant

- PreHeat
- Program Running

## Commande info "Niveau de séchage"

Cette liste n'est pas exhaustive, il peut exister d'autres valeurs.

- No drying step
- Extra dry
- Normal Plus
- Normal
- Slightly Dry
- Hand iron level 1
- Hand iron level 2
- Machine iron

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [Community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- une capture d'écran de la page de configuration du plugin
- tous les logs disponibles du plugin collés dans un bloc `Texte préformaté` (bouton `</>` sur Community), pas de fichiers!
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
