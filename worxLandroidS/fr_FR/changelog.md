---
layout: default
title: Changelog WorxLandroidS
lang: fr_FR
pluginId: worxLandroidS
---

# Beta

- Ajout des codes erreur et état ainsi que les descriptions pour les modèles Landroid Vision

# Stable

## 2024-06-11

- Suppression de l'image "Pause" sur le widget lorsque la tondeuse est en pause
- Fix sur la vérification des dépendances
- Mise à jour du démon
- Mise à jour de dépendances

## 2024-02-23

- Optimisation de la taille des backups
- Nouvelle version des dépendances (paho-mqtt 2.0) et adaptation du démon en conséquence

## 2023-12-21

- Changement mineur dans le script d'installation des dépendances
- Mise à jour des versions des dépendances
- Compatibilité python3.9 / python3.7

## 2023-10-26

- Amélioration technique sur le démon: passage en full asyncio
- Modification sur la gestion des dépendances pour éviter des conflits potentiels avec d'autres plugins
- Changement de l'adresse du serveur d'authentification dû à un changement de Worx, cela résout le problème "AuthorizationError: Unauthorized"

## 2023-10-02

- Encryption du nom d'utilisateur et du mot de passe en base de données
- Fix sur les commandes activation et désactivation des modules additionnels

## 2023-08-31

- Reprise du plugin par @Mips
- Mise à jour de la présentation des commandes pour Jeedom v4.3
- Compatibilité Jeedom v4.4
- Ajout du rapport d’activité (qui remplace la page santé)
- Ajout d’info concernant la tondeuse: modèle, année production, largeur de coupe
- Remplacement des onglets zones & horaires par un onglet « Ma pelouse » dans lequel on retrouve:
  - Information générale
  - Configuration multi-zone
  - Programmation manuelle
  - Auto-programmation (si supporté par votre modèle)
- Ajout du support du modèle Landroid Vision
- Ajout de la gestion du module *Off Limits*: état actuel, commandes activation & désactivation des Zones interdites et des Shortcut
- Ajout de la gestion du module *Find My Landroid*: état actuel
- Ajout de la gestion du module *ACS*: état actuel, commandes activation & désactivation
- Ajout vérification & validation de la configuration du plugin
- Ajout de la commande **Définir répartition des zones** de type action/message. Il faut passer le pourcentage des zones (par palier de 10%). Par exemple:
  - `100` ou `100,0,0,0` => tout sur la zone 1
  - `0,0,0,100` => tout sur la zone 4
  - `20,30,20,30` => 20% zone 1, 30% zone 2 …
- Modification du comportement de la commande **Zone de travail**: à présent la configuration de la répartition entre les zones n'est plus modifiée mais l'ordre est modifiée pour que le prochain départ corresponde à la zone sélectionnée
- Fix sur le widget: les commandes additionnelles ne s'affichaient pas

Voir les détails ici <https://community.jeedom.com/t/version-beta-avril-2023/105197>

## 2020-11-21 par @sebsst

- Modification de la commande pour la coupe de la bordure (compatibilité des modèles à vérifier)

## 2020-06-06 par @sebsst

- ajout onglet gestion des zones de tonte. (distance de départ + % répartition selon chaque zone)
- possibilité de masquer les infos inclinaison+direction

## 2020-05-29 par @sebsst

- ajout information en cas de non communication avec la tondeuse + 24 hr (dissocier et associer à nouveau sur le compte Worx)
- modif saisie des temps.
- ajout historique bouton santé du plugin (réinitialisez les données cloud pour activer la modif)
- ajout information sur l'inclinaison (latérale et frontale) et la direction
- tentative de suppression erreur 500 si la communication n'est pas possible avec la tondeuse

## 2020-05-10 par @sebsst

