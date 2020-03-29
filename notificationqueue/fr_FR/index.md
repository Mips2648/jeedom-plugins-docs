---
layout: default
title: Index
lang: fr_FR
pluginId: notificationqueue
---

# Description

Plugin permettant de créer des commandes de notifications (commande de type action/message) qui se comportent comme une file d'attente et ne délivrent les notifications (envoyées dans leur file respective) que si une condition est remplie.

Cela permet par exemple:

- de ne délivrer une notification par voix (TTS) dans un pièce donnée que si quelqu'un si trouve;
- de vous avertir d'une action à faire que si vous être présent chez vous;
- de n'envoyer certaines communications que pendant la journée et éviter de faire sonner votre téléphone la nuit.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il n'y a aucune configuration à faire sur le plugin.

# Configuration de l'équipement

Le plugin se trouve dans le menu Plugins > Communication.
Après avoir créé un nouvel équipement, les options habituelles sont disponible.

Vous pouvez créer plusieurs équipements pour organiser vos différentes communications selon vos préférences.

En plus des configurations habituels d'un équipement, vous devez configurer:

- une condition (la condition pour que les notifications soient envoyées)
- la ou les commandes de notification à utiliser (quand la condition est remplie)

> **Tip**
>
> Vous pouvez spécifier plusieurs commandes de notification en les séparant par &&

# Options additionnelles

## Pause entre 2 évaluations

Cela permet de configurer le temps de pause entre 2 évaluations de la conditions lors d'envoi de messages successifs si par exemple le retour d'état d'une commande prend du temps.

## Pause dynamique entre 2 messages (TTS)

Si activer, le plugin va calculer le temps de lecture du message. Pour cela il compte le nombre de syllabes totales et multiplie ce nombre par un temps de lecture moyen par syllabes. Vous pouvez adapter ce temps en fonction de votre périphérique TTS dans la configuration de l'équipement.

## Doublon

Vous pouvez aussi choisir le comportement lorsqu'une notification avec le même message qu'une notification existante est ajoutée à la file.

- Ignorer: la nouvelle notification sera simplement ajoutée à la fin de la file (comportement par défaut);
- Garder la première notification: la nouvelle ne sera donc pas ajoutée;
- Garder la dernière notification: la notification précédente sera supprimée de la file et la nouvelle sera ajoutée à la fin de celle-ci.

## Délai d'expiration

Il est possible de configurer un délai d'expiration des notifications (en minute). Passé ce délai la notification ne sera plus envoyée si la condition n'a pas été remplie avant.

# Quelques principes

- L'ordre d'envoi des notifications est garantie (FIFO, première notification reçue, première notification renvoyée), exception suivant la configuration des doublons.
- Si un problème est détecté pendant le renvoi (pas toujours possible), le message est remis à la fin de la file pour un nouvel essai plus tard.
- Le plugin vérifie la condition de chaque file toutes les minutes et à chaque ajout de nouveaux messages.
- le ask est géré par le plugin (il faut que la commande de notification utilisée ensuite le gère également)

# Le widget

Le widget sera celui par défaut du core avec l'affichage par défaut des commandes (messages) suivant la configuration de celles-ci.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ({{site.tagPlugin}}).
