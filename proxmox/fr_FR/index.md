---
layout: default
title: Documentation Proxmox
lang: fr_FR
pluginId: proxmox
---

<img width="77" alt="{{page.pluginId}}" src="https://www.jeedom.com/market/filestore/market/plugin/images/{{page.pluginId}}_icon.png">

# Description

Plugin permettant la gestion d'un serveur Proxmox.
Il est possible de récupérer toutes les ressources (noeuds, vms, stockage...) et toutes leurs propriétés (statut, mémoire, CPU, disque, adresse IP, temps d'activité, list des snapshots...)
Le plugin permet aussi de démarrer et arrêter les VMs et les containers ainsi que de prendre des snapshots et des backups.
Il dispose également d'une page santé spécifique résumant l'ensemble des informations de vos équipements.

# Installation

Afin d’utiliser le plugin, vous devez le télécharger, l’installer et l’activer comme tout plugin Jeedom.

# Configuration utilisateur Proxmox

> **Tip**
>
> Il est recommandé de créer un utilisateur local dédié à Jeedom et c'est ce qui est documenté ici, d'autres configurations sont possibles bien entendu tant que Jeedom dispose d'un utilisateur ayant accès aux ressources Proxmox que vous voulez surveiller.

La création d'un utilisateur Proxmox ne va pas être documentée en détails ici, seulement les informations principales, il est préférable que vous utilisiez la documentation officielle de Proxmox pour les détails.

Cette configuration se fait sur le "datacenter" dans l'interface de Proxmox, menu "Permissions"

## Création de l'utilisateur

Dans le menu Permissions>Users, cliquez sur "Add" et remplissez l'écran suivant:

![Proxmox user](../images/proxmox_user.png "Proxmox user")

> **Important**
>
> Sélectionnez le realm "Proxmox VE authentication server" sinon vous ne pourrez pas choisir le mot de passe ici.

Retenez le nom d'utilisateur et le mot de passe choisi, c'est ce qu'il faudra configurer dans le plugin.

## Attribution des permissions

Nous avons créé un nouvel utilisateur sous Proxmox mais celui-ci n'a encore aucun accès.

Dans le menu principal "Permissions", cliquez sur sur "Add" puis "User permission" et remplissez l'écran suivant selon les permissions que vous voulez accorder à Jeedom (voir la documentation de Proxmox pour plus de détails):

![Proxmox permissions](../images/proxmox_permissions.png "Proxmox permissions")

> **Tip**
>
> La configuration illustrée ci-dessus donne des droits d'administrations complets à l'utilisateur jeedom@pve sur la totalité des ressources Proxmox.

# Configuration du plugin

Il faut saisir les informations suivantes dans la configuration du plugin:

- adresse IP de votre serveur (ou d'un des noeuds du cluster si vous en avez plusieurs)
- le port si différent du port par défaut (8006)
- un nom d'utilisateur et son mot de passe
- le royaume d'authentification de l'utilisateur, si différent de "pve" (="Proxmox VE authentication server", royaume par défaut pour les utilisateurs créés localement sur Proxmox, voir documentation de Proxmox)

![Configuration plugin](../images/plugin_config.png "Configuration plugin")

Vous pouvez vérifier si la configuration du plugin est correcte grâce à la page santé (menu Analyse > Santé)

![Santé plugin](../images/plugin_health.png "Santé plugin")

Si la connexion est réussie, la version de votre serveur Proxmox sera affichée.

# Fonctionnement du plugin

Dès qu'un utilisateur sera configuré, le plugin essaiera de se connecter à Proxmox toutes les minutes afin de se synchroniser.

Tous les équipements auxquels le plugin a accès seront automatiquement créés dans Jeedom, il n'est pas possible de créer un équipement manuellement.

Il est possible de faire une synchronisation manuelle via le bouton dans la page des équipements.

# Les commandes disponibles

## Les noeuds

Ces équipements disposent de plusieurs commandes info donnant le temps d'activité, l'utilisation CPU, disque et mémoire ainsi que des informations sur le nombre et le type de CPU et la version du kernel utilisé.
Les commandes actions suivantes sont également disponibles:

- **Redémarrer le noeud**: Arrête toutes les VMs et redémarre le noeud
- **Arrêter le noeud**: Arrête toutes les VMS et le noeud
- **Démarrer tout**: Démarre toutes les machines et les containers qui ont l'option "Démarrage automatique" activée
- **Arrêter tout**: Arrête toutes les machines virtuelles et les containers

## Les machines virtuelles & containers

Plusieurs commandes info existent donnant entre autre le statut, le nombre de CPU et leur utilisation, la mémoire totale et l'utilisation, le temps d'activité, les adresses IPv4 et IPv6.

> **Tip**
>
> Pour remonter les adresses IP, il est nécessaire d'installer l'agent Proxmox sur les VMs et de l'activer (voir documentation Proxmox). Cet agent assurera aussi un état stable de votre VM lors des sauvegardes et snapshots.

Les commandes actions suivantes sont également disponibles:

- **Démarrer**: Démarre la machine virtuelle ou le container.
- **Arrêter**: Cela déclenche un arrêt propre de la machine virtuelle ou du container.
- **Arrêter immédiatement**: Cela coupe immédiatement et brutalement la machine virtuelle ou le container, cela peut endommager les données.
- **Pause**: Suspend la machine virtuelle ou le container
- **Reprendre**: Relance la machine virtuelle ou le container après avoir été suspendu
- **Snapshot**: permet de prendre un snapshot, il est possible de donner le nom du snapshot (optionnel). Le nom doit être composé exclusivement de lettre et de chiffre ainsi que du caractère tiret bas (_) et doit commencer par une lettre. Si aucun nom n'est fourni ou si le nom n'est pas valide, un nom aléatoire sera généré par le plugin.
- **Backup**: permet de prendre une sauvegarde. Cette commande (de type message) a un champ 'email' qui peut contenir une adresse email à laquelle sera envoyé une notification une fois la sauvegarde terminée (email envoyé par votre serveur Proxmox) et un champ 'Options' dans lequel il faut indiquer chaque option voulue sous la forme option=valeur; voir le tableau ci-dessous pour la liste des options disponibles.

Nom | Description | Format | Valeur par défaut
- | - | - | -
storage | Emplacement du backup | Nom de la ressource de type stockage qui doit être configurée pour le type de contenu 'backup' et avoir le statut 'available'. Attention de respecter la casse. | Par défaut, le premier stockage respectant les critères est utilisé.
mode | Mode du backup | les valeurs possibles sont: `snapshot|suspend|stop` | `snapshot`
compress | Compression backup | les valeurs possibles sont: `0|gzip|lzo` | `lzo`
mailnotification | Spécifie quand envoyer une notification | les valeurs possibles sont: `always|failure` | `always`
remove | Supprime les anciennes sauvegardes s'ils y en a plus que le maximum configuré pour le stockage choisi (voir configuration Proxmox)| les valeurs possibles sont: `0|1` | `1`

## Les stockages

Des commandes info donnent l'usage disque ainsi que le status de l'équipement.

Il est également possible de visualiser le type de contenu de celui-ci (backup, iso, disques des vms...); cette information est utile lors de l'utilisation de la commande "Backup" des machines virtuelles.

# Changelog

[Voir le changelog](./changelog)

# Support

Si malgré cette documentation et après voir lu les sujets en rapport avec le plugin sur [community]({{site.forum}}/tags/plugin-{{page.pluginId}}) vous ne trouvez pas de réponse à votre question, n'hésitez pas à créer un nouveau sujet en n'oubliant pas de mettre le tag du plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tags/plugin-{{page.pluginId}})).
