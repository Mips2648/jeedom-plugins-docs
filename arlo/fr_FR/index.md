---
layout: default
title: Arlo
lang: fr_FR
pluginId: arlo
---

# Description

Plugin permettant le contrôle des équipements de la gamme Arlo comme les caméras, la station de base et la sirène intégrée.

Tous les modèles actuels supportés par l'application Arlo (web ou mobile) seront supportés par le plugin: Arlo, Arlo Pro, Pro2, Pro3, Ultra, Arlo Q, Arlo go, Arlo baby ... mais toutes les fonctions propres à chaque modèle ne sont pas encore intégrées au plugin (elles le seront en priorités selon les demandes).

Pour l'instant, il est possible de:

- sélectionner le mode: Activé, désactivé mais aussi tous les modes personnalisés;
- Activer / désactiver chaque caméra indépendamment l'une de l'autre (quelque soit le mode en cours);
- déclencher la sirène intégrée à la station de base et connaître son statut;
- connaître le statut de chaque caméra:
  - connecté ou non
  - status général (inactif, alerte, ...)
  - niveau de batterie (et si la charge est en cours)
  - force du signal
  - si la détection de son ou de mouvement est actif
  - si du son ou du mouvement est détecté
  - effectuer une capture instantanée (stockée localement)
  - effectuer un enregistrement (stocké localement)
  - visualiser les captures et les vidéos prises
  - lancer/arrêter un enregistrement (stocké dans le cloud Arlo)
  - visualiser le streaming live de vos caméras (avec quelques secondes de décalage)

# Configuration

## Installation

> **Important**
>
> Le plugin n'a pas été testé sous Jessie et son fonctionnement sur cette version ne sera pas assuré.

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.
Avant de pouvoir lancer le démon il faut renseigner l'adresse email et le mot de passe pour pouvoir se connecter à Arlo.

## Création d'un utilisateur dédié au plugin

Arlo n'autorise pas de connexions simultanées d'un utilisateur à plusieurs interface: si vous êtes connecté dans l'app sur un mobile, vous ne pourrez pas l'être sur un autre mobile en même temps ni sur l'interface web. Si vous vous connectez sur l'interface web par exemple vous serez automatiquement déconnecté de l'app mobile.
Le plugin se connecte au système Arlo comme un utilisateur standard et il sera donc soumis à la même contrainte.

Il est donc nécessaire de créer un utilisateur dédié au plugin, dans le cas contraire il ne fonctionnera pas correctement.

- Pour cela, ouvrez <https://my.arlo.com> ou ouvrez l'app mobile;
- Cliquez sur "Paramètres" en haut à droite;
![Paramètres Arlo](../images/settings.png "Paramètres Arlo")

- Cliquez sur "Autoriser l'accès" dans le menu de gauche puis sur "Ajouter" à droite.
![Accès Arlo](../images/access.png "Accès Arlo")

- Entrez les informations demandées y compris une nouvelle adresse email (ou, si vous utilisez une adresse gmail, un alias gmail en rajoutant +jeedom avant @gmail.com par exemple);
- Sélectionnez les équipements Arlo auxquels aura accès le plugin;
- Activez l'option "Accorder des droits d'accès" pour pouvoir changer de mode, démarrer un enregistrement, prendre des captures etc depuis Jeedom.
![Création compte Arlo](../images/create.png "Création compte Arlo")
- Cliquez sur "Envoyer une invitation"
- Vous allez recevoir un email de confirmation afin de créer votre nouveau compte Arlo, suivez simplement la procédure.

> **Tip**
>
> Déconnectez-vous de "My Arlo", ouvrez une "fenêtre privée" sur votre navigateur ou utilisez un autre navigateur pour pouvoir créer votre deuxième compte Arlo.

## Configuration du plugin

