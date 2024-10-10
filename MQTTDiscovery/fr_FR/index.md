---
layout: default
title: Documentation MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Description

**MQTT Discovery** permet la découverte automatique d'équipements grâce au protocol "MQTT Discovery", aussi appelé "HA Discovery".

Il se base sur le principe du "MQTT Auto Discovery" qui existe sous Home Assistant afin de créer automatiquement des équipements et leurs commandes sous Jeedom. Donc si vous avez des appareils qui sont connectés via MQTT et que ceux-ci publient les infos nécessaires pour la compatibilité "MQTT Auto Discovery", ceux-ci seront automatiquement reconnus et intégrés à Jeedom. Il est évidemment inutile d'installer Home Assistant, Jeedom suffit.

Cela permet par exemple d'utiliser l'excellent projet [Open MQTT Gateway](https://docs.openmqttgateway.com/) sur esp32 qui gère [un nombre important d'équipements](https://decoder.theengs.io/devices/devices.html) ou l'équivalent [Theengs Gateway](https://gateway.theengs.io/) sur pi par exemple, tout ces équipements seront automatiquement supportés sous Jeedom via **MQTT Discovery**, avec la gestion automatique "multi-antenne". Il devient très facile de faire de la gestion de présence de tag Bluetooth tel que les nuts ou tiles.

Mais cela ne se limite pas aux équipements Bluetooth puisque tous les équipements compatibles "MQTT Auto Discovery" seront reconnus et utilisables. Par exemple, ce plugin a été testé avec succès avec zwavejs-ui et zigbee2mqtt.

> **Important**
>
> **MQTT Discovery** n'a pas vocation à remplacer des plugins de protocoles dédiés à zwavejs-ui et zigbee2mqtt par exemple; les plugins existants sur le market géreront bien mieux ces protocoles sous Jeedom.
> Aucune option spécifique ne sera développée pour gérer plus en détails ceux-ci, ce n'est pas le but du plugin qui implémente uniquement la découverte automatique.
> Donc **MQTT Discovery** peut évidemment être utilisé pour créer automatiquement les équipements nécessaires (comme on le ferait avec une autre intégration MQTT mais plus facilement) mais uniquement dans le cadre d'une utilisation en mode "avancé", en sachant que vous gérez tout le reste avec les outils mis à disposition par ces deux programmes.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Compatibilité

## Est-ce que MQTT Discovery va fonctionner dans mon cas?

Pour le savoir, vérifiez dans la documentation de votre matériel, programme ou passerelle que vous voulez utiliser s'il est fait mention de "MQTT Discovery" ou "HA Discovery" pour Home Assistant (encore une fois pas besoin d'avoir installé Home Assistant).

Un autre moyen est de vous connecter à votre broker à l'aide de MQTT Explorer (par exemple) et de regarder si vous voyez un topic `homeassistant`. Si oui, vous devriez repérer des infos qui concernent votre matériel dans les sous-topics de celui-ci. En cas de doute, vous pouvez toujours poser la question sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

## Liste des intégrations possibles connues

Cette liste est loin d'être exhaustive, cela serait impossible tellement il en existe. Cependant cela peut donner des idées:

