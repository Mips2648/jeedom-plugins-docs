---
layout: default
title: Documentation Arlo
lang: fr_FR
pluginId: arlo
---

# Description

Plugin permettant le contrôle des équipements de la gamme Arlo comme les caméras, la station de base et la sirène intégrée.
Il est possible de contrôler le mode, l'activation et désactivation des caméras, visualiser le flux live des caméras, déclencher des captures et des enregistrements vidéos, déclencher la sirène...

Tous les modèles actuels supportés par l'application Arlo (web ou mobile) sont supportés par le plugin: Arlo, Arlo Pro (toutes les versions), Ultra (toutes les versions), Arlo Floodlight, Arlo Essential, Arlo Q, Arlo Go, Arlo Baby, Arlo security bridge & light, Arlo Doorbell et Video Doorbell...

Voici un aperçu des possibilités du plugin:

- sélectionner le mode: Activé, désactivé ou planification mais aussi tous les modes personnalisés;
- activer / désactiver chaque caméra indépendamment l'une de l'autre (quelque soit le mode en cours);
- déclencher la sirène intégrée à la station de base (ou au Pro3 et Ultra) et connaître son statut;
- connaître le statut de chaque caméra:
  - connectée ou non
  - statut général (inactif, alerte, ...)
  - niveau de batterie (et si la charge est en cours)
  - force du signal
  - si la détection de son ou de mouvement est actif
  - si du son ou du mouvement est détecté
- effectuer une capture instantanée (stockée localement)
- effectuer un enregistrement (stocké localement)
- visualiser les captures et les vidéos prises
- lancer/arrêter un enregistrement stocké dans le cloud Arlo
- visualiser le streaming live de vos caméras
- contrôler la lampe intégrée sur les caméras compatible
- contrôler la sirène intégrée sur les caméras et bases compatibles

> **Important**
>
> Il n'est pas recommandé d'utiliser les caméras et sonnettes de la gamme Essentials ou Wire-free (donc toutes les caméras connectées directement via wifi) si aucune base n'est présente dans le système excepté si celles-ci sont alimentées en permanences (sur le courant ou via panneau solaire si ensoleillement suffisant) car leur batterie n'offre pas suffisamment d'autonomie. Si une base existe alors aucun problème.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

> **Important**
>
> La compatibilité avec les systèmes 32bits (Rasbian 32bits sur pi3) sera supprimée lors d'une prochaine version.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

# Configuration

Arlo n'autorise pas de connexions simultanées d'un utilisateur à plusieurs interface: si vous êtes connecté dans l'app sur un mobile, vous ne pourrez pas l'être sur un autre mobile en même temps ni sur l'interface web. Si vous vous connectez sur l'interface web par exemple vous serez automatiquement déconnecté de l'app mobile.
Le plugin se connecte au système Arlo comme un utilisateur standard et il sera donc soumis à la même contrainte.

Il est donc nécessaire de créer un utilisateur dédié au plugin, dans le cas contraire il ne fonctionnera pas correctement.

## Authentification en 2 étapes

Arlo impose progressivement l'utilisation de l'authentification en 2 étapes.

Avant de créer un nouvel utilisateur Arlo, il est important de connaître les informations suivantes:

- Le plugin gère celle-ci via email avec support IMAP uniquement, il faudra donc une boite mail avec un accès IMAP (il est parfois bloqué ou payant donc vérifiez avant) et ne supporte qu'une authentification par _nom d'utilisateur_/_mot de passe_; pas de MFA sur le mail!
- Le plugin doit avoir un accès direct à la boite mail de l’utilisateur Arlo, en effet le code pour le TFA est demandé par Arlo à chaque login! Donc si le démon doit redémarrer il doit pouvoir récupérer lui même le code.
- le plugin ne lira que le mail en provenance de "<do_not_reply@arlo.com>"; donc même s’il est recommandé d’avoir une boite mail dédié et pas un alias d’une boite existante, cela ne devrait pas être un problème; il notera les mails comme « lu » dans la boite une fois fait (et n’essaiera plus de les lire au prochain démarrage)
- le plugin ne cherchera que parmi les mails non lu de la journée en cours, par ordre chronologique inverse (du plus récent au plus ancien) et passera tous les mails envoyés avant son dernier login.
- la langue du mail n’a pas d’importance: la recherche du code TFA fonctionnera quelque soit la langue du mail.

