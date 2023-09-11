---
layout: default
title: Documentation MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Description

Plugin pour découverte automatique d'équipement MQTT.

Le plugin se base sur le principe du "MQTT Auto Discovery" qui existe sous home assistant afin de créer automatiquement des équipements et leurs commandes sous Jeedom. Donc si vous avez des appareils qui sont connectés via MQTT et que ceux-ci publient les infos nécessaires pour la compatibilité "MQTT Auto Discovery", ceux-ci seront automatiquement reconnus et intégrés à Jeedom.

Cela permet d'utiliser l'excellent projet [Open MQTT Gateway](https://docs.openmqttgateway.com/) sur esp32 qui gère [un nombre important d'équipement](https://compatible.openmqttgateway.com/index.php/devices/) ou l'équivalent [Theengs gateway](https://gateway.theengs.io/) sur pi par exemple, tout ces équipements seront automatiquement supportés sous Jeedom via le plugin, avec la gestion automatique "multi-antenne". Il devient très facile de faire de la gestion de présence de tag Bluetooth tel que les nuts.

Mais donc cela ne se limite pas à ça puisque tous équipements compatibles "MQTT Auto Discovery" sera gérable via le plugin. Par exemple, ce plugin a été testé avec succès avec zwavejs-ui et zigbee2mqtt.

> **Important**
>
> Ce plugin n'a pas vocation à remplacer des plugins de protocoles dédiés à zwavejs-ui et zigbee2mqtt par exemple; les plugins existants sur le market géreront bien mieux ces protocoles sous Jeedom.
> Aucune options spécifiques ne sera développée pour gérer plus en détail ceux-ci, ce n'est pas le but du plugin qui implémente uniquement la découverte automatique.
> Les tests effectués avec ces zwavejs-ui et zigbee2mqtt sont réalisés uniquement parce que cela me permet de valider à grande échelle le comportement du plugin mais absolument pas pour gérer les spécificités de ces protocoles.
> Donc ce plugin peut évidement être utilisé pour créer facilement les équipements nécessaires à ces protocoles mais uniquement dans le cadre d'une utilisation en mode avancée, en sachant que vous gérer absolument tout le reste avec les outils mis à disposition par ces programmes.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

Vous devez avoir déjà installé un broker MQTT, soit par vous-même, soit par l'intermédiaire d'un autre plugin Jeedom.

Si le plugin *MQTT Manager (mqtt2)* est installé, la configuration pour se connecter au broker géré par ce plugin pourra être récupérée automatiquement.

# Configuration du plugin

## Accès au broker MQTT

Il faut configurer l'adresse IP du broker, le port, un nom d'utilisateur et son mot de passe.
Si le plugin *MQTT Manager (mqtt2)* est installé, vous verrez un bouton pour effectuer cette configuration automatiquement.

## Auto-découverte

Le topic contenant les config des équipements à découvrir, par défaut `homeassistant`, peut éventuellement être modifié si nécessaire.

Il faudra ensuite configurer la liste des topics racines pour lesquels vous voulez remonter les équipements. Par exemple, pour les équipements gérés par *Open MQTT Gateway* ou *Theengs gateway* cela sera le topic `home` par défaut.

Après le premier démarrage du démon et donc après la première séance de découverte, vous verrez également la liste des topics possibles mais non-configurés, il est possible des les ajouter directement.

# Démon

Pour finir, vous pouvez configurer les infos suivantes (optionnelles):

- *Cycle* définit la fréquence d'envoi, en secondes, des informations vers Jeedom: une valeur numérique entre `0.5` et `10`
- *Port socket interne* définit le port sur lequel écoute le démon. Ne changez pas cette valeur sans avoir posé la question sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

# Installation des antennes

## Installation de Open MQTT Gateway

Je ne vais pas documenter ici la procédure complète, tout est déjà expliqué en détail ici: <https://docs.openmqttgateway.com/>.

Vous trouverez également de l'aide sur [community]({{site.forum}}).

## Installation de Theengs gateway

Dans la version (beta) actuelle, le plugin ne prend pas encore en charge l'installation et la gestion des antennes (monotoring, démarrage...) mais cela va être implémenté avant la sortie en stable pour plus de facilité.

Pour installer manuellement, toutes les explications nécessaires sont disponibles ici: <https://gateway.theengs.io/install/install.html>.

En résumé, pour l'installation sur pi (Debian), je vous recommande de l'installer dans un environnement virtuel (venv) si vous avez plusieurs applications installées sur celui-ci pour éviter les conflits éventuels:

```bash
mkdir TheengsGW_venv

apt install python3-venv -y
python3 -m venv ./TheengsGW_venv/

TheengsGW_venv/bin/python3 -m pip install --upgrade pip wheel

TheengsGW_venv/bin/python3 -m pip install TheengsGateway
```

> **Important**
>
> En fonction de la puissance de la machine et des autres processus en cours, l'installation peut prendre jusqu'à 1h. C'est parfaitement normal.
> Pensez à couper l'antenne du plugin blea si vous vous serviez du pi pour blea. Celui-ci étant fort consommateur de resources, il ralentira fortement l'installation.
>
> Les 2 plugins ne peuvent pas utiliser le bluetooth en même temps, vous devez avoir 2 clés / puces bluetooth différentes ou n'utiliser que l'un des deux simultanément.

Ensuite pour exécuter:

```bash
TheengsGW_venv/bin/python3 -m TheengsGateway -H "192.168.xxxxx" -u "<user>" -p "<password>"`
```

l'ip est celle du broker (ip de jeedom si broker installé en local) et le user et mot de passe du broker qu’on trouve dans la config de *MQTT Manager (mqtt2)*.

sans environnement virtuel:

```bash
TheengsGW_venv/bin/python3 -m pip install TheengsGateway
```

# Configuration des équipements

Le plugin se trouve dans le menu Plugins → Protocole domotique.

Il n'y a aucune configuration spécifique.

Lorsque le plugin recevra les informations sur le topic de découverte, il créera les équipements et les commandes manquantes automatiquement.

Dans la liste des commandes, vous verrez le topic MQTT correspondant ainsi que la valeur du json si relevant. Il est possible d'encoder un path s'il faut aller chercher une valeur dans un sous noeud.
En principe vous n'aurez pas à modifier ces configurations, elles sont accessibles uniquement pour gérer les cas limites si le plugin n'a pas effectué la configuration automatiquement.

# Fonctionnement de la découverte automatique

La découverte automatique va publier les configurations de ce qui s'appellent des *composants*/*Entité*, chaque composant correspond à une catégorie, un type de commande. Par exemple: *sensor*, *switch*, *light*, *button*...

Le plugin lit ces configurations et pour chaque composant va créer la ou les commandes Jeedom correspondantes, chacune sous leur équipement respectif.

## Composant pris en charge

Tous les composants ne sont pas encore entièrement ni complètement intégré. Si votre matériel a besoin du support d'un composant qui n'est pas encore reconnu, n'hésitez pas à un faire la demande en créant un post sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

- binary_sensor
- button
- cover
- light
  - brightness
- number
- sensor
- switch
- text

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
