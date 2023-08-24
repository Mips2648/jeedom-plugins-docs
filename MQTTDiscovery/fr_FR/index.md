---
layout: default
title: Documentation MQTT Discovery
lang: fr_FR
pluginId: MQTTDiscovery
---

# Description

Plugin pour découverte automatique d'équipement MQTT.

Le plugin se base sur le principe du "MQTT Auto Discovery" qui existe sous home assistant afin de créer automatiquement des équipements et leurs commandes sous Jeedom. Donc si vous avez des appareils qui sont connectés via MQTT et que ceux-ci publient les infos nécessaires pour la compatibilité "MQTT Auto Discovery", ceux-ci seront automatiquement reconnus et intégrés à Jeedom.

Cela permet d'utiliser l'excellent projet [Open MQTT Gateway](https://docs.openmqttgateway.com/) sur esp32 qui gère [un nombre important d'équipement](https://compatible.openmqttgateway.com/index.php/devices/) ou l'équivalent [Theengs gateway](https://gateway.theengs.io/) sur pi par exemple, tout ces équipements seront automatiquement supportés sous Jeedom via le plugin, avec la gestion automatique "multi-antenne". Il devient très facile de faire de la gestion de présence de tag bluetooth tel que les nuts.

Mais donc cela ne se limite pas à ça puisque tous équipements compatibles "MQTT Auto Discovery" sera gérable via le plugin.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

Le plugin *MQTT Manager (mqtt2)* est requis et sera installé automatiquement s'il n'est pas encore installé sur votre Jeedom.

# Configuration du plugin

Il n'y a normalement aucune configuration à effectuer mais si besoin, dans la page de configuration du plugin, vous pouvez modifier les options suivantes:

- Le topic contenant les config des équipements à découvrir, par défaut `homeassistant`.
- Le topic contenant les différentes données qui correspondront à des commandes sous Jeedom, par défaut `home`

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

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
