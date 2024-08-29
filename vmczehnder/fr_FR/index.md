---
layout: default
title: Documentation VMC (Zehnder/Storkair)
lang: fr_FR
pluginId: vmczehnder
---

# Description

Plugin permettant d'interfacer une VMC de la marque Zehnder - aussi connu sous Storkair, ComfoAir, Wernig - via le port série (RS232) utilisé par le CCEase/ComfoSense.
Les modèles suivant devraient être compatibles mais ils n'ont pas tous été testés:

- ComfoAir 180, 200, SL 330, 350
- ComfoD 250/350/450/550
- WHR 920/930/950/960

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.2                      |

# Installation matériel

## Pré-requis

Vous aurez besoin d'un Raspberry pi (pas besoin d'un modèle puissant, un pi zéro w suffit, ou un vieux modèle si vous en avez un qui traîne) ou de tout autre système tournant sous Debian Buster minimum (pas testé avec d'autres distributions).
Si votre Jeedom est proche de la VMC, vous pouvez l'utiliser mais je conseille de séparer les 2 rôles.
La suite de la documentation suppose que vous avez un pi, différent de Jeedom.

Vous devez installer votre Raspberry pi, le connecter au réseau avec une IP fixe et activer ssh.
Ce Raspberry hébergera un démon qui assurera la connexion entre la VMC (via son interface série, voir ci-dessous) et le plugin (via MQTT). La connexion SSH servant à l'installation et la configuration du démon distant.

Le plugin nécessite une installation fonctionnelle du plugin "MQTT Manager (MQTT2)", si ce plugin n'est pas encore présent sur votre système, il sera installé automatiquement mais vous devrez finaliser sa configuration (voir documentation de *MQTT Manager*).

A ce stade, il est recommandé de déjà mettre à jour votre pi (apt-get update, apt-get upgrade) afin d'accélérer l'installation du démon plus tard (voir ci-dessous).

> **Important**
>
> sudo doit être installé sur la machine connectée à la VMC, le user servant au plugin doit être dans le grouper sudoers et avoir le droit d'exécuter une commande sudo sans confirmer son mot de passe.

## Raccordement de la VMC

Le plugin communiquera avec la VMC par l'intermédiaire de l'interface RS232. Sur la VMC, cette interface est disponible:

- soit via un bornier (4 fils) sur lequel le CCEase est peut-être branché si vous en avez un,
- soit un port DB9,
- soit parfois un port RJ45.

![Image interface série](../images/connectorBoard_picture.jpg "Interface série")

![Schéma interface série](../images/connectorBoard_schema.png "Schéma interface série")

Il vous faudra connecter cette interface sur le Raspberry Pi.
Il existe des adaptateurs DB9-USB, c'est le plus simple si le port DB9 est présent sur votre VMC

![Adaptateur db9-usb](../images/db9_usb_adaptor.jpg "Adaptateur db9-usb")

Si vous le port db9 n'est pas présent, il existe aussi des adaptateurs de borniers vers DB9 pour ensuite brancher un adaptateur DB9-USB, à vous alors de brancher les fils au bornier de la VMC ou au port RJ45.

![Adaptateur bornier_db9](../images/bornier_db9_adaptor.jpg "Adaptateur bornier_db9")

# Installation du plugin

> **Tip**
>
> Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Il n'y a pas de configuration supplémentaire à effectuer ici.

# Configuration des équipements

## Création de l'équipement dans votre Jeedom

- Rendez-vous sur la page de configuration des équipements via le menu "Plugins", puis "Confort" et "VMC (Zehnder/Storkair)";
- Cliquez sur "Ajouter" et donnez un nom;
- Vous arriverez sur la page de configuration de l'équipement sur laquelle vous pouvez configurer les options habituelles dans Jeedom (n'oubliez pas d'activer votre nouvel équipement).

![Configuration équipement](../images/eqlogic_config.png "Configuration équipement")

## Connectivité entre le plugin et le pi (configuration ssh)

Vous devez ensuit renseigner l'adresse IP du Raspberry précédemment installé et connecté à la VMC, le port ssh (si différent du port par défaut), l'utilisateur (si autre que "pi") et son mot de passe.

> **Important**
>
> L'utilisateur configuré doit être dans le groupe sudoers et avoir le droit de faire un sudo sans retaper le mot de passe.

**sauvegardez** votre équipement et si la configuration est correcte vous pouvez passer à l'étape suivante.

## Installation & configuration du démon

### Première installation

En principe, après la sauvegarde de l'équipement, la liste déroulante *Port série VMC* devrait contenir la liste des périphérique USB détecté sur le pi. Si ce n'est pas le cas:

- Vérifiez les informations de connexion: ip, utilisateur, mot de passe
- Vérifiez que vous avez correctement branché l'adaptateur USB sur le pi.

Sélectionnez le port correcte et **sauvegardez** l'équipement.

Vous pouvez à présent cliquer sur le bouton **Installer, configurer & redémarrer le service**. Cela va prendre un peu de temps donc patientez, vous allez recevoir régulièrement des notifications sur l'avancement.

L'installation va:

- copier les fichiers nécessaires sur le pi (via SSH);
- installer les dépendances;
- démarrer le service distant

Si tout se passe correctement, le démon/service va commencer à envoyer les informations sur la VMC et le *statut* passera à *OK*

### Changement de configuration

Si vous changez le port série à utiliser, vous devez, après avoir sauvegardé l'équipement, renvoyer la configuration. Pour ce faire, vous pouvez cliquer sur le bouton **Configurer le service & redémarrer**

# Configuration de la VMC

L'action recharger la configuration permet de lire la configuration depuis la VMC qui peut ensuite être consultée via l'onglet *Configuration*.
Il n'est normalement pas nécessaire d'effectuer cette action, la config est mise à jour automatiquement à chaque démarrage du service.

L'écran présente un résumé des information de la VMC, les compteurs d'utilisation ainsi que la configuration des vitesses de ventilation.

# Commandes

Toutes les commandes créées se trouvent évidemment dans l'onglet *Commandes*.
Vous y trouverez un bouton pour recréer les commandes manquantes sur votre équipement. Il n'y a aucun risque à effectuer cette actions, une commande existante ne sera jamais remplacée ni écrasée.

En plus des commandes d'info (vitesse de ventilation actuelle, température mesurées...) et de la commande de rafraîchissement de ces infos, il existe:

- une commande pour chaque vitesse de ventilation (0-absent, 1-lente, 2-moyenne, 3-rapide) pour définir la vitesse de ventilation correspondante.
Vous pouvez utiliser ces commandes dans vos scénarios pour par exemple diminuer la vitesse en cas d'absence, de vacances ou pendant la nuit ou l'augmenter en cas d'augmentation de l'humidité dans la salle de bain et/ou la cuisine (via capteurs séparés).
- une commande pour définir la température de confort, acceptant une valeur entre 12°C et 28°C. La température de confort détermine l'utilisation ou non du bypass par la VMC (afin de refroidir la maison en cas de surchauffe, cf. manuel de la VMC). Il n'est pas recommandé de changer souvent cette valeur, la VMC se chargera de la gestion une fois la température définie et cette température est probablement déjà définie correctement dans votre installation.

La commande *Connecté* correspond à l'état du démon distant.

# Rendement

Le plugin calcul le rendement de la VMC via la la formule du rendement sur air neuf: ηt = (T°C Air insufflé – T°C Air Neuf) / (T°C Air Extrait – T°C Air Neuf)

Le résultat obtenu donne une indication de l'encrassement de vos filtres: des filtres sales diminueront le rendement de la VMC.

# Widget

![Exemple du widget de base](../images/widget.png "Exemple du widget de base")

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