- Changement du template: reprise des images d'Antoinekl du widget worklandroid + travail de Tektek pour les animations, merci à eux
- correction pour masquer ou afficher certaines zones (planning_starttime permet de masquer ou afficher le jour dans le planning)
- Edition possible des horaires de tonte depuis le widget
- ajout de la gestion de durée de vie des lames (renseigner la durée de vie estimée dans l'équipement et en enregistrer, puis réinitialiser la durée sur le widget en cliquant sur les lames sous l'indicateur batterie)

## 2020-03-12 par @sebsst

- correction pour l'initialisation de l'équipement et 1er refresh des données (+aide de @Mips)

## 2019-05-08 par @sebsst

- Ajout d'une info (virtualInfo) pour concaténer plusieurs infos du plugin séparé par des virgules pour l'utilisation du widget Worx Landroid.
- remplacement des infos planning/xxxx/xxx par planning_xxxxx_xxxx suite à un changement du core Jeedom

## 2019-04-28 par @sebsst

- Diverses corrections
- Ajout de la fonction set_schedule pour modifier le planning de tonte d'un jour donné. Par défaut l'action n'est pas visible. Le but étant de faire de la planification à l'aide d'un scénario mais il est possible de rendre visible sur le widget si besoin.
- Format attendu: numéro jour;heure départ;durée en minutes;bordure
Exemples :
  - 1;10:00;120;1 => lundi, démarrage à 10:00 pendant 120 minutes, coupe la bordure
  - 0;08:00;300;0 => dimanche, démarrage à 08:00 pendant 300 minutes, ne coupe pas la bordure

## 2019-04-03 par @sebsst

- Ajout coordonnées GPS si disponibles

## 2018-11-07 par @sebsst

- La nouvelle version du plugin nécessite la recréation des équipements, vous devez donc supprimer les équipements existants
- Gestion multi-tondeuses
- Détection automatique du type de tondeuse
- suppression mode retry

## 2018-09-11 par @sebsst

- Ajout du paramètre type de tondeuses: Landroid version S / Landroid version M (firmware 5.x)
(en cas de soucis vous pouvez cocher réinitialiser les paramètres dans la configuration du plugin et sauvegarder)
- Ajout de la fonction "pause"

## 2018-07-09 par @sebsst

- Possibilité de définir son propre widget pour les commandes de type infos pour permettre l'affichage de données supplémentaires
- Modification des types d'info numériques (peut-être aussi fait manuellement ou en recréant l'équipement)

## 2018-06-16 par @sebsst

- modification du script d'installation pour tenter de résoudre les problème de version de Mosquitto (version mini 1.4.1)
- Installation version Mosquitto 1.5 si version Mosquitto 1.3
- Corrections des fonctions démarrer/arrêter.
- Modifications timeout si le serveur Mosquitto n'envoie aucun message
- changement du délai pluie manquant dans certains cas

## 2018-06-09 par @sebsst

Ajout de nouvelles actions:

- Ajout des délais de tonte après une pluie
- Ajout des actions off_today / on_today pour faciliter la gestion de l'activité du jour par scénarios (pour les jours fériés par exemple)

Autres modifications:

- Widget désormais modifiable (couleur/transparence...)
- Possibilité d'enlever certaines infos: errorCode, statusCode, totalDistance, batteryChargeCycle, rainDelay
- Affichage de la prochaine zone de tonte. C'est la zone de départ de la prochaine tonte ou de celle en cours.
- Changement des infos en numérique pour permettre de faire des statistiques (évolution de la batterie par exemple)

## 2018-06-06 par @sebsst

Modification des fréquences de mise à jour des infos:

- Toutes les 2 minutes pendant la tonte
- Toutes les 30 minutes en dehors des périodes de tonte
- sur demande ou envoi de mise à jour du planning de fonctionnement.

## 2018-06-04 par @sebsst

- Changement délai daemon et autres paramètres de connexion au serveur Worx
- Ajustement design widget
- remplacement id client Mosquitto

## Mai 2018 par @sebsst

Création du plugin

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
