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

Il faut éviter d'envoyer plusieurs demandes de changement de planning sur des jours différents à des intervalles rapides. En effet le changement n'est enregistré dans le plugin qu'à la réponse du serveur. Tout le planning est envoyé à chaque fois et par conséquent on pourrait perdre la précédente demande.
Donc soit il faut attendre l'actualisation de l'info dans l'équipement, soit il faut mettre une temporisation.

# Widget

Un widget pré-configuré est disponible dans le plugin; vous pouvez activer ce widget dans la page de configuration de l'équipement.

![alt text](../images/doc.png)
![alt text](../images/doc2.png)

# Annexes

## Liste des codes erreur:

- 1: Bloquée
- 2: Soulevée
- 3: Câble non trouvé
- 4: En dehors des limites
- 5: Délai pluie
- 6: Close door to mow
- 7: Close door to go home
- 8: Moteur lames bloqué
- 9: Moteur roues bloqué
- 10: Timeout après blocage
- 11: Renversée
- 12: Batterie faible
- 13: Câble inversé
- 14: Erreur charge batterie
- 15: Délai recherche station dépassé

##  Liste des codes statut:

- 0: Inactive
- 1: Sur la base
- 2: Séquence de démarrage
- 3: Quitte la base
- 4: Suit le câble
- 5: Recherche de la base
- 6: Recherche du câble
- 7: En cours de tonte
- 8: Soulevée
- 9: Coincée
- 10: Lames bloquées
- 11: Debug
- 12: Remote control
- 30: Retour à la base
- 31: Création des zones de tonte
- 32: Coupe la bordure

# FAQ

> A quelle fréquence, les données sont-elles réactualisées?

Les données sont disponibles en temps réel. Il n'y a pas de délai fixe, cela dépend donc si la tondeuse envoi des informations ou pas; 
Cela sera plusieurs fois par minute pendant la tonte et peut-être aucune mise à jour pendant la nuit...

> quels sont les modèles compatibles?

Il n'est pas possible de lister tous les modèles compatibles; en principe tous les modèles équipés d'une connexion wifi, compatible avec le cloud Worx seront compatible avec le plugin.

> La communication avec la tondeuse est perdue

Il peut arriver par moment de perdre la connexion avec la tondeuse, y compris avec l'application mobile.
Dans certains cas, le fait de réactualiser le code WIFI peut résoudre le problème.
(Faire comme si on voulait ajouter une nouvelle tondeuse sur l'appli mobile, appuyer 3 secondes sur le bouton OK de la tondeuse, renseigner le n° de série et le code WIFI correspondant)
Worx limite volontairement le nombre d'interrogations de l'état de la tondeuse (limite non connue) donc trop de "refresh" pourrait stopper la communication avec le cloud. D'après les tests, il s'agit d'une limite quotidienne.

Une autre possibilité : le compte est bloqué, si aucune communication n'est possible pendant plus de 24hr alors, rendez vous sur votre compte Worx <https://account.worxlandroid.com/login> puis dissocier la tondeuse et faites une nouvelle association.

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- tous les logs disponibles du plugin
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...
