---
layout: default
title: Documentation Roomba
lang: fr_FR
pluginId: kroomba
---

# Description

Plugin permettant de piloter les robots aspirateurs et laveurs de sols de la marque iRobot.

Le plugin a été testé avec succès sur beaucoup de modèles différents et la plupart des modèles wifi de la marque devraient être supportés, si vous avez un doute, testez par vous même et vous serez fixé!
Ce plugin ne fonctionne pas avec les anciens modèles d'aspirateurs robot Roomba munis d'un extension matérielle (type RooWifi ou Thinking Cleaner), il ne fonctionne qu'avec les modèles récents dotés d'une liaison Wifi.

Ce plugin permet la détection et l'appairage automatique des Roomba sur le réseau local, de remonter diverses informations sur l'état du robot (statut, info bac plein, info réservoir...) ainsi que de piloter le robot (Démarrer, Arrêter, Retour à la base...)

Il comporte un Widget desktop.

# Configuration du plugin

La procédure d'installation :

- S'assurer que le Roomba est correctement paramétré sur le réseau local et connectez au même réseau que Jeedom (procédure via l'application iRobot)
- Eteindre toute application iRobot sur Android ou iOS. Attention : l'utilisation simultanée de l'application iRobot peut provoquer des blocages de communication entre le plugin et le Roomba
- Sur Jeedom, installer le plugin et installer les dépendances
- Installer le plugin *MQTT Manager* (fait automatiquement lors de l'installation des dépendances normalement) et le configurer si besoin (voir documentation du plugin)
- S'assurer que le robot est sur sa base et pas "endormi" (appuyer brièvement sur "Clean" pour le réveiller si nécessaire).
- Depuis la page de configuration du plugin cliquer sur le bouton *Découverte* et entrez vos identifiants dans la fenêtre qui s’ouvre, ensuite attendez cela prend entre 15s et 30s, le démon redémarrera tout seul à la fin du process si cela a réussi et l’équipement sera ensuite créé (vous pouvez surveiller l’avancement via le log si nécessaire)
- Lorsque la procédure de découverte est terminée, vous pouvez à nouveau utiliser votre application mobile iRobot si nécessaire.

# Historique

Ce plugin a été initialement créé par @kavod (Brice Grichy).
Le plugin a ensuite été repris par @vedrine

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
