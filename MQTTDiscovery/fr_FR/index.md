---
layout: default
title: Documentation MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Description

Plugin pour découverte automatique d'équipement MQTT.

Le plugin se base sur le principe du "MQTT Auto Discovery" qui existe sous Home Assistant afin de créer automatiquement des équipements et leurs commandes sous Jeedom. Donc si vous avez des appareils qui sont connectés via MQTT et que ceux-ci publient les infos nécessaires pour la compatibilité "MQTT Auto Discovery", ceux-ci seront automatiquement reconnus et intégrés à Jeedom. Il n'est évidement inutile d'installer Home Assistant, Jeedom suffit.

Cela permet d'utiliser l'excellent projet [Open MQTT Gateway](https://docs.openmqttgateway.com/) sur esp32 qui gère [un nombre important d'équipements](https://compatible.openmqttgateway.com/index.php/devices/) ou l'équivalent [Theengs Gateway](https://gateway.theengs.io/) sur pi par exemple, tout ces équipements seront automatiquement supportés sous Jeedom via le plugin, avec la gestion automatique "multi-antenne". Il devient très facile de faire de la gestion de présence de tag Bluetooth tel que les nuts.

Mais donc cela ne se limite pas à ça puisque tous les équipements compatibles "MQTT Auto Discovery" seront gérables via le plugin. Par exemple, ce plugin a été testé avec succès avec zwavejs-ui et zigbee2mqtt.

> **Important**
>
> Ce plugin n'a pas vocation à remplacer des plugins de protocoles dédiés à zwavejs-ui et zigbee2mqtt par exemple; les plugins existants sur le market géreront bien mieux ces protocoles sous Jeedom.
> Aucune options spécifiques ne sera développée pour gérer plus en détail ceux-ci, ce n'est pas le but du plugin qui implémente uniquement la découverte automatique.
> Les tests effectués avec ces zwavejs-ui et zigbee2mqtt sont réalisés uniquement parce que cela me permet de valider à grande échelle le comportement du plugin mais absolument pas pour gérer les spécificités de ces protocoles.
> Donc ce plugin peut évidement être utilisé pour créer facilement les équipements nécessaires à ces protocoles mais uniquement dans le cadre d'une utilisation en mode avancée, en sachant que vous gérer absolument tout le reste avec les outils mis à disposition par ces programmes.

# Compatibilité

## Est-ce que ce plugin va fonctionner pour mon cas?

Pour le savoir, vérifiez dans la documentation du matériel, programme ou passerelle que vous voulez utiliser s'il est fait mention de "MQTT Discovery" pour Home Assistant (encore une fois pas besoin d'avoir installé Home Assistant).

Un autre moyen est de vous connecter à votre broker à l'aide de MQTT Explorer (par exemple) et de regarder si vous voyez un topic `homeassistant`. Si oui, vous devriez repérer des infos qui concernent votre matériel dans les sous-topics de celui-ci. En cas de doute, vous pouvez toujours poser la question sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

## Liste des intégrations possibles connues

Cette liste est loin d'être exhaustive, cela serait impossible tellement il en existe. Cependant cela peut donner des idées

