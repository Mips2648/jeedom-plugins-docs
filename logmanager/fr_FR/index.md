---
layout: default
title: Documentation LogManager
lang: fr_FR
pluginId: logmanager
---

# Description

Plugin permettant une gestion de log personnalisée dans vos scénarios.
Il est possible de créer autant de log que voulu, différent niveau de log sont possible pour chaque fichier de log.
Cela permet d'organiser vos logs de scénario selon vos préférences, de par exemple regrouper toutes les actions sur un équipement dans le même log quelque soit le scénario.

La consultation des logs se fait via l'interface standard de Jeedom.
La purge des logs est également gérée par la config générale de Jeedom.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration de l'équipement

Le plugin se trouve dans le menu Plugins > Programmation.
Après avoir créé un nouvel équipement, les options habituelles sont disponible.

Un équipement correspond à un log, le nom de l'équipement sera utilisé comme nom du fichier log.

> **Tip**
>
> Afin d'éviter des problèmes potentiels, le nom de l'équipement doit être uniquement composé des lettres de a à z, en miniscule ou en majuscule, et du caractère souligné "_", le première caractère doit être une lettre.

De plus, vous pouvez sélectionner le niveau de log à écrire: Debug, Info, Warning, Erreur.

# Les commandes

Chaque équipement (log) dispose d'une commande de type message par niveau de log:

- debug
- info
- warning
- error

Il suffit d'appeler la commande voulue avec le message et le log sera écrit en fonction du niveau de log configuré sur l'équipement.

Selon la configuration, un événement sera généré par le plugin (seulement si le message est réellement écrit dans le log).
Cet événement peut-être utilisé comme déclencheur de scénario, c'est utile si vous voulez effectuer des actions personnalisées suite à un certain niveau de log écrit:

- #lm-debug#
- #lm-info#
- #lm-warning#
- #lm-error#

Il existe également les commandes suivantes qui ont le même comportement que les actions manuels correspondantes sous Jeedom:

- **Vider**: vider le fichier de log
- **Supprimer**: supprimer le fichier de log

# Le widget

Il y a deux options:

- soit le contenu du log sera affiché sur la tuile, sans les commandes de l'équipement.
- soit un widget standard sera affiché avec les commandes sélectionnées (à configurer dans la page "Commandes" de l'équipement).

Le choix s'effectue dans la configuration de l'équipement.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
