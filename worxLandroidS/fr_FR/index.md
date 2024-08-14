---
layout: default
title: Documentation WorxLandroidS
lang: fr_FR
pluginId: worxLandroidS
---

# Description

Ce plugin permet de se connecter aux tondeuses Worx Landroid modèles Wifi.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration du plugin

La connexion vers la tondeuse se fait à partir d'un serveur cloud en utilisant le compte utilisé lors de l'enregistrement de la tondeuse.

Les identifiants correspondent à ceux de l'application mobile.
Vous devez attendre la fin de l'installation des dépendances pour permettre la communication avec la tondeuse.

Une fois la sauvegarde des identifiants effectuée, le démon va démarrer et découvrir automatiquemnt vos tondeuses. Pour chacune d'elle, un nouvel équipement va être créé automatiquement.

L'arrêt du daemon permet de stopper la connexion avec la tondeuse.
En cas d'arrêt prolongé de la tondeuse, en cas d'hivernage par exemple, vous pouvez désactiver le démon (et la gestion automatique) ou désactiver complétement le plugin.

# Utilisation

Le nom par défaut = Nom de la tondeuse sur l'application mobile

Le dashboard affiche:

- Etat batterie
- bouton de retour maison
- bouton de démarrage
- bouton pause
- Rafraîchissement des infos courantes
- la date et heure de la dernière communication
- Distance et durée totale de fonctionnement
- Nombres de cycles de recharge
- Délai en minutes après la pluie
- changement du délai pluie
- Etat de la tondeuse avec le code correspondant
- Description de l'erreur avec le code correspondant
- Le planning par jour avec l'heure de démarrage et d'arrêt
- 'Bord.' signifie la coupe des bordures est planifié

Vous pouvez choisir d'afficher ou masquer les infos via la liste des commandes de l'équipement.

# Widget

Un widget pré-configuré est disponible dans le plugin; Vous pouvez activer ce widget dans la page de configuration de l'équipement.

![alt text](../images/doc.png)

# Annexes

## Liste des codes erreur

- 1: Bloquée
- 2: Soulevée
- 3: Câble non trouvé
- 4: En dehors des limites
- 5: Délai pluie
- 6: Fermez le capot pour tondre
- 7: Fermez le capot pour retourner sur la base
- 8: Moteur lames bloqué
- 9: Moteur roues bloqué
- 10: Timeout après blocage
- 11: Renversée
- 12: Batterie faible
- 13: Câble inversé
- 14: Erreur charge batterie
- 15: Délai recherche station dépassé
- 16: Verrouillée
- 17: Erreur de température de la batterie
- 18: Modèle factice
- 19: Délai d'ouverture du coffre de la batterie dépassé
- 20: Recherche du câble
- 21: msg num
- 100: Erreur d'amarrage à la station de recharge
- 101: Erreur hbi
- 102: Erreur OTA
- 103: Erreur carte
- 104: Pente excessive
- 105: Zone inaccessible
- 106: Station de recharge inaccessible
- 108: Données des capteurs insuffisantes
- 109: Démarrage entrainement refusé
- 110: Erreur caméra
- 111: Exploration cartographique requise
- 112: L'exploration cartographique a échoué
- 113: Erreur du lecteur rfid
- 114: Erreur de phare
- 115: Station de recharge manquante
- 116: Réglage de la hauteur de la lame bloqué

## Liste des codes statut

- 0: Inactive
- 1: Sur la base
- 2: Séquence de démarrage
- 3: Quitte la base
- 4: Suit le câble
- 5: Recherche de la base
- 6: Recherche du câble
- 7: En cours de tonte
- 8: Soulevée
- 9: Bloquée
- 10: Lames bloquées
- 11: Debug
- 12: Contrôle à distance
- 13: Sortie de clôture numérique
- 30: Retour à la base
- 31: Création des zones de tonte
- 32: Coupe la bordure
- 33: Départ vers zone de tonte
- 34: Pause
- 103: Recherche de la zone
- 104: Recherche de la base
- 110: Traversée de limite
- 111: Découverte de la pelouse

# FAQ

> A quelle fréquence, les données sont-elles réactualisées?

Les données sont disponibles en temps réel. Il n'y a pas de délai fixe, cela dépend donc si la tondeuse envoi des informations ou pas;
Cela sera plusieurs fois par minute pendant la tonte et peut-être aucune mise à jour pendant la nuit...

> quels sont les modèles compatibles?

Il n'est pas possible de lister tous les modèles compatibles; en principe tous les modèles équipés d'une connexion wifi, compatible avec le cloud Worx seront compatible avec le plugin.

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...

# Vous aimez le plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
