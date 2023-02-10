---
layout: default
title: Documentation InfluxDB
lang: fr_FR
pluginId: influxdb
---

# Description

Plugin permettant la connexion à une DB InfluxDB. Il permet d'envoyer facilement les informations voulues en sélectionnant simplement les commandes correspondantes dans une liste ce qui permet d'externaliser l'historique qui peut ensuite être consulté via Grafana par exemple.

Le plugin permet également d'exporter l'historique des commandes Jeedom vers InfluxDB.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Il n'y a pas de configuration particulière à faire, le plugin utilise éventuellement le cronDaily pour la remise à zéro des compteurs.

# Les équipements

Un équipement Jeedom correspond à un connecteur InfluxDB.

Chaque connecteur va se connecter et envoyer les données à une et une seule instance influxDB mais vous pouvez avoir autant de connecteur que nécessaire.
Le plugin gère InfluxDB v1 et v2, le principe de base entre les deux reste identique mais la façon de se connecter change.

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

- _Auto-actualisation_: le plugin enverra toutes les mesures sélectionnées selon la programmation choisie en un seul appel, par défaut chaque minute.
C'est le mode de fonctionnement recommandé, il est plus optimal et ne provoque quasi aucune charge sur votre Jeedom tout en permettant d'avoir des mesures toutes les minutes.
- _Temps réel_: le plugin enverra les mesures une par une à chaque changement de valeur, potentiellement plusieurs appels par seconde pour la même commande (tout dépend de vos équipements/commandes). Ce mode peut provoquer une charge conséquente sur Jeedom en fonction de votre matériel et du nombre de commandes sélectionnées alors que bien souvent un mise à jour d'InfluxDB par minute suffit amplement pour avoir des statistiques utiles.

Il est parfaitement possible d'avoir plusieurs équipements connectés à la même base de donnée configurés chacun avec un mode différent et des commandes différentes si vous voulez avoir certaines commandes envoyées en temps réel tout en optimisant la charge pour les autres.

En mode _Auto-actualisation_, vous pouvez choisir la valeur qui sera envoyée comme timestamp de la mesure:

- _Heure d'envoi_, valeur par défaut et comportement historique du plugin
- _Date valeur de la commande_
- _Date collecte de la commande_

## Sélection des mesures à envoyer

Dans le second onglet sont affichées toutes les commandes sélectionnées pour envoi à InfluxDB. Il est possible de filtrer les lignes afficher via le champ "Recherche".

![Config commandes](../images/commands.png "Config commandes")

Il est possible de rechercher et sélectionner des commandes à envoyer via 3 méthodes:

- Recherche d'une commande unique via le bouton **Ajouter une commande**
- Recherche et ajout de commandes multiple via le bouton **Ajouter commandes par objet**. Cette méthode à l'avantage de n'afficher que les commandes des équipements liés à un objet particulier et donc l'affichage sera plus rapide si vous avez énormément de commandes (+ de 10.000)
- Recherche et ajout de commandes multiple via le bouton **Ajouter commandes (liste)**. Cet écran va afficher toutes les commandes infos de votre Jeedom: pratique car tout est affiché mais si vous avez plus de 10.000 commandes cela peut prendre 30s ou plus.

Exemple de recherche:

![Recherche commandes](../images/search.png "Recherche commandes")

1. Dans les écrans de recherche de commandes, il est possible de filtrer/rechercher sur n'importe quelle valeur en tapant la recherche dans le champ en haut de la liste.
2. La liste n'affichera que les commandes qui n'ont pas encore été sélectionnées pour cet équipement / connecteur.
3. Pour sélectionner une commande et l'envoyer à InfluxDB il suffit de cliquer sur le bouton **Ajouter**. N'oubliez pas de sauvegarder l'équipement après avoir ajouté toutes les commandes voulues.

## Export de l'historique Jeedom vers InfluxDB

Pour exporter l'historique vous devez vous rendre dans l'onglet _Mesures_ dans lequel vous avez configurer les commandes de vos équipements Jeedom à envoyer.

Vous pouvez:

- soit envoyer l'historique d'une commande particulière en cliquant sur le bouton _Exporter_ de la ligne correspondante dans les actions
- soit cocher/décocher les mesures voulues (et cocher/décocher tout avec les sélecteurs de la colonne) et ensuite cliquer sur le bouton _Exporter_ situé dans la zone supérieur de la colonne.

Dans les 2 cas, l'étape suivante vous demandera la date de début et la date de fin voulue pour l'export et ensuite la tâche sera programmée.
Cela peut prendre un peu de temps en fonction de la quantité de données à exporter mais cela sera transparent car la tâche s'exécutera en arrière plan.

# Les commandes

Les commandes de l'équipement/connecteur InfluxDb sont visibles dans le 3ème onglet:

- **Envoyer tout** permet d'envoyer toutes les valeurs actuelles des mesures configurées sur l'équipement, cela n'envoi pas l'historique des commandes, uniquement la valeur courante.
- **Statut** donne l'état du connecteur, sera égal à 1 si aucun problème n'est détecté, 0 dans le cas contraire.
- **Date dernière envoi** donne la date/heure du dernier envoi réussi
- **Date dernière erreur** & **Description dernière erreur** donne la date/heure du dernier envoi en erreur ainsi que le message d'erreur
- **Total mesures** & **Total journalier mesures** compteurs des mesures envoyées: total & journalier.

# Définitions

Un **point** dans InfluxDB représente une donnée caractérisée par 4 composants: la **mesure**, un ensemble de **champs**, un ensemble de **tags** et une information d'**horodatage**.

Ci-dessous le lien qui est fait par le plugin entre les concepts InfluxDB et les concepts Jeedom:

Jeedom | InfluxDB | Description
--- | --- | ---
Nom de la commande | Measurement | Une mesure dans InfluxDB est similaire à une table SQL.
Date valeur de la commande | Timestamp | C'est l'information d'horodatage de la donnée.
Nom de l'équipement | Field(key) | La clé d'un champ est similaire au nom d'une colonne dans une table SQL.
Valeur de la commande | Field(value) | C'est la donnée du point.

## Les tags

Les tags dans InfluxDB sont des informations supplémentaires optionnelles que l'on peut associer aux points.
Ils permettent de filtrer les résultats lors d'une recherche.
Les tags suivant sont peuvent être associés à chaque point envoyé, il faut les sélectionner dans la page de configuration de l'équipement.
Cette liste peut être complétée s'il vous en fallait d'autres:

Tag(key) | Tag(value)
--- | ---
Plugin | nom du plugin
Object | nom de l'objet/pièce Jeedom ou "Aucun"
CommandName | nom de la commande
GenericType | type générique de la commande

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
