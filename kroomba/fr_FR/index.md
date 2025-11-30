---
layout: default
title: Documentation iRobot
lang: fr_FR
pluginId: kroomba
---

# Description

Plugin permettant de piloter exclusivement en local les robots aspirateurs et laveurs de sols de la marque iRobot.

Le plugin a été testé avec succès sur beaucoup de modèles différents et la plupart des modèles wifi de la marque devraient être supportés, si vous avez un doute, testez par vous-même et vous serez fixé!
Ce plugin ne fonctionne pas avec les anciens modèles d'aspirateurs robot Roomba munis d'une extension matérielle (type RooWifi ou Thinking Cleaner), il ne fonctionne qu'avec les modèles récents dotés d'une liaison Wifi.

Ce plugin permet la détection et l'appairage automatique des robots Roomba & Braava sur le réseau local, de remonter diverses informations sur l'état du robot (statut, info bac plein, info réservoir...) ainsi que de piloter le robot (Démarrer, Arrêter, Retour à la base...)

Il comporte un Widget desktop.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Lors de l'installation des dépendances, le plugin *MQTT Manager* a normalement été installé automatiquement s'il ne l'était pas encore. Dans le cas contraire, veuillez installer ce plugin manuellement via le market Jeedom (plugin officiel gratuit)
Ensuite, il faudra éventuellement le configurer (voir documentation du plugin *MQTT Manager*, dans la plupart des cas les options par défaut conviendront parfaitement)

> **Tip**
>
> Si vous avez déjà un broker MQTT installé, il est malgré tout nécessaire d'installer le plugin *MQTT Manager* mais prenez soin de le configurer en mode *broker distant* en renseignant les paramètres de votre broker actuel.

# Configuration du plugin

Dans la page de configuration du plugin, vous pouvez modifier les options suivantes:

- Le topic de base sous lequel le plugin va publier les informations. Par défaut le plugin publiera sous le topic *iRobot*; vous n'avez pas besoin de le modifier si cela vous convient
- Le port d'écoute du démon du plugin. Ne modifiez cette valeur que si vous comprenez le fonctionnement et uniquement si vous avez un conflit avec un autre plugin.

Si les dépendances ont bien été installées et que le plugin *MQTT Manager* est démarré et fonctionnel, vous pouvez lancer le démon.

# Découverte et création des équipements (les robots)

Avant de commencer:

- S'assurer que le robot est correctement paramétré sur le réseau local et joignable depuis Jeedom (en principe sur le même réseau local) (procédure via l'application iRobot);
- Couper toute application iRobot sur Android ou iOS. Attention : l'utilisation simultanée de l'application iRobot peut provoquer des blocages de communication entre le plugin et le robot;
- S'assurer que le robot est sur sa base et n'est pas "endormi" (appuyez brièvement sur "Clean" pour le réveiller si nécessaire).

Depuis la page de configuration des équipements, cliquez sur le bouton *Découverte*. Il existe deux méthodes pour découvrir vos robots et récupérer le mot de passe nécessaire au plugin pour qu'il puisse ensuite contrôler le robot en local:

- Via le cloud, *uniquement pour la synchronisation initiale*: Saisissez l'adresse e-mail et le mot de passe de votre compte iRobot afin que le plugin se connecte au cloud pour récupérer la liste des robots configurés et leur mot de passe.
- En local, *ne fonctionne pas avec tous les modèles*: Assurez-vous que les robots à découvrir sont sur la base de recharge et allumés (voyant vert allumé). Ensuite, appuyez et maintenez le bouton HOME de votre robot jusqu'à ce qu'il émette une série de tonalités (environ 2 secondes). Relâchez le bouton et le voyant WIFI devrait clignoter.

> **Tip**
>
> Le mode cloud ne concerne que la découverte du robot. Une fois découvert, le contrôle du robot s'effectuera en local dans tous les cas.

Vous pouvez éventuellement renseigner l'adresse IP du robot, c'est utile **et nécessaire** si le robot ne se trouve pas sur le même sous-réseau que Jeedom car le processus de découverte utilise un message broadcast pour trouver les robots.

![Découverte](../images/discovery.png "Découverte")

Ensuite attendez cela prend entre 15 et 30 secondes, vous verrez des notifications à l'écran et le démon se reconnectera tout seul à la fin du processus si cela a réussi. L’équipement sera ensuite créé (vous pouvez surveiller l’avancement via le log si nécessaire).

> **Tip**
>
> Lorsque la procédure de découverte est terminée, vous pouvez à nouveau utiliser votre application mobile iRobot si nécessaire.

# Nettoyage par pièce ou par zone

Lors de la découverte du robot, les commandes de bases correspondantes au robot seront créées. Vous aurez une commande **Démarrer** qui permet de lancer un nettoyage complet, de toutes les pièces. Le plugin permet également de lancer le nettoyage d'une pièce ou d'une zone spécifique (sur les modèles compatibles).

Pour cela il y a quelques étapes à suivre afin que les commandes correspondantes soient créées sur l'équipement:

Il faut donc:

- avoir créé les pièces ou zones dans l'application officielle;
- que la connexion entre le plugin et le robot soit opérationnelle (démon démarré, que les informationss remontent sur Jeedom...);
- depuis l'application officielle, lancez une première fois le nettoyage dans la pièce ou la zone voulue et dans les secondes qui suivent, le plugin devrait détecter la nouvelle région et créera une commande action correspondante sur l'équipement correspondant au robot;
- optionnel: vous pouvez renvoyer le robot sur la base;
- pour l'instant il est impossible de remonter le nom de la région automatiquement, la commande aura donc un nom obscur mais vous pouvez la renommer comme bon vous semble. Faites-le maintenant avant de lancer une nouvelle tâche pour détecter la pièce suivante sinon vous ne saurez plus quelle commande correspond à quelle pièce.

A présent vous pouvez utiliser ces commandes comme tout autre commande Jeedom (il ne faut pas utiliser la commande **Démarrer** en plus).

Il arrive que les identifiants des cartes soient modifiés par iRobot (probablement dès qu'une modification de la carte est effectuée). Lorsque cela se produit il faut relancer un nettoyage manuel de la pièce pour que le plugin mette à jour la commande.

# Liste des états connus et correspondance sur le widget

| Valeur commande *Etat*                         | Signification      |
|------------------------------------------------|--------------------|
| *Charging* et *Recharging*                     | *En charge*        |
| *Docking - End Mission* et *Mission Completed* | *Tâche achevée*    |
| *Docking* et *User Docking*                    | *Retour à la base* |
| *Paused*                                       | *Mis en pause*     |
| *Running*                                      | *Nettoyage*        |
| *Stopped*                                      | *Arrêté*           |
| *Stuck* et *Base Unplugged*                    | *Bloqué*           |

# Historique

Ce plugin a été initialement créé par @kavod (Brice Grichy).
Le plugin a ensuite été repris par @vedrine

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

# Vous aimez le plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