- Retournez sur la page de configuration du plugin et entrez votre utilisateur (la nouvelle adresse email) et le mot de passe associé.
- Démarrez le démon (s'il ne démarre pas tout seul)

Si l'adresse email et le mot de passe sont correcte, le status devrait passer au vert et le plugin va commencer à synchroniser vos équipements précédemment partagés.

Sur cette page, il est aussi possible de configurer les règles de retentions des captures et des enregistrements, ces règles permettent au plugin de supprimer automatiquement les médias (sauvegardés localement) les plus anciens.

# Utilisation

Si le plugin est correctement configuré (cf. étape précédente), vous devriez voir la liste des équipements Arlo que vous avez partagé lors de la création du compte dédié au plugin.

Il n'est pas possible de créer manuellement un équipement. Les équipements sont créés ou mis à jour automatiquement par le plugin lors d'une synchronisation avec le système Arlo. Une synchronisation se fera automatiquement au minimum une fois par jour, si besoin il est possible de lancer une synchronisation manuellement via l'écran de gestion des équipement.

![Équipements](../images/devices.png "Équipements")

Le plugin ne supprimera jamais automatiquement un équipement; si vous ne disposez plus de l'équipement ou si vous avez supprimé les droits d'accès pour le plugin, il est recommandé de supprimer manuellement l'équipement correspondant dans Jeedom.
Si vous rajoutez un nouvel équipement ou si vous modifiez les modes via l'application Arlo, il est recommandé de faire une synchronisation manuelle afin de mettre à jour la configuration du plugin immédiatement; dans le cas contraire cela se fera lors de la prochaine synchronisation automatique.

> **Tip**
>
> Cela ne concerne évidement pas les valeurs des commandes comme le mode sélectionné ou la détection de mouvement ou de son qui sont mis à jour en temps réel.

Pour la plupart des équipements il n'y a pas de configuration spécifique, le nom de l'équipement sera celui défini dans le système Arlo, mais pensez à assigner le parent, la catégorie et à activer celui-ci.

Pour les équipements de type caméra, il est possible de configurer une commande action du plugin Mail ou Telegram. Si celle-ci est configurée, le plugin enverra un message, incluant la capture, dès qu'une nouvelle capture est disponible.

# Les équipements compatibles

Il est possible que certaines commandes spécifiques à certains modèles ne soient pas (encore) disponibles, dans ce cas veuillez me contacter via le forum pour plus d'information.

## La station de base pour Arlo pro, pro2, pro3 & ultra

La station de base dispose d'une commande action par mode défini: activé, désactivé et chaque mode personnalisé ainsi que d'une commande info indiquant le mode actif.

Le widget est celui par défaut de Jeedom:

![Station de base](../images/widget_basestation.png "Station de base")

> **Tip**
>
> En cas d'ajout d'une station de base, il est nécessaire de redémarrer le démon pour que les événements liés à cette station soient correctement reçus.

## La sirène (intégrée à la station de base)

Cet équipement possède simplement une commande "On" et "Off" ainsi qu'une info "Etat".

Le widget est également celui par défaut:

![Sirène](../images/widget_siren.png "Sirène")

## Les caméras

Les modèles suivant sont actuellement reconnu par le plugin:

- baby
- pro, pro2, pro3, ultra
- Go
- arlo Q

Les commandes suivantes sont disponibles sur tous les modèles:

- **Connexion**: indique si la connexion avec la caméra est opérationnelle
- **Activité**: donne une description de l'activité actuelle de la caméra
- **Active**: indique si la caméra est actuellement active
- **On**: Active la caméra, elle sera affectée par les changements de mode
- **Off**: Désactive la caméra, elle ne sera pas affectée par les changements de mode
- **Batterie**: niveau de batterie en %
- **Signal**:  force du signal (entre 0 et 4) avec la base pour les Arlo pro, pro2 et ultra et force du signal mobile pour les ArloGo
- **Chargement**: indique si la caméra est en cours de chargement
- **Détection de mouvement**: indique si la détection de mouvement est active
- **Détection de son**: indique si la détection de son est active
- **Mouvement détecté**: si du mouvement est détecté
- **Son détecté**: si du son est détecté
- **Dernière image**: URL (locale) vers la dernière image prise par la caméra
- **Prendre une capture**: permet de prendre une capture (sauvée localement) avec la caméra
- **Démarrer enregistrement**: permet de démarrer l'enregistrement de vidéo (sauvée localement)
- **Arrêter enregistrement**: permet de d'arrêter un enregistrement local
- **Démarrer enregistrement cloud**: permet de démarrer l'enregistrement dans le cloud Arlo
- **Arrêter enregistrement cloud**: permet de stopper l'enregistrement dans le cloud Arlo

Le widget possède quelques spécificités. En haut de gauche à droite vous verrez:

- la force du signal avec la station de base
- le niveau de la batterie
- l'indicateur de son, 3 états possible: détection désactivée, surveillance active, son détecté.
- l'indicateur de mouvement, à nouveau 3 états possible: détection désactivée, surveillance active, mouvement détecté.
- un bouton pour ouvrir la bibliothèque, dedans vous pourrez voir les captures et les enregistrements sauvegardés localement.

Ensuite est affiché la dernière image prise par la caméra, en cliquant sur celle-ci vous pourrez visionner le flux de la caméra quasi en temps réel (quelques secondes de décalages)

Et en dessous un bouton pour prendre une capture instantanée et démarrer l'enregistrement (local).

![Caméra](../images/widget_camera.png "Caméra")

### Caméras Arlo Q & Arlo Baby

En plus des commandes communes à toutes les caméras, les Arlo Q & Arlo Baby disposent d'une commande action par mode défini comme pour la station de base: activé, désactivé et chaque mode personnalisé ainsi que d'une commande info indiquant le mode actif.

> **Tip**
>
> En cas d'ajout d'une caméra Arlo Q ou Arlo Baby, il est nécessaire de redémarrer le démon pour que les événements liés soient correctement reçus.

### Caméras Arlo Go

En plus des commandes communes à toutes les caméras, les caméras Arlo Go disposent d'une commande action par mode défini comme pour la station de base: activé, désactivé et chaque mode personnalisé ainsi que d'une commande info indiquant le mode actif.

De plus, les commandes suivantes sont également disponibles:

- **Nom du réseau**: Donne le nom du réseau mobile
- **IP**: IP actuelle
- **Réseau actif**: indique le réseau actif actuel (wifi ou mobile)

> **Tip**
>
> En cas d'ajout d'une caméra Arlo Go, il est nécessaire de redémarrer le démon pour que les événements liés soient correctement reçus.

### Arlo Pro3 & Ultra

En plus des commandes communes à toutes les caméras, les caméras Arlo Pro3 et Arlo Ultra disposent de commandes pour contrôler l'état de la sirène intégrée.

## Arlo security bridge & light

Comme pour la station de base (cf. ci-dessus), l'équipement bridge dispose d'une commande action par mode défini: activé, désactivé et chaque mode personnalisé ainsi que d'une commande info indiquant le mode actif mais également une command info "IP" et une "Signal".

> **Tip**
>
> En cas d'ajout d'un Arlo Bridge, il est nécessaire de redémarrer le démon pour que les événements liés au Bridge (et à toutes les lights connectées à celui-ci) soient correctement reçus.

L'équipement "light" dispose lui des commandes suivantes:

- **Etat lampe**: Indique si la lampe est actuellement allumée ou éteinte.
- **Lampe On**: Pour allumer manuellement la lampe (pendant le délai par défaut configurée dans l'app Arlo)
- **Lampe Off**: Pour éteindre manuellement la lampe
- **Détection de mouvement**: indique si la détection de mouvement est active
- **Mouvement détecté**: si du mouvement est détecté
- **Connexion**: indique si la connexion est opérationnelle
- **Batterie**: niveau de batterie en %
- **Chargement**: indique si l'équipement est en cours de chargement

## Arlo Doorbell

La sonnette dispose des commandes suivantes:

- **Connexion**: indique si la connexion est opérationnelle
- **Batterie**: niveau de batterie en %
- **Signal**:  force du signal (entre 0 et 4) avec la station de base
- **Mouvement détecté**: si du mouvement est détecté
- **Bouton**: si le bouton de la sonnette a été utilisé (il restera actif pendant 1 min après le dernier appui)
- **Mode silencieux**: Indique si le mode silencieux est activé
- **Mode silencieux On**: Permet d'activer le mode silencieux
- **Mode silencieux Off**: Permet de désactiver le mode silencieux

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