> **Tip**
>
> Dorénavant pour pouvoir vous connecter sur une boite mail gmail (Google) ou Microsoft, vous devez créer un _mot de passe d’application_, qui n’imposera pas le MFA pour se connecter, l'activation de l'option "applications non sécurisées" n'étant plus permise.
> Plus de détails sur la procédure pour Google ici: <https://community.jeedom.com/t/google-applications-moins-securisees-mot-de-passe-dapplication/85617>.
> Pour les comptes Microsoft (outlook, hotmail...), lisez ceci <https://support.microsoft.com/en-us/account-billing/how-to-get-and-use-app-passwords-5896ed9b-4263-e681-128a-a6f2979a7944>

Après avoir créé une boite mail pour le plugin, vous pouvez passer à l'étape suivante.

## Création d'un utilisateur Arlo dédié au plugin

- Pour cela, ouvrez <https://my.arlo.com> ou ouvrez l'app mobile;
- Cliquez sur "Paramètres" en haut à droite;
![Paramètres Arlo](../images/settings.png "Paramètres Arlo")

- Cliquez sur "Autoriser l'accès" dans le menu de gauche puis sur "Ajouter" à droite.
![Accès Arlo](../images/access.png "Accès Arlo")

- Entrez les informations demandées y compris une nouvelle adresse email (un alias gmail en rajoutant +jeedom avant @gmail.com par exemple fonctionnera cependant pour l'authentification en 2 étapes je recommande d'utiliser une adresse mail dédié au plugin);
- **Sélectionnez les équipements Arlo** auxquels aura accès le plugin;
- **Activez l'option "Accorder des droits d'accès"** pour pouvoir changer de mode, démarrer un enregistrement, prendre des captures etc depuis Jeedom.
![Création compte Arlo](../images/create.png "Création compte Arlo")
- Cliquez sur "Envoyer une invitation"
- Vous allez recevoir un email de confirmation afin de créer votre nouveau compte Arlo, suivez simplement la procédure.

> **Tip**
>
> Déconnectez-vous de "My Arlo", ouvrez une "fenêtre privée" sur votre navigateur ou utilisez un autre navigateur pour pouvoir créer votre deuxième compte Arlo.

## Configuration du plugin

Sur la page de configuration du plugin:

