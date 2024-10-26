---
layout: default
title: Changelog Proxmox
lang: fr_FR
pluginId: proxmox
---

# Beta

- Diminution des timeouts lors des requêtes à Proxmox
- Correction d'une erreur dans le cas où l'un des noeuds d'un cluster est déconnecté (dans le cas d'une installation avec de multiples noeuds)
- Mise à jour de dépendances
- Jeedom v4.4 requis

# Stable

## 2024-09-16

- Mise à jour de dépendances
- Traduction du plugin en Anglais, Allemand, Espagnol, Italien, Portugais
- Version Debian 11 minimum requise

## 2024-07-02

- La case à cocher *Activer* est désormais en lecture seule car mis à jour lors de la synchronisation
- Fix pour Debian 12 si la config Proxmox est incorrecte et que par conséquent le plugin n'a pas accès à l'entièreté de l'information à laquelle il essaye d'accéder

## 2024-04-11

- Mise à jour de dépendances

## 2024-03-18

- Ajout d'une commande **Supprimer snapshot** sur VM et LXC

## 2023-05-20

- Changement sur le nommage des équipements de type *stockages* pour éviter les conflits dans le cas d'utilisation avec un cluster de noeuds.
- Le champ *Nom de l'équipement* est désormais en lecteur seule car le nom de l'équipement est défini par le processus de synchronisation et ne peut donc pas être modifié.
- Ajout des commandes info **Nombre de tâches en erreur** et **Erreurs** sur les équipements *Noeud*; le nombre d'heure à prendre en compte pour la vérification se configure par équipement.
- Amélioration des champs password
- Compatibilité Jeedom v4.4
- Ajout des liens vers la documentation en beta

## 2022-10-17

- Mise à jour de la présentation des commandes pour Jeedom v4.3

## 2022-07-15

- Mise à jour de librairies internes

## 2022-02-11

- Amélioration: possibilité de configurer une liste d'IP, séparée par une virgule, dans la config du plugin (vers des noeuds différents d'un même cluster) pour assurer la résilience
- Changements mineurs de présentation des écrans de configuration

## 2021-12-27

- Ajout d'une commande info **Noeud** sur VM et LXC qui retourne le noeud sur lequel tourne la VM (utile si vous avez plusieurs noeuds dans le cluster)
- Ajout d'une commande **Redémarrer** (reboot) qui fera un redémarrage plus propre des VMs, la commande **Redémarrer immédiatement** (reset) existe toujours.
- Ajout d'un panel et refonte de la page santé. Vous devez activez le panel dans la configuration du plugin.
  - Organisation des ressources par noeud;
  - Tri des ressources (même ordre que sous Proxmox: LXC, VM, stockage);
  - Possibilité d'exécuter les actions ((re)Démarrer, Pause, Arrêter...) sur les VMs et LXC depuis le panel;
- Ajout de plus d'information de config sur les LXC
- Ajout de commandes info sur les noeuds donnant le nombre de VM/LXC démarré et arrêté ([Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Ajout de la présentation en mode tableau de la liste des équipements pour Jeedom 4.2
- Amélioration: Les équipements qui sont des templates de VM et de LXC ont une icône différente pour les identifier plus facilement
- Amélioration: passage de la synchronisation en démon pour pouvoir augmenter la fréquence d'actualisation, celle-ci est paramétrable dans la configuration du plugin.
- Amélioration: la commande **Mises à jour disponibles** est maintenant une commande info/numérique au lieu de info/binaire comme cela aurait dû être depuis le début, veuillez vérifier vos scénarios.
- Diverses améliorations de l'interface
- bugfix mineurs

## 2020-12-02

- Ajout d'une config sur le plugin permettant de définir l'objet parent par défaut qui sera utilisé lors de la création d'une nouvelle ressource, cela vous évitera d'avoir à systématiquement le faire à la main.
- Nouvelle présentation de la liste des objets
- Amélioration de la mise en page de la configuration de l'équipement et des commandes

## 2020-08-25

- Mise à jour de l'icône du plugin pour correspondre au standard Jeedom
- Ajout d'une icône par type de ressource Proxmox pour plus de clarté
- Lors d'une synchronisation, le plugin activera et désactivera automatiquement les équipements Jeedom correspondant aux ressources Proxmox selon qu'ils existent ou pas afin de faciliter la gestion et d'apporter plus de clarté.
- Ajout d'un menu accordéon dans la page des équipements

## 2020-06-09

- Ajout du support du mode de compression Zstandard (zstd) dans les options de backup, nécessite Proxmox 6.2

## 2020-03-30

- Déplacement de la documentation
- Ajout d'une commande **Redémarrer** sur les VM

## 2020-02-12

- Ajout des commandes **Démarrer tout** et **Arrêter tout** sur les noeuds
- Ajout des commandes **Arrêter le noeud** et **Redémarrer le noeud**
- Ajout des commandes **Pause** et **Reprendre** sur les VM et LXC

## 2019-11-23

- Ajout d'une page santé spécifique listant un aperçu de tous les équipements Proxmox

## 2019-11-16

- Ajout d'un champ pour entrer une description (optionnelle) lors de la prise de snapshot. Si vous avez des scénarios utilisant cette commande veuillez les vérifier.
- Ajout d'une commande **Liste des snapshots** sur VM et LXC
- Ajout d'une commande donnant le pourcentage d'utilisation pour la mémoire, le disque et le swap sur tous les équipements concernés
- suppression des commandes vmid et Noeud sur tous les équipements
- Fixe: le statut *paused* est précisé correctement sur une VM ou un container en pause
- Fixe: il est à présent possible de renommer l'équipement dans Jeedom avec un nom différent que celui dans Proxmox

## 2019-11-12

- Ajout d'information de configuration sur les VMs (agent, processeurs, mémoires, réseau)
- Ajout de commandes information IPv4, IPv6 et adresse MAC sur les VMs
- Ajout de la version PVE sur la page de configuration du noeud
- Ajout de commandes donnant la charge moyenne sur le noeud
- Ajout d'une commande donnant l'utilisation du swap
- Ajout d'une commande binaire indiquant si des mises à jour sont disponibles sur le noeud

## 2019-11-05

- Ajout d'information supplémentaire sur les équipements de stockage
- Ajout d'une commande Backup pour les VMs (vérifier la documentation pour toutes les options)

## 2019-10-28

- Fixe une erreur (non bloquante) survenant au démarrage et à l'arrêt du plugin
- Ajout des traductions pour en_US

## 2019-10-26

- Ajout d'information supplémentaire sur les noeuds
- Ajout d'une commande Rafraichir sur les noeuds

## 2019-10-22

- Ajout du support des containers linux (LXC)
- Ajout d'une commande pour prendre un snapshot sur VM et LXC
- Ajout d'une commande Démarrer, Arrêter et Arrêter immédiatement sur VM et LXC (voir la documentation)
- Ajout d'une commande Rafraichir sur VM et LXC
- Fixe problème de connexion à Proxmox quand le certificat est invalide

## 2019-10-21

Première version stable

# Documentation

[Voir la documentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
