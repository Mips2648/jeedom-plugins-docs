---
layout: default
title: Documentation Solaredge
lang: fr_FR
pluginId: onduleursolaredge
---

# Description

Le plugin permet de lire les données de production photovoltaïque d'un site SolarEdge via l'API de monitoring v2.

Les informations disponibles sont:

- la puissance de production photovoltaïque;
- l'énergie produite, selon la période choisie;
- l'énergie totale produite depuis la mise en service du site;
- les caractéristiques du site et de ses équipements.

> **Important**
>
> SolarEdge impose un accès externe à Jeedom en **HTTPS avec un certificat valide**.\
> Vous ne pourrez pas utiliser le plugin sans avoir cet accès.

# Versions supportées

| Composant | Version                   |
|-----------|---------------------------|
| Debian    | Bookworm(12) & Trixie(13) |
| Jeedom    | >= 4.5                    |
| PHP       | >= 8.2                    |

# Installation

> **Tip**
>
> Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration

## Connexion à SolarEdge

> **Important**
>
> L'API v2 utilise une authentification OAuth. L'ancienne clé API ne permet plus de configurer cette version du plugin.

### Obtention du Client Id et du Client Secret

Vous devez disposer d'un **Client Id** et d'un **Client Secret** pour l'accès OAuth SolarEdge. Si vous ne disposez pas encore de ces identifiants, suivez la procédure ci-dessous.

> **Important**
>
> SolarEdge impose un accès externe à Jeedom en **HTTPS avec un certificat valide**. Une adresse interne ou une adresse sans HTTPS ne peut pas être utilisée comme URL de redirection.

1. Rendez-vous sur la [plateforme développeur SolarEdge](https://developer.solaredge.com/) et créez un compte.
2. Créez une application. Les seuls paramètres obligatoires sont le **nom** de l'application et l'**URL de redirection**.
3. Pour l'URL de redirection, indiquez l'adresse externe de Jeedom suivie de `/plugins/onduleursolaredge/core/php/oauth.php`, par exemple: `https://monjeedom.mondomaine.com/plugins/onduleursolaredge/core/php/oauth.php`.
4. Générez les identifiants de l'application (les « credentials ») en activant **tous les scopes disponibles** (autorisations d'accès): `SITE_DATA` et `DEVICE_DATA`. Le **Client Id** et le **Client Secret** obtenus seront à renseigner dans la configuration du plugin.

### Liaison entre Jeedom et SolarEdge

1. Vérifiez que l'adresse d'accès externe de Jeedom est correctement configurée dans sa configuration réseau et accessible depuis le navigateur utilisé pour l'autorisation.
2. Dans la configuration du plugin, renseignez les champs **Client Id** et **Client Secret**, puis sauvegardez.
3. Cliquez sur **Lier Jeedom et SolarEdge** et confirmez l'ouverture de la fenêtre d'autorisation.
4. Connectez-vous avec votre compte SolarEdge et approuvez la liaison.
5. Après le retour dans Jeedom, cliquez sur **Actualiser** pour vérifier que le statut est **OK**.

Le plugin conserve les jetons d'accès et les renouvelle automatiquement. Si le statut indique qu'une autorisation est nécessaire, relancez la liaison.

## Création de l'équipement dans votre Jeedom

1. Ouvrez le menu **Plugins**, puis **Energie** et **Solaredge**.
2. Cliquez sur **Ajouter** et donnez un nom à l'équipement.
3. Renseignez l'**ID du site** SolarEdge auquel votre compte a accès.
4. Configurez l'objet parent, les options **Activer** et **Visible**, puis sauvegardez.

Les informations du site sont chargées à la sauvegarde si la date d'installation n'est pas encore connue. Le bouton **Recharger les détails du site** permet de les actualiser: type, date d'installation, puissance crête, fabricant, modèle et nombre d'optimiseurs.

## Configuration des commandes

La commande d'action **Rafraîchir** est créée automatiquement.

Un même équipement peut contenir plusieurs commandes info de production, ajoutez les commandes souhaitées avec le bouton **Ajouter une commande**.

Pour chaque commande, renseignez un nom, la donnée à récupérer, la période et l'unité. Les commandes ajoutées sont de type information numérique. Vous pouvez choisir de les afficher et de les historiser.

