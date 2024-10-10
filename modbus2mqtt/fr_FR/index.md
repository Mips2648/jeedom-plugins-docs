---
layout: default
title: Documentation Modbus 2 MQTT
lang: fr_FR
pluginId: modbus2mqtt
---

# Description

Plugin permettant de faire passerelle entre du modbus TCP/IP et MQTT.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Ce plugin nécessite le plugin *MQTT Manager (MQTT2)* pour fonctionner.

# Configuration du plugin

Avant de commencer, assurez-vous d'avoir installer et configurer le plugin *MQTT Manager (MQTT2)*, voir documentation de ce plugin.

Dans la page de configuration du plugin, vous pouvez modifier les options suivantes:

- Le topic de base sous lequel le plugin va publier les informations (voir configuration des équipements). Par défaut le plugin publiera sous le topic *modbus2mqtt*; vous n'avez pas besoin de modifier si cela vous convient
- Le port d'écoute du démon du plugin. Ne modifiez cette valeur que si vous comprenez le fonctionnement et uniquement si vous avez un conflit avec un autre plugin.

# Configuration des équipements

Le plugin se trouve dans le menu Plugins → Protocole domotique.

Après avoir créé un nouvel équipement, les options habituelles sont disponibles.

Chaque équipement correspond à une passerelle composée d'un client modbus et un client MQTT. L'équipement se connectera donc à l'équipement modbus configuré pour lire et écrire les registres définis et se connectera à votre broker MQTT pour y publier et recevoir les messages correspondant.

En plus des paramètres généraux il faudra donc configurer les paramètres spécifiques pour la connexion modbus ainsi que le topic MQTT pour cet équipement.

## Paramètres de connexion modbus

- *IP* et *Port* de votre équipement modbus TCP
- *Actualisation*: délai en secondes entre chaque opérations de lecture/écriture sur l'équipement modbus
- *Offset* décalage à appliquer sur les adresses des registres
- *Longueur du batch*: nombre de registres contigus à lire lors de chaque opération de lecture (entre 1 et 100 inclus). Si 1 alors chaque registre sera lû séparément.
- *Ordre des mots*: Uniquement pour les nombres sur 32-bit ou 64-bit, choix entre *Big-endian* (le défaut) et *Little-endian*

## Paramètre MQTT

Un seul élément à configurer, le topic de cet équipement.

Ce sera un sous-topic du topic général du plugin (voir configuration du plugin) et chaque registre modbus sera publié dans un sous-topic de ce topic.

Exemple: si vous avez un équipement modbus que l'on va appeler *solar* qui permet d'obtenir la puissance produite que l'on va appeler *power*, l'info sera publiée dans le topic *modbus2mqtt/solar/power*

## Définition des registres modbus

Dans le deuxième onglet, *Registres*, vous allez devoir configurer les registres modbus qui vous intéressent et leur correspondance MQTT.
Exemple:
![Modbus register](../images/modbus_register.png "Modbus register")
Vous devez donc spécifier:

- l'adresse
- la table de registre (*holding* ou *input* pour l'instant uniquement, évolution à envisager selon les demandes)
- le type: entier signé ou non-signé sur 16 bits, 32 bits ou 64 bits.
- la mise à l'échelle: la valeur lue sera multiplié par cette valeur avant d'être publiée
- le topic MQTT de publication de la valeur (donc modbus -> MQTT)
- option *Seulement si changement* permet de ne publier sur MQTT que si la valeur a changée, si décoché la valeur sera publiée lors de chaque lecture
- option *Retain* pour publier avec l'option *retain* ou non
- éventuellement le topic d'écriture: toute info publiée sur ce topic sera écrite sur le registre modbus correspondant (donc MQTT -> modbus); typiquement si besoin vous pourrez y mettre `power\set` ou `power_set` par exemple.

## Création des commandes

Vous pouvez à présent sauver votre équipement; le plugin créera les commandes correspondantes à votre configuration et vous pourrez donc obtenir les valeurs directement sur ces commandes, elles seront mise à jour lors de chaque nouvelle publication et sont donc directement utilisables partout sous Jeedom.

Il n'est donc pas nécessaire de configurer un autre équipement MQTT pour obtenir les valeurs cependant vous êtes libre de le faire ou de consommer les topics MQTT depuis un autre appareil, une autre plateforme...

Les commandes sont visibles dans le 3ème onglet et vous y trouverez les options de configurations habituelles.
Vous devriez vérifier et modifier si besoin le sous-type des commandes infos (numérique ou binaire) pour que cela corresponde à la définition du registre.

Si vous avez configuré un topic pour pouvoir écrire une valeur dans un registre, une commande action/message correspondante sera également créée, cette commande est utilisable directement partout dans Jeedom également.

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