- [MG iSMART](https://github.com/SAIC-iSmart-API/saic-python-mqtt-gateway), voir ce [tutoriel sur community](https://community.jeedom.com/t/tuto-integrer-sa-mg-dans-jeedom/118686)
- [MyFox2MQTT](https://github.com/Minims/MyFox2MQTT), voir [explication sur community](https://community.jeedom.com/t/myfox-et-jedom-4-4/111828/14)
- [Nuki Smart Lock Pro (3 & 4)](https://support.nuki.io/hc/fr/articles/12947926779409-MQTT-support)
- [Open MQTT Gateway](https://docs.openmqttgateway.com/): passerelle Bluetooth sur ESP
- [Sonos2mqtt](https://sonos2mqtt.svrooij.io/), [voir sur community](https://community.jeedom.com/t/sonos2mqtt/119216)
- [Theengs Gateway](https://gateway.theengs.io/): passerelle Bluetooth sous Debian, voir ce [tutoriel sur community](https://community.jeedom.com/t/migration-de-blea-vers-mqttdiscovery-et-tgw/115358)
- [tydom2mqtt](https://fmartinou.github.io/tydom2mqtt/#/introduction/)
- [zigbee2mqtt](https://www.zigbee2mqtt.io/)
- [zwave-js-ui](https://zwave-js.github.io/zwave-js-ui/#/)

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

Vous devez avoir déjà installé un broker MQTT, soit par vous-même, soit par l'intermédiaire d'un autre plugin Jeedom.

Le plugin *MQTT Manager (mqtt2)* n'est pas requis mais s'il est installé, la configuration pour se connecter au broker pourra être récupérée automatiquement.

# Configuration du plugin

> **Important**
>
> Après chaque changement de configuration, il est nécessaire de redémarrer le démon pour que les changements soient pris en compte.

## Accès au broker MQTT

Il faut configurer l'adresse IP du broker, le port, un nom d'utilisateur et son mot de passe.
Si le plugin *MQTT Manager (mqtt2)* est installé, vous verrez un bouton pour effectuer cette configuration automatiquement.

> **Tip**
>
> Il n'est absolument pas nécessaire d'avoir installé ni de garder *MQTT Manager (mqtt2)*. **MQTT Discovery** ne dépend pas de *MQTT Manager (mqtt2)*, les messages ne transitent jamais via ce plugin. **MQTT Discovery** n'a aucun impact sur la configuration de *MQTT Manager (mqtt2)* et réciproquement.
>
> Cette fonctionnalité n'est présente que pour vous éviter de devoir remplir manuellement les informations de connexion.

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
- une liste de topic possible vous sera proposée => ajoutez celui qui concerne vos appareils

exemple, le plugin me propose le topic *zwave* que je peux ajouter simplement en cliquant sur le "+" (ne pas oublier de *Sauvegarder* et *(Re)Démarrer* le démon lorsque vous avez fini):

![topic_config](../images/topic_config.png)

La dernière option permet de lister les équipements inconnus qui publient sur un des topics racines configurés.
Si un équipement inconnu est ajouté (voir **Gestion des équipements** pour savoir comment), seule la gestion de présence sera possible; cela n'a donc d'intérêt que pour les équipements Bluetooth en principe et cela permet d'utiliser un tracker Bluetooth même s'il n'est pas décodée par *Open MQTT Gateway* ou *Theengs Gateway*.

## Démon

Pour finir, vous pouvez configurer les infos suivantes (optionnelles):

- *Cycle* définit la fréquence d'envoi, en secondes, des informations vers Jeedom: une valeur numérique entre `0.5` et `10`
- *Port socket interne* définit le port sur lequel écoute le démon. Ne changez pas cette valeur sans avoir posé la question sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

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

Dans cet écran vous pouvez aussi visualiser l'ensemble de la configuration d'un appareil et aussi supprimer celui-ci de la liste si vous n'en avez pas besoin. Attention cette action supprime également l'information sur votre broker mqtt.

Le second bouton sur le bandeau de gestion, nommé "Equipements inconnus", ne sera visible que si vous avez activez l'option correspondante (voir **Configuration du plugin**) et il permet l'accès à un écran très similaire au précédent sauf qu'il n'y a pas de configuration.

![devices_discovered](../images/devices_unknown.png)

Lorsque vous avez ajouté un des équipements "inconnus" depuis cet écran, les commandes ne seront pas immédiatement créées. Il faudra attendre quelques secondes voir minutes que celui-ci émette une information afin que le plugin crée la commande correspondante.

Le bouton suivant vous permet de visualiser le statut de la création automatique et de l'activer ou la désactiver directement depuis cette page, il s'agit de la même configuration que celle visible dans la configuration du plugin.

De retour sur le bandeau de gestion, vous verrez un bouton pour accéder à la configuration du plugin, à la documentation ainsi qu'aux derniers sujets à propos du plugin sur community.

Dans le cas où la création automatique est active, le plugin créera les équipements et les commandes manquantes automatiquement dès qu'il recevra les informations sur le topic de découverte (par défaut `homeassistant`).

> **Important**
>
> La création automatique ne sera effectuée que pour les **nouveaux** équipements découverts après l'activation de l'option ou après un redémarrage du démon.
> Un équipement découvert lorsque l'option de création automatique était désactivée ne sera pas automatiquement créé (sauf si le démon est redémarré) mais il est évidement possible de l'ajouter "manuellement".

# Configuration des équipements

Il n'y a aucune configuration spécifique dans la plupart des cas exceptés pour les équipements disposant d'une info *rssi* (typiquement les équipements Bluetooth). Pour ceux-là, il y aura:

- une commande **rssi** globale qui contient la dernière valeur reçue toutes antennes confondues,
- une commande **rssi** par antenne ayant capté l'appareil,
- une commande supplémentaire **Présent** de type info/binaire qui vaut 1 si l'appareil est considéré comme présent et 0 dans le cas contraire.

Il est possible de définir dans la configuration de l'équipement la durée (en secondes) avant de considérer l'équipement comme absent; cela sera particulièrement utile pour les "trackers" tels que les nuts ou tiles. Un équipement est considéré comme présent si une valeur *rssi* a été reçue pendant les x dernières secondes.

Sur la partie de droite, vous verrez des informations générales sur l'équipement (identifiant, configuration, fabricant, modèle ...) et vous avez la possibilité de télécharger une image à utiliser pour représenter l'équipement à la place du logo du plugin ou de l'image par défaut lorsque celle-ci existe. Le plugin gère une image par modèle et pas une image par équipement, il n'est donc pas possible d'avoir deux images différentes pour deux nuts à moins de modifier manuellement l'identifiant du modèle configuré, ceci n'a aucun impact excepté pour l'image utilisée:

![devices_discovered](../images/model.png)

Dans la liste des commandes, vous verrez le topic MQTT correspondant à chaque commande ainsi que la valeur du json s'y relevant. Il est possible d'encoder un path s'il faut aller chercher une valeur dans un sous noeud.
En principe vous n'aurez pas à modifier ces configurations, elles sont accessibles uniquement pour gérer les cas limites si le plugin n'a pas effectué la configuration automatiquement.

# Fonctionnement de la découverte automatique

La découverte automatique va publier la définition complète de ce qui s'appelle des *composants*/*Entité*, chaque composant correspond à une catégorie, un type de commande. Par exemple: *sensor*, *switch*, *light*, *button*...

Le plugin lit ces définitions et pour chaque composant va créer la ou les commandes Jeedom correspondantes, chacune sous leur équipement respectif, en configurant les valeurs min/max ou la liste de choix possible etc mais aussi l'icône par défaut sur la commande, le type générique de celle-ci etc.

## Composants / entités pris en charge

Tous les composants/entités ne sont pas encore entièrement ni complètement intégrés. Si votre matériel a besoin du support d'un composant qui n'est pas encore reconnu, n'hésitez pas à en faire la demande en créant un post sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

- alarm_control_panel
- binary_sensor
- button
- cover
- device_automation
- device_tracker
- light
  - brightness
- lock
- music_player
- number
- select
- sensor
- switch
- text
- update
- vacuum

# Détections de devices Bluetooth

Un des premiers objectifs de **MQTT Discovery** est de pouvoir remonter facilement les infos [d'appareils Bluetooth compatibles](https://decoder.theengs.io/devices/devices.html) qui seront captés par des antennes exécutant les passerelles *Open MQTT Gateway* ou *Theengs Gateway*. Dans les deux cas, il faudra installer la passerelle et la configurer.

Nous allons voir ici une solution complète pour intégrer énormément d'équipements Bluetooth (BLEA) dans Jeedom et cela de façon entièrement automatisée.

Il n'y a besoin d'aucune connaissance technique (autre que de savoir utiliser Jeedom) et il n'y aura besoin d'effectuer aucune configuration manuellement même si à tout moment vous pourrez décider de prendre en charge manuellement tout ou partie de la solution (car "pourquoi faire simple lorsque l'on peut faire compliqué?").

## Comment cela fonctionne?

Voici un schéma qui illustre le fonctionnement et les interactions entre chaque composants de la solution:

![flow](../images/schema.png)

On peut y voir des capteurs (1), par exemple miFlora et nut, dont les émissions en Bluetooth sont captées par des antennes (2) avec Theengs Gateway ou OMG sur des esp32.

Ces antennes sont connectées à votre réseau local via câble ou wifi et envoient les messages Bluetooth décodés via MQTT au broker (3) et finalement le broker envoie ces mêmes messages au plugin **MQTT Discovery** installé sur Jeedom (4).

Il y a donc deux parties bien distinctes: les *antennes* qui transforment les messages Bluetooth en messages MQTT, et le plugin **MQTT Discovery** qui va transformer les messages MQTT en équipements et commandes utilisables sur Jeedom.

### Les antennes

Il peut y en avoir une seule (installée localement sur Jeedom ou sur un hôte distant) ou plusieurs (forcément installées sur des hôtes distants) pour couvrir le domicile si besoin.

Ces antennes vont capter les appareils qui émettent en Bluetooth et envoyer les données via MQTT à Jeedom; deux options pour avoir des antennes, vous pouvez les combiner et les multiplier, tout est possible:

- [Theengs gateway](https://gateway.theengs.io/) à installer localement ou en distant sur une machine sous Debian (un pi ou autre, aucune importance):
  - soit manuellement en suivant leur documentation
  - soit via le [plugin Jeedom Theengs Gateway]({{site.baseurl}}/tgw/{{page.lang}}) disponible sur le market qui permet de simplifier la tâche, voir [Documentation]({{site.baseurl}}/tgw/{{page.lang}})
- [OpenMQTTGateway](https://docs.openmqttgateway.com/) à flasher sur un esp32, forcément en distant.

Il est donc parfaitement possible d'avoir:

- une seule antenne locale (=installée sur Jeedom), donc tournant à l'aide de Theengs gateway
- une antenne locale et une autre sur un pi (avec Theengs gateway)
- une ou plusieurs antennes sur pi et pas de locale
- que des antennes OMG sur esp32
- un mix d'antennes OMG et Theengs

Toutes les combinaisons sont réalisables et tout est inter-compatible.

### Les équipements sous Jeedom

C'est ici qu'entre en jeu le plugin **MQTT Discovery** et si vous avez déjà effectué la configuration du plugin décrite ci-dessus, vous n'avez rien de plus à faire que d'ajouter les équipements voulus à votre Jeedom, le plugin se charge du reste.

### Les équipements inconnus

Si votre équipement n'est pas ou mal reconnu, il ne sera pas affiché dans la liste des équipements découverts mais il sera éventuellement visible dans la liste des équipements inconnus (voir **Gestion des équipements** pour plus d'information) pour lesquels seule l'information de présence existera.

Pour savoir pourquoi il n'est pas reconnu, veuillez d'abord vérifier la [liste des équipements compatibles](https://decoder.theengs.io/devices/devices.html) et si besoin, posez votre question sur le [community de Open MQTT Gateway / Theengs Gateway](https://community.openmqttgateway.com/).

## Pourquoi la gestion des antennes n'est-elle pas intégrée à MQTT Discovery alors?

Car ce sont bien deux rôles distincts et que **MQTT Discovery** ne s'occupe pas réellement de savoir d'où viennent les infos qu'il reçoit via MQTT et il n'est certainement pas limité aux équipements Bluetooth.

Certains l'utilisent pour intégrer à Jeedom des équipements qui ne sont pas en Bluetooth et qui ne sont donc pas remontés par les passerelles *Theengs* ou *OMG* mais par d'autres connecteurs ou passerelles, ils n'ont donc peut-être même pas besoin de celles-ci.

D'autres pourront décider d'installer leurs antennes eux-même ou de n'utiliser que des antennes sur esp32 avec OMG.

C'est là que se trouve la force du système: chacun s'occupe de son travail de la façon la plus optimale possible et cela permet d'offrir une plus grande qualité et stabilité de l'ensemble. Le broker MQTT au milieu étant une brique technique servant à la communication entre les différentes parties.

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
