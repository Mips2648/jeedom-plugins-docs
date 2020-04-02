---
layout: default
title: Documentation InfluxDB
lang: fr_FR
pluginId: influxDB
---

# Description

Plugin permettant la connexion à une DB InfluxDB. Il permet d'envoyer facilement les informations des commandes sélectionnées à chaque changement de valeur ce qui permet d'externaliser l'historique qui peut ensuite être consulté via Grafana par exemple.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

Il n'y a pas de configuration particulière à faire, le plugin utilise un cron selon la configuration pour l'envoi des mesures.

# Les équipements

Un équipement Jeedom correspond à un connecteur InfluxDB.

Pour chaque connecteur, vous devez configurer l'adresse IP de votre serveur InfluxDB, un utilisateur, un mot de passe ainsi que le nom de la base de donnée où il faut envoyer les données.

Vous pouvez aussi choisir le mode d'envoi, par défaut en auto-actualisation. Ce mode peut être changé à tout moment sans aucun impact.

- Auto-actualisation: le plugin enverra toutes les mesures sélectionnées chaque minute en un seul appel.
C'est le mode de fonctionnement recommandé, il est plus optimal et ne provoque quasi aucune charge.
- Temps réel: le plugin enverra les mesures une par une à chaque changement de valeur, potentiellement plusieurs appels par secondes pour la même commande. Ce mode provoque une charge conséquente sur Jeedom en fonction de votre matériel et du nombre de commandes sélectionnées alors que bien souvent un mise à jour d'InfluxDB par minute suffit implément pour avoir des statistiques utiles.

Il est parfaitement possible d'avoir plusieurs équipements connectés à la même base de donnée configuré chacun avec un mode différent et des commandes différentes si vous voulez a voir certaines commandes envoyées en temps réel tout en optimisant la charges pour les autres.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
