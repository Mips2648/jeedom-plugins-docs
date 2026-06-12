---
layout: default
title: Dokumentation Portainer
lang: de_DE
pluginId: portainer
---

# Beschreibung

Plugin zur Verbindung mit einem [portainer.io](https://www.portainer.io/portainer-ce/)-Server, einer Lösung zur Verwaltung von Docker-Containern, die sich selbst ganz einfach in einem Container installieren lässt.
Mit diesem Plugin lassen sich in Jeedom alle unter [portainer.io](https://www.portainer.io/portainer-ce/) konfigurierten Docker-Instanzen sowie deren Container abrufen.

Das Plugin verfügt außerdem über eine Statusseite und ein eigenes Dashboard, das eine Übersicht über alle Container bietet und die Durchführung aller grundlegenden Aktionen ermöglicht, ähnlich wie die Seite „Containers“ auf [portainer.io](https://www.portainer.io/portainer-ce/).

# Unterstützte Versionen

| Komponente | Version |
|-----------|-----------------------------|
Debian | Bullseye (11) & Bookworm (12)
| Jeedom    | >= 4.2 |

# Installation

Um das Plugin zu nutzen, müssen Sie es wie jedes andere Jeedom-Plugin herunterladen, installieren und aktivieren.
Sie benötigen bereits einen Portainer.io-Server; die verschiedenen Möglichkeiten hierfür sind auf der Website sehr gut dokumentiert.

# Einrichtung des Plugins

In den Plugin-Einstellungen müssen Sie die Portainer-URL im Format `http://PORTAINER_SERVER:9000` sowie einen Benutzernamen und ein Passwort eingeben.

Sie können außerdem festlegen, ob das Panel aktiviert werden soll oder nicht, sowie das übergeordnete Objekt, das bei der Erstellung von Jeedom-Geräten verwendet wird: Wenn unter diesem Objekt noch kein Gerät mit demselben Namen existiert, wird das neue Portainer-Gerät dieses Objekt als übergeordnetes Objekt haben, andernfalls „Keines“.
Außerdem kann man zwischen zwei Modi für die automatische Synchronisierung wählen:

- entweder neue Container erstellen, die unter Jeedom noch nicht vorhanden sind, und die bestehenden Container aktualisieren
- oder nur die vorhandenen Container aktualisieren

> **Typ**
>
> Die auf der Seite „Geräte“ verfügbare Funktion „Synchronisieren“, mit der eine manuelle Synchronisierung erzwungen werden kann, erstellt immer die fehlenden Container. Die oben genannte Option gilt nur für die automatische Synchronisierung

# Die Ausstattung

Sobald ein Benutzer eingerichtet ist, versucht das Plugin, sich alle Minuten mit portainer.io zu verbinden, um die Daten zu synchronisieren.
Alle Geräte, auf die das Plugin Zugriff hat, werden automatisch in Jeedom angelegt; es ist nicht möglich, ein Gerät manuell anzulegen.
Über die Schaltfläche auf der Seite „Geräte“ kann eine manuelle Synchronisierung durchgeführt werden.

Es gibt zwei Möglichkeiten, die Protokolle der Ausgänge „stdout“ und „stderr“ in Jeedom zu übertragen. Sind die entsprechenden Optionen am Gerät aktiviert, werden die Protokolle bei jeder Synchronisierung des Geräts eingelesen und sind über die Protokolloberfläche von Jeedom abrufbar.

# Verfügbare Befehle

## Endpunkt

Auf Endpunkt-Geräten (Docker-Instanz, Portainer-Agent...) stehen folgende Info-Befehle zur Verfügung:

- **Status** ist entweder 1 oder 0, je nachdem, ob das Gerät eingeschaltet und erreichbar ist oder nicht
- **Anzahl der CPUs** gibt die Anzahl der CPUs des Rechners an
- **Speicher** gibt den Gesamtspeicher des Computers in Byte an
- **Anzahl der beleuchteten Container** und **Anzahl der unbeleuchteten Container**
- **Anzahl der intakten Container** und **Anzahl der beschädigten Container**
- **Anzahl der Bände**
- **Anzahl der Bilder**
- **Anzahl der Dienste**
- **Anzahl der Stapel**
- **Öffentliche URL**

## Behälter

Bei Anlagen vom Typ Container stehen folgende Info-Befehle zur Verfügung:

- **Status** Mögliche Werte sind: _created_, _running_, _paused_, _restarting_, _removing_, _exited_, _dead_
- **Gesundheitsstatus** Mögliche Werte sind: _none_, _starting_, _healthy_, _unhealthy_
- **Ausführen** info/binär
- **Pausiert** info/binär
- **Neustart** info/binär
- **Dead** Info/Binärdatei
- **OOMKilled** Info/Binärdatei
- **Adresse IP** du container
- **Adresse MAC** du container
- **Gateway** Netzwerk-Gateway
- **Letzter Start**: Datum des letzten Starts
- **Letzte Station** das letzte Erlöschen

und Aktionsbefehle:

- **Start**
- **Beenden**
- **Neustart**
- **Pause**
- **Wieder aufnehmen**
- **Töten**

# Änderungsprotokoll

[Siehe Änderungsprotokoll](./changelog)

# Support

Wenn Sie ein Problem haben, lesen Sie zunächst die neuesten Beiträge zum Plugin unter [Community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Sollten Sie dennoch keine Antwort auf Ihre Frage finden, zögern Sie nicht, ein neues Thema zu erstellen. Vergessen Sie dabei nicht, das Plugin-Tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})) anzugeben.

Es müssen mindestens folgende Angaben gemacht werden:

- ein Screenshot der Jeedom-Seite „Gesundheit“
- ein Screenshot der Konfigurationsseite des Plugins
- alle verfügbaren Protokolle des Plugins, auf der Stufe _INFO_, als `vorformatierter Text` eingefügt (Schaltfläche `</>` in der Community), keine Dateien!
- je nach Fall einen Screenshot des aufgetretenen Fehlers, einen Screenshot der problematischen Konfiguration...