- Entrez votre utilisateur (la nouvelle adresse email) et le mot de passe Arlo associé.
- Si vous avez activé l'authentification en 2 étapes, entrez l'adresse IMAP du serveur mail sous la forme _imap.server.com_ ainsi que le nom d'utilisateur et le mot de passe de la boite mail associée (ou le mot de passe applicatif dans le cas d'un compte gmail au lieu de votre mot de passe personnel) (pas nécessaire si TFA sur votre compte Arlo n'est pas actif)
- Démarrez le démon (s'il ne démarre pas tout seul)

Si les informations de connexions sont correctes, le statut devrait passer au vert et le plugin va commencer à synchroniser vos équipements précédemment partagés.

Sur cette page, il est aussi possible de configurer les règles de retentions des captures et des enregistrements, ces règles permettent au plugin de supprimer automatiquement les médias (sauvegardés localement) les plus anciens.

# Utilisation

Si le plugin est correctement configuré (cf. étape précédente), vous devriez voir la liste des équipements Arlo que vous avez partagés lors de la création du compte dédié au plugin.

Il n'est pas possible de créer manuellement un équipement. Les équipements sont créés ou mis à jour automatiquement par le plugin lors d'une synchronisation avec le système Arlo. Une synchronisation se fera automatiquement au minimum une fois par jour, si besoin il est possible de lancer une synchronisation manuellement via l'écran de gestion des équipement.

![Équipements](../images/devices.png "Équipements")

Le plugin ne supprimera jamais automatiquement un équipement; si vous ne disposez plus de l'équipement ou si vous avez supprimé les droits d'accès pour le plugin, il est recommandé de supprimer manuellement l'équipement correspondant dans Jeedom.
Si vous rajoutez un nouvel équipement ou si vous modifiez les modes via l'application Arlo, il est recommandé de faire une synchronisation manuelle afin de mettre à jour la configuration du plugin immédiatement; dans le cas contraire cela se fera lors de la prochaine synchronisation automatique.

> **Tip**
>
> Cela ne concerne évidement pas les valeurs des commandes comme le mode sélectionné ou la détection de mouvement ou de son qui sont mis à jour en temps réel.

Pour la plupart des équipements il n'y a pas de configuration spécifique, le nom de l'équipement sera celui défini dans le système Arlo, mais pensez à assigner le parent, la catégorie et à activer celui-ci.

Pour les équipements de type caméra, il est possible de configurer une commande action/message (beaucoup de plugins compatibles). Si celle-ci est configurée, le plugin enverra un message, incluant la capture, dès qu'une nouvelle capture est reçue.

# Les équipements

> **Important**
>
> Il n'est pas recommandé d'utiliser des équipements sur batterie (sauf si recharge régulière par exemple via panneau solaire si ensoleillement suffisant) et connectés directement au wifi si aucune base n'est présente dans le système car leur batterie n'offre pas suffisamment d'autonomie pour remonter les événements à Jeedom. Si une base existe alors aucun problème même si certains équipements sont connectés au wifi directement.

Il est possible que certaines commandes spécifiques à certains modèles ne soient pas (encore) disponibles, dans ce cas veuillez me contacter via le forum pour plus d'information.

> **Tip**
>
> En cas d'ajout d'un équipement (hub, caméra, sonnette...), il est nécessaire de redémarrer le démon pour le bon fonctionnement sous Jeedom.

## Changement de mode

Selon votre installation et la configuration de votre compte sur Arlo vous avez la possibilité de choisir le mode de fonctionnement de vos équipements qui contrôle si ceux-ci vont détecter le son et/ou les mouvements ou s'ils sont désactivés.

Il semble que pour les comptes créés jusque fin 2023, ceci est possible sur chaque équipements de type base/hub, c'est-à-dire: les bases, les caméras ou sonnettes autonomes comme Arlo Go, Arlo Q, Arlo Baby, Essential...
Chacun de ces équipements disposent une commande action par mode défini: activé, désactivé et chaque mode personnalisé ainsi que d'une commande info indiquant le mode actif.

Certains utilisateurs, à priori ceux ayant créés leur compte à partir de fin 2023, auront un équipement supplémentaire de type "emplacement" que vous avez également configuré dans votre app Arlo.
Comme pour les équipements ci-dessus, une commande action par mode existant sera disponible. Si vous êtes dans ce cas, il ne sert à rien de modifier les modes sur les équipements, seul le mode de cet équipement "emplacement" est pris en compte et c'est donc celui-ci qui doit être utilisé.

## Sirène

Les équipements disposant d'une sirène intégrée (Hub, Essential, Pro, Ultra...) disposent des commandes suivantes permettant le contrôle de celle-ci:

- **Etat Sirène**: Indique si la sirène est active
- **Sirène On**: Pour déclencher manuellement la sirène
- **Sirène Off**: Pour couper la sirène

## Lampe

Les équipements disposant d'un éclairage intégré (Essential, Pro, Floodlight, Ultra...) disposent des commandes suivantes pour contrôler l'état de l'éclairage:

- **Etat lampe**: Indique si la lampe est actuellement allumée ou éteinte
- **Lampe On**: Pour allumer manuellement la lampe (pendant le délai par défaut configurée dans l'app Arlo)
- **Lampe Off**: Pour éteindre manuellement la lampe

## Les caméras

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
- **Dernière image**: chemin (locale) vers la dernière image prise par la caméra
- **URL dernière capture**: URL (locale) vers la dernière image prise par la caméra
- **Prendre une capture**: permet de prendre une capture (sauvée localement) avec la caméra
- **Envoyer une capture**: permet d'envoyer une capture (qui sera sauvée en local) depuis un scénario en choisissant la commande de notification à utiliser
- **Envoyer un enregistrement**: permet d'envoyer un enregistrement vidéo (qui sera sauvé en local) depuis un scénario en choisissant la commande de notification à utiliser
- **Démarrer enregistrement**: permet de démarrer l'enregistrement de vidéo (sauvée localement)
- **Arrêter enregistrement**: permet de d'arrêter un enregistrement local
- **Démarrer enregistrement cloud**: permet de démarrer l'enregistrement dans le cloud Arlo
- **Arrêter enregistrement cloud**: permet de stopper l'enregistrement dans le cloud Arlo

Le widget possède quelques spécificités. En haut de gauche à droite vous verrez:

- la force du signal avec la station de base
- le niveau de la batterie
- l'indicateur de son, 3 états possible: détection désactivée, surveillance active, son détecté.
- l'indicateur de mouvement, à nouveau 3 états possible: détection désactivée, surveillance active, mouvement détecté.
- un bouton pour ouvrir la bibliothèque dans laquelle vous pourrez visualiser les captures et les enregistrements sauvegardés localement.

Ensuite est affichée la dernière image prise par la caméra, en cliquant sur celle-ci vous pourrez visionner le flux de la caméra quasi en temps réel (quelques secondes de décalages)

Et en dessous un bouton pour prendre une capture instantanée et démarrer l'enregistrement (local).

![Caméra](../images/widget_camera.png "Caméra")

## Arlo Baby

L'intégration de la Arlo Baby est complète, il est possible de gérer entièrement la caméra et toutes ses fonctions depuis le plugin: la veilleuse, la berceuse et de récupérer les informations des capteurs de qualité de l'air.

Voici un aperçu des commandes disponibles:

- **IP**: l'adresse IP de la caméra
- **Luminosité**: luminosité de la pièce
- **Température**: température de la pièce
- **Humidité**: en pourcent
- **Qualité d'air**: en pourcent; moins de 30% étant "normal", de 30% à 65% étant "anormal" et plus de 65% étant "Très anormale" (selon la documentation d'Arlo)
- **Veilleuse**: Indique si la lampe de la veilleuse est actuellement allumée ou éteinte.
- **Veilleuse On** et **Veilleuse Off**: pour allumer et éteindre la veilleuse
- **Mode veilleuse**: les modes possibles sont: _Blanc_, _Couleur_, _Jeu de lumière_
- **Luminosité veilleuse**: commandes info et action et pour changer la luminosité de la veilleuse
- **Couleur veilleuse**: commandes info et action et pour changer la couleur de la veilleuse (en mode _Couleur_)
- **Température couleur**: commandes info et action et pour changer la température de la couleur (en mode _Blanc_), valeur entre 2500K et 9000K
- **Minuterie veilleuse**: commandes info et action pour définir la minuterie ainsi que connaître la durée restante (à la minute) avant l'extinction automatique de la veilleuse
- **Lecture**: une commande binaire et une commande string donnant le statut de lecture de la berceuse
- **Play**, **Pause**, **Suivant**: commande permettant d'agir sur le statut de lecture
- **Piste**: donne la piste sélectionnée et **Liste de lecture** donne la liste des pistes disponibles
- **Répétition**: commandes info et action pour activer et désactiver le mode répétition: lecture en continu ou d'une seule piste
- **Aléatoire**: commandes info et action pour activer et désactiver le mode aléatoire
- **Volume**: permet de connaître et changer le volume de la berceuse (en %)
- **Minuterie berceuse**: commandes info et action pour définir la minuterie ainsi que connaître la durée restante (à la minute) avant l'extinction automatique de la berceuse

## Arlo Go

Sur la Arlo GO, les commandes suivantes sont également disponibles:

- **Nom du réseau**: Donne le nom du réseau mobile
- **IP**: l'adresse IP actuelle
- **Réseau actif**: indique le réseau actif actuel (wifi ou mobile)

## Arlo security bridge & light

L'équipement "light" dispose des commandes suivantes:

- **Etat lampe**: Indique si la lampe est actuellement allumée ou éteinte
- **Lampe On**: Pour allumer manuellement la lampe (pendant le délai par défaut configurée dans l'app Arlo)
- **Lampe Off**: Pour éteindre manuellement la lampe
- **Détection de mouvement**: indique si la détection de mouvement est active
- **Mouvement détecté**: si du mouvement est détecté
- **Connexion**: indique si la connexion est opérationnelle
- **Batterie**: niveau de batterie en %
- **Chargement**: indique si l'équipement est en cours de chargement

## Arlo Doorbell et Video Doorbell

La sonnette dispose des commandes suivantes:

- **Connexion**: indique si la connexion est opérationnelle
- **Batterie**: niveau de batterie en %
- **Signal**:  force du signal (entre 0 et 4) avec la station de base
- **Mouvement détecté**: si du mouvement est détecté
- **Bouton**: si le bouton de la sonnette a été utilisé (il restera actif pendant 1 min après le dernier appui)
- **Mode silencieux**: Indique si le mode silencieux est activé
- **Mode silencieux On**: Permet d'activer le mode silencieux
- **Mode silencieux Off**: Permet de désactiver le mode silencieux

### Arlo Video Doorbell

En plus des commandes ci-dessus, la Video Doorbell dispose de quelques commandes communes aux caméras:

- **Activité**: donne une description de l'activité actuelle de la caméra
- **Chargement**: indique si la caméra est en cours de chargement
- **Mouvement détecté**: si du mouvement est détecté
- **Dernière image**: URL (locale) vers la dernière image prise par la caméra
- **Prendre une capture**: permet de prendre une capture (sauvée localement) avec la caméra
- **Démarrer enregistrement**: permet de démarrer l'enregistrement de vidéo (sauvée localement)
- **Arrêter enregistrement**: permet de d'arrêter un enregistrement local
- **Démarrer enregistrement cloud**: permet de démarrer l'enregistrement dans le cloud Arlo
- **Arrêter enregistrement cloud**: permet de stopper l'enregistrement dans le cloud Arlo

# Visualisation du flux vidéo des caméras - live streaming

En cliquant sur la vignette de sur le widget, vous pouvez lancer le flux de la caméra.
La vidéo s'ouvrira dans une nouvelle fenêtre et il est évidement possible de passer en plein écran:

![Flux](../images/streaming.png "Flux")

C'est un flux vidéo en continu, la caméra et le flux se couperont à la fermeture de la fenêtre.

# La bibliothèque

Lorsqu'un enregistrement vidéo local est effectué ou lorsqu'une capture est prise par le plugin ou reçue depuis Arlo en cas de détection de mouvement celles-ci sont consultables via l'outils bibliothèque de chaque caméra.

![Bibliothèque](../images/media_library.png "Bibliothèque")

Dans cet écran présentant un aperçu des captures et vidéos prises, vous pouvez supprimer directement et définitivement les fichiers si vous le souhaitez, sinon le plugin s'en chargera automatiquement suivant les règles définies dans la configuration.
Vous pouvez également cliquer sur les captures pour les visualiser dans une fenêtre plus grande ou sur les vidéos pour lancer la lecture.

# Intégration avec Jeedom Connect

Il est possible d'utiliser le widget caméra de [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) pour intégrer les caméras Arlo avec cette application mobile.

Pour cela, je conseille la configuration suivante:

![Jeedom Connect](../images/jeedomConnect.png "Jeedom Connect")

- la commande **URL dernière capture** de la caméra (celle qui retourne une info texte commençant par http pointant sur votre Jeedom, pas celle donnant l'image Arlo) pour la config _Commande Url Snapshot_ du widget
- les commandes **Démarrer enregistrement**, **Arrêter enregistrement** et **Enregistrement** pour les configs _Enregistrer_, _Arrêter enregistrement_ et _Info Enregistrement_ du widget
- Dans la config _Dossier des enregistrements_, vous devez y copier le chemin affiché dans la page de configuration de la caméra Arlo comme visible sur cette capture:

![Dossier des enregistrements](../images/config_recordspath.png "Dossier des enregistrements")

Vous pouvez utiliser le petit bouton "copier" à droite du chemin pour copier celui-ci dans le presse papier et vous n'avez plus qu'à coller l'information dans la configuration du widget sur Jeedom Connect

Actuellement, il est impossible de consulter le flux vidéo en live depuis l'application Jeedom Connect.

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
