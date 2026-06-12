---
layout: default
title: Changelog Portainer
lang: de_DE
pluginId: portainer
---

# Beta

- Aktualisierung von Abhängigkeiten

# Stall

## 2025-04-18

- Korrekturen im Panel: Einige Übersetzungen wurden nicht übernommen
- Aktualisierung von Abhängigkeiten

## 2025-02-22

- Aktualisierung von Abhängigkeiten
- Aktualisierung des Symbols

## 2024-09-16

- Optimierungen
- Aktualisierung von Abhängigkeiten
- Übersetzung des Plugins ins Englische, Deutsche, Spanische, Italienische und Portugiesische
- Hinzufügen von Befehlen für containerartige Geräte: **Zustand**, **Läuft**, **Paused**, **Restarting**, **Dead**, **OOMKilled** [(Siehe Dokumentation)]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
- Mindestanforderung: Debian 11

## 2023-05-20

- Auf der Statusseite wurden Informationen zur neuesten verfügbaren Version von Portainer.io hinzugefügt (erfordert Portainer.io >= 2.17) + Meldung im Benachrichtigungscenter
- Verbesserung der Passwortfelder
- Kompatibilität mit Jeedom v4.4
- Links zur Beta-Dokumentation hinzugefügt

## 2022-10-17

- Aktualisierung der Darstellung der Befehle für Jeedom v4.3

## 2022-07-15

- Aktualisierung interner Bibliotheken

## 2022-02-09

- Hinzufügen einer tabellarischen Ansicht der Geräteliste für Jeedom 4.2

## 2021-08-21

- Hinzufügen eines Befehls _Status_ für Geräte der Typen **Agent** und **Docker**
- Behebung eines Synchronisierungsproblems, wenn ein Endpunkt offline ist

## 2021-05-19

- Unterstützung für Portainer-Instanzen vom Typ **Agent** hinzugefügt
- Es wurden Info-Befehle hinzugefügt, die die Anzahl der Container, Volumes, Images, Dienste und Stacks auf Geräten der Typen **Agent** und **Docker** anzeigen

## 2021-02-08

- Hinzufügen eines Befehls „_Public URL_“ zum Docker-Gerät
- Auf der Konfigurationsseite des Geräts wird nun das für den Container verwendete Bild angezeigt
- Behebung eines Problems, bei dem Container im Panel doppelt angezeigt wurden, wenn mehrere Docker-Instanzen verwendet wurden (nach der Aktualisierung des Plugins muss eine manuelle Synchronisierung erzwungen werden, damit die Statusseite die korrekten Informationen anzeigt)

## 2021-01-06

- Neue Darstellung der Ausrüstungsliste nach Kategorien: Docker & Container

## 2020-12-02

- Neue Darstellung der Objektliste
- Verbesserung des Layouts der Gerätekonfiguration und der Bedienelemente

## 2020-09-06

- Der Befehl „refresh“ funktionierte auf einem Gerät vom Typ _Docker_ nicht
- Hinzufügen der Portainer-Versionsnummer auf der Statusseite
- Hinzufügen einer Option in der Plugin-Konfiguration zur Auswahl des automatischen Synchronisationsmodus

## 2020-08-22

- Neue Gesundheitsseite, die eine Übersicht über alle Container anzeigt und die Durchführung aller grundlegenden Aktionen ermöglicht (ähnlich wie die Seite „Containers“ auf portainer.io)
- Ein neues Panel (das in den Plugin-Einstellungen aktiviert werden muss) enthält dieselben Informationen und Funktionen wie die Statusseite.
- Es wurde eine Konfigurationsoption zum Plugin hinzugefügt, mit der Sie das Standard-Überobjekt festlegen können, das beim Erstellen eines neuen Containers verwendet wird. So müssen Sie dies nicht jedes Mal manuell tun.
- Bei einer Synchronisierung aktiviert und deaktiviert das Plugin automatisch die Jeedom-Geräte, die den Containern entsprechen, je nachdem, ob diese in Docker vorhanden sind oder nicht, um die Verwaltung Ihrer Container zu vereinfachen und für mehr Übersichtlichkeit zu sorgen.
- Wenn ein Container in Docker gelöscht und neu erstellt wird, erstellt das Plugin kein neues Jeedom-Gerät mehr, sondern aktualisiert das vorhandene Gerät, sofern es dieses wiederfindet (der neue Container muss denselben Namen haben und sich auf derselben Docker-Instanz befinden wie der alte); Dies wird auch den Wartungsaufwand auf der Jeedom-Seite erheblich reduzieren.
- Hinzufügen von Befehlen zur Anzeige von Netzwerkinformationen für Container (IP, MAC, Gateway)
- Hinzufügen der Liste der vom Container veröffentlichten Ports mit einem Link zu diesem (sichtbar in der Gerätekonfiguration sowie auf der neuen Übersichtsseite)
- Beim Löschen eines Jeedom-Geräts werden auch die zu den Containern gehörenden Protokolle aus Ihrem Jeedom gelöscht, um die Wartung zu vereinfachen.
- Geräte vom Typ „Docker“ werden zur besseren Erkennbarkeit mit einem anderen Symbol als Geräte vom Typ „Container“ versehen.

## 2020-03-30

- Verlegung der Unterlagen

## 2020-03-19

Es wurde eine Option hinzugefügt, um die Ausgabe von stdout und stderr während der Gerätesynchronisierung abzurufen. Um die Option zu aktivieren, müssen Sie zur Geräteseite zurückkehren und die Konfiguration speichern.

## 2020-03-10

Erste Fassung

# Dokumentation

[Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
