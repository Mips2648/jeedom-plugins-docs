---
layout: default
title: Changelog Proxmox
lang: fr_FR
pluginId: proxmox
---

# 2020-12-02

- Ajout d'une config sur le plugin permettant de définir l'objet parent par défaut qui sera utilisé lors de la création d'une nouvelle ressource, cela vous évitera d'avoir à systématiquement le faire à la main.
- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

# 2020-08-25

- Mise à jour de l'icône du plugin pour correspondre au standard Jeedom
- Ajout d'une icône par type de ressource Proxmox pour plus de clarté
- Lors d'une synchronisation, le plugin activera et désactivera automatiquement les équipements Jeedom correspondant aux ressources Proxmox selon qu'ils existent ou pas afin de faciliter la gestion et d'apporter plus de clarté.
- Ajout d'un menu accordéon dans la page des équipements

# 2020-06-09

- Ajout du support du mode de compression Zstandard (zstd) dans les options de backup, nécessite Proxmox 6.2

# 2020-03-30

- Déplacement de la documentation
- Ajout d'une commande "Redémarrer" sur les VM

# 2020-02-12

- Ajout des commandes "Démarrer tout" et "Arrêter tout" sur les noeuds
- Ajout des commandes "Arrêter le noeud" et "Redémarrer le noeud"
- Ajout des commandes "Pause" et "Reprendre" sur les VM et LXC

# 2019-11-23

- Ajout d'une page santé spécifique listant un aperçu de tous les équipements Proxmox

# 2019-11-16

- Ajout d'un champ pour entrer une description (optionnelle) lors de la prise de snapshot. Si vous avez des scénarios utilisant cette commande veuillez les vérifier.
- Ajout d'une commande "Liste des snapshots" sur VM et LXC
- Ajout d'une commande donnant le pourcentage d'utilisation pour la mémoire, le disque et le swap sur tous les équipements concernés
- suppression des commandes vmid et Noeud sur tous les équipements
- Fixe: le status "paused" est précisé correctement sur une VM ou un container en pause
- Fixe: il est à présent possible de renommer l'équipement dans Jeedom avec un nom différent que celui dans Proxmox

# 2019-11-12

- Ajout d'information de configuration sur les VMs (agent, processeurs, mémoires, réseau)
- Ajout de commandes information IPv4, IPv6 et adresse MAC sur les VMs
- Ajout de la version PVE sur la page de configuration du noeud
- Ajout de commandes donnant la charge moyenne sur le noeud
- Ajout d'une commande donnant l'utilisation du swap
- Ajout d'une commande binaire indiquant si des mises à jour sont disponibles sur le noeud

# 2019-11-05

- Ajout d'information supplémentaire sur les équipements de stockage
- Ajout d'une commande Backup pour les VMs (vérifier la documentation pour toutes les options)

# 2019-10-28

- Fixe une erreur (non bloquante) survenant au démarrage et à l'arrêt du plugin
- Ajout des traductions pour en_US

# 2019-10-26

- Ajout d'information supplémentaire sur les noeuds
- Ajout d'une commande Rafraichir sur les noeuds

# 2019-10-22

- Ajout du support des containers linux (LXC)
- Ajout d'une commande pour prendre un snapshot sur VM et LXC
- Ajout d'une commande Démarrer, Arrêter et Arrêter immédiatement sur VM et LXC (voir la documentation)
- Ajout d'une commande Rafraichir sur VM et LXC
- Fixe problème de connexion à Proxmox quand le certificat est invalide

# 2019-10-21

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