- [Open MQTT Gateway](https://docs.openmqttgateway.com/)
- [Theengs Gateway](https://gateway.theengs.io/)
- [MyFox2MQTT](https://github.com/Minims/MyFox2MQTT)
- Nuki Smart lock pro (option à activer dans la configuration de la serrure)
- [zwave-js-ui](https://zwave-js.github.io/zwave-js-ui/#/)
- [zigbee2mqtt](https://www.zigbee2mqtt.io/)

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

Vous devez avoir déjà installé un broker MQTT, soit par vous-même, soit par l'intermédiaire d'un autre plugin Jeedom.

Si le plugin *MQTT Manager (mqtt2)* est installé, la configuration pour se connecter au broker géré par ce plugin pourra être récupérée automatiquement.

# Configuration du plugin

> **Important**
>
> Après chaque changement de configuration, il est nécessaire de redémarrer le démon pour que les changements soient pris en compte.

## Accès au broker MQTT

Il faut configurer l'adresse IP du broker, le port, un nom d'utilisateur et son mot de passe.
Si le plugin *MQTT Manager (mqtt2)* est installé, vous verrez un bouton pour effectuer cette configuration automatiquement.

## Auto-découverte

La première option permet de créer automatiquement les équipements qui seront découverts. Cela peut être très pratique si vous avez beaucoup d'équipements mais cela va potentiellement créer beaucoup d'équipements, y compris peut-être des équipements dont vous n'avez pas besoin donc à utiliser avec parcimonie.
Il existe une autre option pour choisir manuellement les équipements à créer (la création sera ensuite automatique), voir le paragraphe sur la configuration des équipements pour plus de détails.

![discovery_config](../images/discovery_config.png)

Le topic contenant les config des équipements à découvrir, par défaut `homeassistant`, peut éventuellement être modifié si nécessaire.

> **Important**
>
> Ne modifiez pas la configuration du topic racine de découverte sans savoir, en principe vous n'aurez jamais besoin de modifier cela.

Il faudra ensuite configurer la liste des topics racines pour lesquels vous voulez remonter les équipements. Par exemple, pour les équipements gérés par *Open MQTT Gateway* ou *Theengs Gateway* cela sera le topic `home` par défaut.

> **Important**
>
> Le nom du topic est sensible à la casse, faites attention de configurer le nom en tenant compte des majuscules et minuscules.

Après le premier démarrage du démon et donc après la première séance de découverte, vous verrez également la liste des topics possibles mais non-configurés que le démon a trouvé, il est possible des les ajouter directement.

Donc si vous ne savez pas exactement ce qu'il faut configurer:

- démarrez le démon
- attendez 1 minute
- actualisez la page si cela n'a pas été fait
- une liste de topic possible vous sera proposé => ajoutez celui qui concerne vos appareils

exemple, le plugin me propose le topic *zwave* que je peux ajouter simplement en cliquant sur le "+" (ne pas oublier de *Sauvegarder* et *(Re)Démarrer* le démon lorsque vous avez fini):

![topic_config](../images/topic_config.png)

## Démon

Pour finir, vous pouvez configurer les infos suivantes (optionnelles):

- *Cycle* définit la fréquence d'envoi, en secondes, des informations vers Jeedom: une valeur numérique entre `0.5` et `10`
- *Port socket interne* définit le port sur lequel écoute le démon. Ne changez pas cette valeur sans avoir posé la question sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

> **Important**
>
> Ne modifiez pas ces informations dans un premier temps, en principe ce n'est pas nécessaire.

# Gestion des équipements

Le plugin se trouve dans le menu Plugins → Protocole domotique.

Sur la partie haute, vous verrez le panneau de gestion, comme sur tous plugins Jeedom

![devices_panel](../images/devices_panel.png)

Le premier bouton vous permet de lister les équipements découverts mais pas encore créés (si l'auto-création n'était pas active au moment de leur découverte). Cela laisse le choix de sélectionner manuellement les équipements à créer (la création de l'équipement et de ses commandes reste automatique).

En cliquant sur ce bouton, une nouvelle fenêtre va s'ouvrir:

![devices_discovered](../images/devices_discovered.png)

Il suffit de cliquer sur le bouton "Ajouter" de l'équipement voulu et ensuite de cliquer sur le bouton "Fermer et terminer la création des équipements nouvellement ajoutés" pour que l'équipement et ses commandes soient créés.

Le dernier bouton vous permet de visualiser le statut de la création automatique et de l'activer ou la désactiver directement depuis cette page, il s'agit de la même configuration que celle visible dans la configuration du plugin.

Dans le cas où la création automatique est active, le plugin créera les équipements et les commandes manquantes automatiquement dès qu'il recevra les informations sur le topic de découverte (par défaut `homeassistant`).

> **Important**
>
> La création automatique ne sera effectuée que pour les **nouveaux** équipements découverts après l'activation de l'option ou après un redémarrage du démon.
> Un équipement découvert lorsque l'option de création automatique était désactivée ne sera pas automatiquement créé (sauf si le démon est redémarré) mais il est évidement possible de l'ajouter "manuellement".

# Configuration des équipements

Il n'y a aucune configuration spécifique dans la plupart des cas exceptés pour les équipements disposant d'une info *rssi* (typiquement les équipements Bluetooth). Pour ceux là, il y aura une commande supplémentaire *Présent* et il sera possible de définir dans la configuration de l'équipement la durée (en secondes) avant de considérer l'équipement comme absent; cela sera particulièrement utile pour les "trackers" tels que les nuts.

Dans la liste des commandes, vous verrez le topic MQTT correspondant ainsi que la valeur du json si relevant. Il est possible d'encoder un path s'il faut aller chercher une valeur dans un sous noeud.
En principe vous n'aurez pas à modifier ces configurations, elles sont accessibles uniquement pour gérer les cas limites si le plugin n'a pas effectué la configuration automatiquement.

# Fonctionnement de la découverte automatique

La découverte automatique va publier les configurations de ce qui s'appellent des *composants*/*Entité*, chaque composant correspond à une catégorie, un type de commande. Par exemple: *sensor*, *switch*, *light*, *button*...

Le plugin lit ces configurations et pour chaque composant va créer la ou les commandes Jeedom correspondantes, chacune sous leur équipement respectif.

Lorsque tout vos équipements ont été découvert, vous pouvez désactiver la découverte pour éviter que le plugin ne créé des équipements que vous ne voulez pas.

## Composant pris en charge

Tous les composants ne sont pas encore entièrement ni complètement intégré. Si votre matériel a besoin du support d'un composant qui n'est pas encore reconnu, n'hésitez pas à un faire la demande en créant un post sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

- alarm_control_panel
- binary_sensor
- button
- cover
- light
  - brightness
- number
- sensor
- switch
- text

# Détections de devices Bluetooth

Un des premiers objectifs de ce plugin est de pouvoir remonter facilement les infos d'appareils Bluetooth compatibles qui seront captés par des antennes exécutant *Open MQTT Gateway* ou *Theengs Gateway*. Dans les deux cas, il faudra installer l'outils et le configurer pour se connecter au même broker Mosquitto que celui utilisé par le plugin.

## Installation de Open MQTT Gateway

Tout est déjà expliqué en détail ici: <https://docs.openmqttgateway.com/>.

Vous trouverez également de l'aide sur [community]({{site.forum}}).

## Installation de Theengs Gateway

Toutes les explications nécessaires pour installer une antenne manuellement sont disponibles ici: <https://gateway.theengs.io/install/install.html>.

Vous pouvez également utiliser le plugin <a href="{{site.market}}/index.php?v=d&plugin_id=4441" target="_blank">Theengs Gateway</a> disponible sur le market qui permet de simplifier la tâche, voir [Documentation]({{site.baseurl}}/tgw/{{page.lang}})

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
