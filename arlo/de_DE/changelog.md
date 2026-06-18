---
layout: default
title: Änderungsprotokoll Arlo
lang: de_DE
pluginId: arlo
---

# Beta

- Aktualisierung von Abhängigkeiten
- Python 3.11 ist erforderlich; es wird bei Bedarf automatisch installiert.

# Stall

## 2026-05-29

- Anpassung zur Unterstützung der neuen Verwaltung benutzerdefinierter Modi.
- Korrektur beim Auslesen des Modus eines Geräts vom Typ *Miete*, die einen Fehler verursacht, wenn die Verbindung zur Cloud nicht mehr aktiv ist
- Korrektur: Bei Kameras, die direkt mit dem WLAN verbunden sind, fehlten einige Befehle (z. B. zur Steuerung der Sirene oder des Strahlers)
- Unterstützung benutzerdefinierter Gerätebilder (Jeedom 4.5)
- Aktualisierung von Abhängigkeiten

## 2025-08-11

- Unterstützung für mehrere neue Kameramodelle hinzugefügt
- Die Wiederherstellung von Videos/Screenshots aus der Bibliothek aus der Cloud ist auf einen Tag begrenzt
- Aktualisierung von Abhängigkeiten
- Kompatibilität mit PHP 8.4

## 2025-02-24

- Verbesserung des Anmeldeprozesses und Entfernung von Warnmeldungen aus dem Protokoll
- Ein Blick auf die lokale Aufzeichnung und das lokale Streaming

## 2025-02-13

- Beende den Daemon, wenn keine Verbindung zu Arlo hergestellt werden kann
- Aktualisierung der bei der Authentifizierung verwendeten Header

## 2025-02-06

- Unterstützung für die Arlo Pro 5 hinzugefügt
- Aktualisierung von Abhängigkeiten
- Dringende Behebung einer Verbindungsstörung, die in der Nacht vom 5. auf den 6. Februar aufgetreten ist

## 2024-12-25

- Unterstützung für die Video Doorbell HD & 2k hinzugefügt
- Behebung eines Fehlers beim Befehl **Planungsstatus**
- Aktualisierung von Abhängigkeiten
- Aktualisierung des Symbols

## 2024-11-16

- Verbesserte Unterstützung für Arlo Essential-Modelle
- Behebung eines möglichen Absturzes des Daemons, falls die Aktualisierung des Modus fehlschlägt
- Beschränke die Version einer Abhängigkeit (cryptography), um die Kompatibilität mit den auf 32-Bit-Systemen installierten Pi3-Versionen zu gewährleisten. Achtung: Die Kompatibilität mit 32-Bit-Systemen wird in einer kommenden Version aufgehoben!
- Aktualisierung von Abhängigkeiten
- Jeedom v4.4 erforderlich

## 2024-09-23

- Behebung eines Fehlers beim Befehl **Planungsstatus**
- Behebung eines Daemon-Absturzes, wenn der E-Mail-Benutzername keine E-Mail-Adresse ist

## 2024-09-16

