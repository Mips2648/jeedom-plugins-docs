---
layout: default
title: Documentation SmartMeter P1
lang: fr_FR
pluginId: SmartMeterP1
---

# Description

Ce plugin permet de se connecter à [cette passerelle](https://www.domohab.be/categorie-produit/passerelle/) connectée à votre compteur afin de récupérer toutes les infos transmises par celui-ci via le port P1.

Cela fonctionne aussi bien pour les compteurs tri-phasé que mono-phasé.

# Versions supportées

| Composant | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.
Il faut ensuite installer les dépendances.

# Configuration du plugin

Dans la configuration du plugin, vous pouvez éventuellement configurer le cycle qui défini le délai entre chaque remontée d'information à Jeedom.
La valeur par défaut devrait convenir pour la plupart mais vous pouvez l'adapter si nécessaire. Il est inutile de descendre en dessous de 1s puisque le compteur ne retourne les infos que chaque seconde.

Démarrez ou redémarrez le démon.

# Les équipements

Le plugin se trouve dans le menu Plugins → Energie.

Chaque équipement correspondra à une passerelle connectée à un compteur. Donc vous devez commencer par ajouter un équipement et donner un nom.
Dans la configuration de l'équipement, vous verrez les paramètres habituels communs à tous les équipements Jeedom.

En dessous, complétez l'adresse IP de votre passerelle et le port que vous avez configuré, par défaut 8088.

Activez l'équipement et sauvegardez et dans les secondes qui suivent les commandes devraient être mises à jour.

# Les commandes

Il y a des commandes actualisées selon la fréquence définie dans la configuration du plugin:

- l'énergie prélevée et injectée pendant les heures pleines et les heures creuses ainsi que les sommes respectives.
- la puissance prélevée et injectée instantanée ainsi que la puissance nette, égale à la puissance prélevée - la puissance injectée (qui sera utile pour vos scénarios et intégrations avec d'autres plugins)
- la tension et l'intensité sur les 3 phases. Si certaines de ces commandes restent à zéro c'est normal, cela dépend si votre raccordement est en mono-phasé ou tri-phasé et du type de tri-phasé (avec ou sans neutre) que vous avez.

Chaque minute, le plugin calculera également les infos suivantes, également disponibles via des commandes:

- Energie prélevée sur la journée et sur le mois
- Energie injectée sur la journée et sur le mois

Ces compteurs sont donc remis à zéro à minuit chaque jour ou chaque dernier jour du mois.

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

# Vous aimez le plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
