---
layout: default
title: Documentation Roomba
lang: fr_FR
pluginId: kroomba
---

# Description

Plugin permettant de piloter un aspirateur robot de la marque IRobot.

Le plugin a été testé avec succès sur des modèles 960, 980 et i7.
Si vous testez d'autres modèles, communiquez le résultat dans le fil officel du plugin sur le forum communautaire Jeedom.

Ce plugin ne fonctionne pas avec les anciens modèles d'aspirateurs robot Roomba munis d'un extension matérielle (type RooWifi ou Thinking Cleaner), il ne fonctionne qu'avec les modèles récents dotés d'une liaison Wifi.

# Fonctionnalités

Pour le moment, ce plugin permet :

- La détection et l'appairage automatique des Roomba sur le réseau local
- La remontée du statut

En charge
Retour en cours vers le dock
En cours de nettoyage
Stoppé
Bloqué
Tache achevée
Recharge nécessaire
Statut inconnu

- L'envoi des commandes Démarrer (start) / Stop / Pause / Continuer (resume) / Retour à la base (dock)

Il comporte un Widget desktop & mobile.

# Configuration du plugin

La procédure d'installation :

- S'assurer que le Roomba est correctement paramétré sur le réseau local (procédure via l'application iRobot)
- Eteindre toute application iRobot sur Android ou iOS. Attention : l'utilisation simultanée de l'application iRobot peut provoquer des blocages de communication entre le plugin et le Roomba
- Sur jeedom, installer le plugin, attendre que les dépendances soient installées
- S'assurer que roomba est sur sa base et pas "endormi" (appuyer brièvement sur "Clean" pour le réveiller si nécessaire).
- Depuis la page de configuration du plugin cliquer sur le bouton "Découvrir les Roombas". Les roombas sur le réseau seront automatiquement créés en tant qu'équipement.
- Utiliser le bouton "Récupérer le mot de passe" sur la page de configuration de l'équipement
- Lire les instructions (appui de 2 sec sur le bouton HOME du robot jusqu'à ce que la led WIFI clignotte vert) puis appuyer sur "Continuer" dans le dialogue du plugin.
- Dans les 30 secondes qui suivent, sur le roomba, rester appuyé sur le bouton "Maison" (seulement) pendant 2 secondes (jusqu'à ce qu'il fasse un petit bipbip).

# Historique

Ce plugin a été initialement créé par @kavod (Brice Grichy).
Le plugin a ensuite été repris par @vedrine

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