- In dieser neuen Version wurde die Integration mit Arlo komplett überarbeitet, um die Kompatibilität mit der „Arlo V4“-Schnittstelle (seit 6 Monaten in der Beta-Phase) zu gewährleisten.
Siehe auch [dieses Thema in der Community](https://community.jeedom.com/t/nouvelle-version-pour-la-compatibilite-arlo-v4/119611)
- Unterstützung für die Arlo Essential Indoor 2 hinzugefügt
- Unterstützung für die Video Doorbell 2 hinzugefügt
- Unterstützung für die Arlo Essential XL hinzugefügt
- Verbesserung des Ständers für die Arlo Essential XL
- Übersetzung des Plugins ins Englische, Deutsche, Spanische, Italienische und Portugiesische
- Verringerung der Größe des Plugins
- Optimierung der Größe von Backups
- Mindestanforderung: Debian 11

## 2024-01-20

- Änderung der Abhängigkeitsprüfung für die Kompatibilität mit Debian 12
- Ermöglicht die Anzeige der Schaltflächen **Ein** und **Aus** im Kamera-Widget

## 2023-08-21

- Interne Änderung der Abhängigkeitsverwaltung
- Anpassung der URL des letzten Snapshots bei der ersten Synchronisierung, um ein Zugriffsproblem (CSP) zu vermeiden
- Stoppt den Daemon, falls kein Arlo-Authentifizierungsserver gefunden wird

## 2023-07-19

- Behebung des Problems, dass die Cloud-Aufzeichnung langsamer startet als zuvor (bedingt durch die Arlo-Cloud)
- Behebung des Problems bei der lokalen Aufzeichnung und beim lokalen Streaming
- Die Option zur Dauer wurde im Befehl „Aufnahme“ in den Szenarien nicht angezeigt
- Behebung eines Abhängigkeitsproblems bei pi3 unter Buster

## 2023-07-03

- Anpassung der Medienbibliothek für die mobile Navigation
- Umgestaltung und wesentliche Verbesserung der Authentifizierung bei Arlo:
  - Speichern der Sitzung zur Wiederverwendung bei einer erneuten Verbindung: Ab sofort erfolgt die erneute Verbindung zu Arlo nach einem Neustart des Daemons nahezu sofort (sofern die vorherige Sitzung noch gültig war), da keine Authentifizierung mehr erforderlich ist (man muss also nicht mehr auf den Einmalcode per E-Mail warten, nicht mehr über Cloudflare gehen usw.).
  - Hinzufügen alternativer Verbindungsmethoden für den Fall, dass die Verbindung durch Cloudflare blockiert wird (dies funktioniert jedoch nicht zu 100 %)

## 2023-05-22

- Cloud-Speicher reparieren

## 2023-05-17

- Behebung eines Problems beim Wechsel des Modus der Arlo Baby nach einer Verhaltensänderung bei Arlo
- Verbesserung der Passwortfelder
- Kompatibilität mit Jeedom v4.4
- Ausschluss lokal gespeicherter Screenshots und Videos aus der Jeedom-Sicherung, um deren Größe zu reduzieren
- Aktualisierung der Abhängigkeiten, um einen Absturz beim Verbindungsaufbau beim Start des Daemons zu beheben
- Änderung an der Abhängigkeitsverwaltung, um mögliche Konflikte mit anderen Plugins zu vermeiden

> In der Regel werden die Abhängigkeiten beim Aktualisieren des Plugins automatisch neu installiert. Sollte dies nicht der Fall sein, starten Sie sie bitte manuell neu.

## 2022-11-11

- Kleinere Korrektur bezüglich der Audio-Türklingeln

## 2022-10-17

- Aktualisierung der Darstellung der Befehle für Jeedom v4.3

## 2022-10-06

- Verbesserung der Integration des Arlo Floodlight: Unterstützung weiterer Modelle, Hinzufügen einer benutzerdefinierten Ereignisverwaltung, falls keine Standardverwaltung vorhanden ist (siehe Dokumentation)
- Kleinere Korrektur am Kamera-Widget für Jeedom v4 und Einstellung der Kompatibilität mit Jeedom v3; die erforderliche Mindestversion von Jeedom ist nun 4.0

## 2022-08-17

- Behoben: Das Kamera-Widget für Benutzer ohne Administratorrechte zeigte den letzten Screenshot nicht an

## 2022-05-17

- Unterstützung für das Modell VMC4041P (Arlo Pro4)
- Hinzufügen der Befehle **Ereignisverwaltung aktivieren**, **Ereignisverwaltung deaktivieren** und **Status der Ereignisverwaltung** für die Arlo Doorbell Wire Free und Arlo Go

## 2022-02-11

- Hinzufügen des Befehls **Schildstatus** zur Arlo Essential Indoor
- Hinzufügen der Befehle **Sirenenzustand**, **Sirene ein** und **Sirene aus** zur Arlo Essential
- Verbesserung: Ermöglicht optional die Anzeige aller vorhandenen Aktionsbefehle im Kamera-Widget
- Hinzufügen einer Schaltfläche in der Bibliothek zum Herunterladen der Aufzeichnungen
- Die Ereignisverwaltung ist bei der Arlo Essential standardmäßig deaktiviert, wenn kein Hub angeschlossen ist, da dies den Akku dieses Modells zu schnell entlädt
- Es wurden neue Befehle hinzugefügt, um die Ereignisverwaltung auf Abruf auf der Arlo Essential zu aktivieren: **Ereignisverwaltung aktivieren**, **Ereignisverwaltung deaktivieren** und **Status der Ereignisverwaltung**
- Behoben: Der Name des Objekts/Teils war im Kamera-Widget weiterhin sichtbar
- Die Installation der angepassten Version von FFmpeg, die unter Debian Stretch erforderlich war, wurde entfernt.

## 2021-10-31

- Aktualisierung der Audiobefehle bei der manuellen und automatischen Aktualisierung der Arlo Baby
- Korrektur der Cloud-Videoaufzeichnung

## 2021-09-22

- Bessere Integration mit Plugins von Drittanbietern wie [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) ([Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) für weitere Informationen)
  - Hinzufügen des Befehls *URL des letzten Schnappschusses* für die Kameras; dieser Befehl kann in der Konfiguration *Befehl URL-Schnappschuss* des Kamera-Widgets von Jeedom Connect verwendet werden
  - Auf der Konfigurationsseite der Kamera wurde ein einfach zu kopierender Link hinzugefügt; dieser Pfad kann in der Konfiguration „*Aufzeichnungsordner*“ des Jeedom Connect-Kamera-Widgets verwendet werden
- Wiederherstellung mehrerer Funktionen für die Arlo Video Doorbell Wire-Free (die Ereignisverwaltung ist weiterhin deaktiviert); weitere Informationen finden Sie [in der Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
- Hinzufügen des Arlo Chimes 2 (AC2001)
- Behebung des Problems mit dem Status „Wiedergabe“ bei der Arlo Baby, der nicht immer korrekt angezeigt wurde.

## 2021-08-22

- Hinzufügen einer tabellarischen Darstellung der Geräteliste für Jeedom 4.2
- Verbesserung: Ermöglicht optional die Anzeige der folgenden Werte auf dem Arlo Baby-Widget: **Temperatur**, **Luftfeuchtigkeit**, **Luftqualität**, **Helligkeit**
- Behoben: Der Befehl **Luftqualität** gab einen Wert in Promille statt in Prozent zurück; der Wert wird nun wieder in Prozent angezeigt.
- Behebt einen Daemon-Absturz, wenn eine Kamera (die nicht mit einer Basisstation verbunden ist) offline ist.

## 2021-07-28

- Unterstützung für die Arlo Essential Indoor
- Unterstützung für die Arlo Pro4
- Ermöglicht die tabellarische Anzeige der Kacheln (mit Ausnahme der Kamerakachel, die durch das Plugin angepasst wird)
- Deaktivierung der Ereignisverwaltung bei der Arlo Video Doorbell Wire-Free (bei der klassischen Video Doorbell gibt es keine Probleme), da dies den Akku dieses Modells zu schnell entlädt
- Interne Optimierung der Heartbeat- und Wiederverbindungs-Prozesse
- Bessere Handhabung von Timeouts
- Verbesserung: Aktualisierung des Echtzeitmodus, wenn dieser außerhalb des Plugins (also in der Arlo-App) geändert wird; zuvor dauerte dies maximal 1 Minute und 30 Sekunden

## 2021-06-02

- Hinzufügen des Befehls *Aufzeichnung senden* zur Arlo VideoDoorbell
- Behebung eines Problems beim Abrufen des Codes für die zweistufige Authentifizierung aufgrund einer Formatänderung in der von Arlo gesendeten E-Mail
- Komplette Überarbeitung der Verwaltung der Verbindung zum Arlo-System durch den Daemon:
  - Der Daemon versucht, sich automatisch wieder anzumelden, ohne zu unterbrechen, falls beim Anmelden ein Problem auftritt oder die Verbindung von Arlo zwangsweise getrennt wird,
  - Der Daemon führt den angeforderten Moduswechsel vor dem Abmelden bei Bedarf erneut durch

## 2021-04-03

Nach der Installation dieses Updates muss die Installation der Abhängigkeiten erneut gestartet werden, auch wenn diese bereits *OK* sind.

- Unterstützung für die Arlo Video-Türklingel Essential (kabellos) AVD2001
- Verbesserte Unterstützung für die Produktreihen Arlo Essential und Arlo Go
- Komplette Überarbeitung der Ereignisverwaltung durch den Daemon (Reduzierung von Verbindungsabbrüchen und Verringerung der Anzahl der Anfragen bei batteriebetriebenen Geräten wie Arlo Essential und Arlo Go)
- Dringende Korrektur aufgrund einer Änderung bei Arlo, die in der Nacht vom 2. auf den 3. April vorgenommen wurde: Wenn Sie dieses Update nicht durchführen, kann sich der Daemon nicht mehr verbinden

## 2021-01-11

- Verbesserung des Daemon-Heartbeats beim Start
- Verbesserte Integration der Arlo Essential
- Fehlerbehebung für die Video-Türklingel Modell AVD1001A, deren Bild nicht angezeigt wurde
- Behebung: Seit dem letzten Update wies die Sirenenausrüstung (die in bestimmte Basisstationen integriert ist) fälschlicherweise die folgenden Befehle auf: *Aktualisieren*, *Verbunden*, *Modus* und *Planungsstatus*, die natürlich nicht funktionierten. Diese Befehle können bei diesem Gerät entfernt werden; sie werden vom Plugin nicht mehr erstellt.
- Behebung eines kleinen Fehlers, der in den Protokollen angezeigt werden konnte (ohne Auswirkungen), wenn eine Kamera nicht für Jeedom freigegeben war

## 2020-12-02

- Neue Darstellung der Objektliste
- Verbesserung des Layouts der Gerätekonfiguration und der Bedienelemente
- Unterstützung für Arlo Essential hinzugefügt
- Fix-Dämon auf Video-Türklingel, wenn diese ohne Basisstation angeschlossen ist

## 2020-09-21

- Unterstützung für die Zwei-Faktor-Authentifizierung hinzugefügt ([Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Unterstützung für die Beleuchtung bei Arlo Pro 3 und Arlo Ultra hinzugefügt
- Unterstützung für die Arlo Pro3 Floodlight hinzugefügt
- Behebung eines Absturzes des Daemons, wenn ein Gerät offline oder deaktiviert war

## 2020-08-26

- Erzwingt die Konfiguration des API-Schlüssels im Localhost-Modus
- Automatische Rotation des API-Schlüssels bei jedem Update
- Überarbeitung des Layouts für Version 4
- Entfernung eines „Fehler“-Protokolls zur Verbindung, das nicht wichtig war (da sich der Daemon bei Bedarf selbstständig neu verbindet)
- Es wird ein Log-Eintrag hinzugefügt, wenn die Zwei-Faktor-Authentifizierung für den Plugin-Benutzer aktiviert ist, da diese Funktion noch nicht unterstützt wird

## 2020-08-02

- Behebt die Probleme mit dem Streaming und den lokalen Aufzeichnungen, die nach einer Änderung bei Arlo aufgetreten sind (ihr neues System scheint langsamer zu sein als zuvor)
- Dringende Korrektur aufgrund einer URL-Änderung bei Arlo, die in der Nacht vom 31. Juli auf den 1. August vorgenommen wurde: Wenn Sie dieses Update nicht durchführen, kann sich der Daemon nicht mehr verbinden.

## 2020-07-08

- Fix für den Dämon, falls nur eine Video-Türklingel vorhanden ist (ohne Basisstation)

## 2020-06-18

- Hinzufügen von Modus-Steuerelementen zum Widget für die Video-Türklingel (wenn diese nicht mit einer Basisstation verbunden ist)
- Hinzufügen der Befehle „info *IP*“, „Helligkeit“, „Temperatur“, „Luftfeuchtigkeit“ und „Luftqualität“ bei Arlo Baby
- Hinzufügen der Steuerung des Nachtlichts der Arlo Baby: Ein/Aus, Timer, Helligkeit, Farbe, Farbtemperatur und Modus ([Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Unterstützung für die Schlaflied-Steuerung von Arlo Baby hinzugefügt: Wiedergabe/Pause/Nächstes, Timer, Wiedergabeliste, Lautstärke, Wiederholungs- und Zufallswiedergabe ([Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Optimierung des Widgets
- Behebung eines Problems bei der Verwaltung der Modi der Arlo Baby, die nicht immer korrekt übertragen wurden
- Behebung eines Problems mit den Tooltips im Kamera-Widget in Version 4

## 2020-06-4

- Dringende Korrektur aufgrund einer URL-Änderung bei Arlo in der Nacht vom 3. auf den 4. Juni: Wenn Sie dieses Update nicht durchführen, empfängt der Daemon keine Ereignisse mehr (auch wenn er *OK* anzeigt) und wird sich in Kürze wahrscheinlich gar nicht mehr verbinden können.

## 2020-05-24

Nach der Installation dieses Updates muss die Installation der Abhängigkeiten erneut gestartet werden, auch wenn diese bereits *OK* sind.

- Migration des Daemons auf Python 3
- Anpassung der Berechtigungen: Benutzer ohne Administratorrechte können den Stream und die Medienbibliothek sehen.
- Bessere Verwaltung der Sichtbarkeitsoptionen für Steuerelemente (vor allem Schlagzeug, Bewegung...) im Kamera-Widget
- Unterstützung für die Arlo Video Doorbell hinzugefügt
- Optimierung der Abhängigkeiten.

## 2020-03-30

- Verlegung der Unterlagen
- Optimierung: ffmpeg wird nicht mehr neu installiert, wenn die richtige Version bereits installiert ist

## 2020-03-21

- Hinzufügen der Überprüfung der FFmpeg-Version zur Abhängigkeitsprüfung
- Behebt den HTTP-Fehler 403 beim Start des Daemons, der durch eine von Arlo am Login vorgenommene Änderung verursacht wurde

## 2020-02-19

- Behebt ein Streaming-Problem, das unter Raspbian Stretch auftreten kann: Erzwingt die Verwendung von ffmpeg 4.2.1, da Version 4.2.2 offenbar fehlerhaft ist (bitte installieren Sie die erforderlichen Abhängigkeiten neu, falls dies bei Ihnen der Fall ist)

## 2020-02-14

- Behebt ein Anzeigefehler im Modus „Planung“
- Unterstützung der Plugins [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Notification Queue]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) und [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) zusätzlich zu Mail und Telegram für den Versand von Benachrichtigungen

## 2020-02-06

- Es wurde die Möglichkeit hinzugefügt, den Modus „Planung“ zu aktivieren
- Hinzufügen eines Befehls „Screenshot senden“ bei den Kameras, mit dem man aus einem Szenario heraus einen Screenshot senden kann, indem man den gewünschten Benachrichtigungsbefehl auswählt

## 2020-01-22

- Behebung eines Problems mit den Ein-/Aus-Schaltern der Kameras Arlo Q und Arlo Qs
- Behebung eines Streaming-Problems unter Raspbian Buster

## 2019-12-28

- Behebung eines Streaming-Problems mit den Kameras Arlo Q und Arlo Qs
- Unterstützung für Arlo Pro3 hinzugefügt
- Unterstützung für die in Arlo Pro3 und Arlo Ultra integrierte Sirene hinzugefügt

## 2019-12-01

- Hinzufügen einer speziellen Support-Seite mit einer Übersicht über alle Arlo-Geräte
- Verbesserte Integration mit der Jeedom-App
- Der Befehl „Letztes Bild“ gibt nun den relativen Pfad zum Bild zurück

## 2019-09-26

- Live-Streaming hinzugefügt
- Entfernung der Befehle „startStream“ und „streamURL“

## 2019-09-17

- Funktion zur lokalen Speicherung hinzugefügt
- Update auf Font Awesome 5 (für Jeedom V4)
- Verbesserung der Medienbibliothek und Hinzufügen der Videowiedergabe
- Anpassung des Widgets
- Behebt das Problem bei den Ein-/Aus-Schaltern am Arlo Baby

## 2019-09-10

- Sicherung des Zugangs zu den Aufzeichnungen vor Ort
- Aktualisierung der API auf die Domain my.arlo.com aufgrund von Änderungen durch Arlo

## 2019-08-02

- Unterstützung für Jeedom V4 und PHP 7.3
- Behebung: Screenshots werden nicht gespeichert, wenn Jeedom nicht in /var/www/html/ läuft
- Behebung: Standardgröße der Widgets

## 2019-07-19

- Hinzufügen von Modus-Steuerelementen zum Widget für Arlo Baby- und Arlo Q-Kameras
- Hinzufügen der Befehle „Ein/Aus“ und „Status“ für die Kameras
- Verbesserung der Bibliothek: Hinzufügen einer Schaltfläche zum Löschen eines Screenshots und Anzeige des Screenshots in Originalgröße
- Behebt ein Problem mit dem Daemon, wenn das Plugin nur mit einer Arlo Baby-Kamera verwendet wird

## 2019-06-26

- Unterstützung für Arlo Go hinzugefügt
- Hinzufügen generischer Typen zu den Befehlen zur Vorbereitung der Integration mit der Jeedom-App

## 2019-06-21

- Unterstützung für Arlo Lights hinzugefügt
- Unterstützung für Arlo-Türklingeln hinzugefügt

## 2019-06-10

- Es wurde eine Funktion hinzugefügt, mit der Screenshots über Telegram oder E-Mail versendet werden können (die entsprechenden Plugins müssen installiert sein)
- Größe der Screenshots im mobilen Widget festlegen
- Behebt einen Fehler beim Start des Daemons, wenn das Passwort bestimmte Sonderzeichen enthält
- Verbesserung des Heartbeat-Prozesses
- Interne Optimierung des Plugins zur Vorbereitung der Integration neuer Arlo-Geräte

## 2019-05-30

Es wird empfohlen, die Installation der Abhängigkeiten nach der Installation dieses Updates erneut durchzuführen, auch wenn sie bereits *OK* sind.

- Unterstützung für Arlo Q hinzugefügt
- Anpassung des Ladezustands im Widget, wenn die Kamera an das Stromnetz angeschlossen ist: Anzeige eines Steckers anstelle eines Akkus
- Behebt Probleme mit der Kompatibilität von Abhängigkeiten
- Behebt ein Kompatibilitätsproblem bei den Abhängigkeiten unter *Debian Jessie*: Wenn Sie Jessie verwenden, müssen Sie die Abhängigkeiten neu installieren, auch wenn sie bereits *OK* sind
- Verringerung der Größe des Plugins
- Stellt das Bild der Arlo Baby-Kameras ein

## 2019-05-24

- Verbesserung der Stabilität des Daemons
- Änderung des Standardports auf 55064, um Konflikte mit dem Plugin *RfPlayer* zu vermeiden

## 2019-05-13

- Verbesserung des Kamera-Widgets und Hinzufügen von Anpassungsmöglichkeiten für die Anzeige (im Reiter *Anzeige* der erweiterten Geräteeinstellungen)
- Verhindert die Erstellung inaktiver Geräte: Wenn Sie in Arlo inaktive Geräte haben, werden diese nicht erstellt und nicht mit Jeedom synchronisiert
- Verbesserte Kompatibilität, wenn mehrere Basisstationen im Arlo-Konto vorhanden sind
- Behebt einen Absturz des Daemons, wenn keine Basisstation vorhanden ist (z. B. bei Verwendung ausschließlich mit Arlo Q-Kameras)

## 2019-05-12

Erste stabile Version

# Dokumentation

[Siehe Dokumentation]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
