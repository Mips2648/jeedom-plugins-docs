---
layout: default
title: Documentation InfluxDB
lang: fr_FR
pluginId: influxdb
---

# Description

Plugin permettant la connexion à une DB InfluxDB. Il permet d'envoyer facilement les informations voulues en sélectionnant simplement les commandes correspondantes dans une liste ce qui permet d'externaliser l'historique qui peut ensuite être consulté via Grafana par exemple.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Il n'y a pas de configuration particulière à faire, le plugin utilise éventuellement un cron, selon la configuration des équipements, pour l'envoi des mesures.

# Les équipements

Un équipement Jeedom correspond à un connecteur InfluxDB.

Chaque connecteur va se connecter et envoyer les données à une et une seule instance influxDB mais vous pouvez avoir autant de connecteur que nécessaire.
Le plugin gère InfluxDB v1 et v2, le principe de base entre les deux reste identique mais la façon de se connecter change entre les deux.

## InfluxDB v1

Pour chaque connecteur, vous devez configurer l'adresse IP de votre serveur InfluxDB, un utilisateur, un mot de passe ainsi que le nom de la base de donnée.
Vous avez la possibilité d'activer ou non https.

![InfluxDB v1](../images/influxV1.png "InfluxDB v1")

## InfluxDB v2

Pour la v2, vous devez configurer l'url sous la forme `https://server.my`, le token d'accès, l'organisation et le bucket de destination (voir documentation de influxDB)

![InfluxDB v2](../images/influxV2.png "InfluxDB v2")

> **Tip**
> influxDB possède une offre cloud gratuite pour la v2 très facile à mettre en place pour tester ou même définitivement si cela vous convient (limitée à une seule organisation, en volume de donnée et durée d'historique), plus d'info: <https://www.influxdata.com/influxdb-cloud-pricing/>

## Mode d'envoi

Vous pouvez aussi choisir le mode d'envoi, par défaut en auto-actualisation. Ce mode peut être changé à tout moment sans aucun impact.

- Auto-actualisation: le plugin enverra toutes les mesures sélectionnées selon la programmation choisie en un seul appel, par défaut chaque minute.
C'est le mode de fonctionnement recommandé, il est plus optimal et ne provoque quasi aucune charge sur votre Jeedom tout en permettant d'avoir des mesures toutes les minutes.
- Temps réel: le plugin enverra les mesures une par une à chaque changement de valeur, potentiellement plusieurs appels par seconde pour la même commande (tout dépend de vos équipements/commandes). Ce mode peut provoquer une charge conséquente sur Jeedom en fonction de votre matériel et du nombre de commandes sélectionnées alors que bien souvent un mise à jour d'InfluxDB par minute suffit amplement pour avoir des statistiques utiles.

Il est parfaitement possible d'avoir plusieurs équipements connectés à la même base de donnée configurés chacun avec un mode différent et des commandes différentes si vous voulez avoir certaines commandes envoyées en temps réel tout en optimisant la charge pour les autres.

## Sélection des commandes

Dans le second onglet sont affichées toutes les commandes infos de votre Jeedom sous forme de tableau. Il est possible de filtrer et de trier chacune des colonnes. Il suffit de cocher celles que vous voulez envoyer.

![Config commandes](../images/commands.png "Config commandes")

# Définitions

Un **point** dans InfluxDB représente une donnée caractérisée par 4 composants: la **mesure**, un ensemble de **champ**, un ensemble de **tag** et une information d'**horodatage**.

Ci-dessous le lien qui est fait par le plugin entre les concepts InfluxDB et les concepts Jeedom:

Jeedom | InfluxDB | Description
- | - | -
Nom de la commande | Measurement | Une mesure dans InfluxDB est similaire à une table SQL.
- | Timestamp | C'est l'information d'horodatage de la donnée.
Nom de l'équipement | Field(key) | La clé d'un champ est similaire au nom d'une colonne dans une table SQL.
Valeur de la commande | Field(value) | C'est la donnée du point.

## Les tags

Les tags dans InfluxDB sont des informations supplémentaires optionnelles que l'on peut associer aux points.
Ils permettent de filtrer les résultats lors d'une recherche.
Les tags suivant sont peuvent être associés à chaque point envoyé, il faut les sélectionner dans la page de configuration de l'équipement.
Cette liste peut être complétée s'il vous en fallait d'autres:

Tag(key) | Tag(value)
- | -
Plugin | nom du plugin
Object | nom de l'objet/pièce Jeedom ou "Aucun"
CommandName | nom de la commande
GenericType | type générique de la commande

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