| Donnée | Périodes disponibles | Unités disponibles |
| -------- | ---------------------- | -------------------- |
| Production photovoltaïque (puissance) | Quart d'heure, heure | W, kW, MW |
| Production photovoltaïque (énergie) | Quart d'heure, heure, jour, semaine, mois, année, total | Wh, kWh, MWh |
| Production photovoltaïque totale | Total | Wh |

La commande de type **Production photovoltaïque totale** fournit l'énergie produite depuis la mise en service du site en lisant un compteur d'énergie cumulée intégré aux équipements, plutôt que d'additionner les mesures reçues pour chaque intervalle. SolarEdge utilise le compteur du compteur de production si le site en possède un, ou la somme de ces compteurs s'il en possède plusieurs. À défaut, la valeur correspond à la somme des compteurs d'énergie cumulée des onduleurs. Contrairement à la commande **Production photovoltaïque (énergie)** avec la période **Total**, cette valeur n'est pas affectée par les lacunes de l'historique de transmission: elle reflète la valeur réelle des compteurs, et non la somme des seuls intervalles reçus.

### Rafraîchissement

Chaque commande d'information dispose également d'un champ cron pour planifier sa propre actualisation. Le bouton **?** ouvre l'assistant cron de Jeedom.

Laissez le cron d'une commande vide si vous ne souhaitez pas lui ajouter de planification individuelle. La commande **Rafraîchir** actualise toutes les commandes d'information de l'équipement, y compris celles qui ont leur propre cron. Elle peut aussi être appelée depuis un scénario.

Chaque commande actualisée effectue sa propre requête: adaptez les fréquences au nombre de commandes et aux limites applicables à votre accès SolarEdge.

### Valeurs récupérées

Pour les commandes de puissance et d'énergie, le plugin demande les mesures depuis le début de la période précédente jusqu'au moment de la requête, puis retient la dernière valeur numérique disponible dans la réponse.

Si le dernier point vaut `null`, par exemple parce que le quart d'heure en cours n'est pas encore disponible, le plugin utilise le point numérique précédent. Une valeur de `0` est conservée. La valeur affichée ne correspond donc pas nécessairement à une mesure instantanée.

Si aucune valeur numérique n'est disponible, la commande n'est pas mise à jour et un avertissement est écrit dans les logs. Pour la production totale, la valeur est lue directement dans le champ d'énergie renvoyé par SolarEdge.

## Migration depuis l'API v1

> **Attention**
>
> La migration vers l'API v2 nécessite de reconfigurer la connexion et les équipements. Les anciens équipements sont désactivés à la mise à jour; leurs anciennes tâches de rafraîchissement sont supprimées.

1. **Créer votre compte** sur la [plateforme développeur SolarEdge](https://developer.solaredge.com/)
2. **Configurer la liaison OAuth** dans la configuration du plugin (Client Id + Client Secret).
3. **Créer les nouveaux équipements** en renseignant l’ID de site.
4. **Ajouter les commandes** souhaitées (puissance, énergie par période, énergie totale).
5. **Configurer les planifications** de rafraîchissement.
6. **Vérifier les valeurs reçues**.
7. **Adapter vos scénarios, widgets, virtuels, design**, etc. (vous pouvez utiliser l'outil *Remplacer* du core pour cela).
8. Une fois tout validé, **supprimer les anciens équipements v1**.

# Changelog

[Voir le changelog](./changelog)

# Support

Si vous avez un problème, commencez par lire les derniers sujets en rapport avec le plugin sur [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si malgré tout vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Il faudra au minimum fournir:

- une capture d'écran de la page santé Jeedom
- une capture d'écran de la page de config du plugin, en masquant le Client Id et le Client Secret
- tous les logs disponibles du plugin, en niveau *INFO*, collés dans un `Texte préformaté` (bouton `</>` sur community), pas de fichiers! Pour un problème de données, le niveau *DEBUG* permet de voir les réponses de l'API.
- selon les cas, une capture d'écran de l'erreur rencontrée, une capture d'écran de la configuration posant problème...

Avant de publier des captures ou des logs, masquez les identifiants, les jetons OAuth et toute donnée personnelle.
