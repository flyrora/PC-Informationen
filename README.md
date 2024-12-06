Hier ist eine passende `README.md`-Datei, die du für dein GitHub-Repository verwenden kannst. Sie beschreibt den Zweck und die Funktionsweise des Batch-Skripts und enthält Anweisungen zur Nutzung.

```markdown
# PC-Informationen by Flyrora

Dieses Batch-Skript zeigt detaillierte Informationen über deinen PC sowie deine Netzwerkverbindung an, inklusive IP-Adressen und Ping. Es ist nützlich, um System- und Netzwerkdaten schnell und einfach abzurufen.

## Funktionen

- Zeigt den **Computer- und Benutzernamen** an.
- Listet Informationen über das **Betriebssystem** auf.
- Zeigt Details über **Prozessor** und **Arbeitsspeicher**.
- Gibt die **Festplatteninformationen** inklusive freiem Speicherplatz aus.
- Listet alle **IP-Adressen** (IPv4 und IPv6) des Computers auf.
- Zeigt den **Status der Netzwerkadapter** an.
- Überprüft die **Internetverbindung** durch einen Ping auf `8.8.8.8` (Google DNS).

## Verwendung

1. Lade die Datei `PC_Infos_Flyrora.bat` aus diesem Repository herunter.
2. Doppelklicke die `.bat`-Datei, um sie auszuführen.
3. Das Skript zeigt die PC- und Netzwerkdaten an und führt einen Ping-Test durch.
4. Das Fenster bleibt nach der Ausführung offen und wartet auf Benutzereingaben.

## Beispielausgabe

```plaintext
======================================
     PC-Informationen by Flyrora
======================================

Computername: MYCOMPUTER
Benutzername: MyUser

Betriebssystemdetails:
Betriebssystemname: Microsoft Windows 10 Pro
Betriebssystemversion: 10.0.19045 Nicht zutreffend

Prozessor und Arbeitsspeicher:
Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz
16777216

Festplatteninformationen:
C: NTFS 500107862016 238945234432

IP-Adressen:
IPv4-Adresse: 192.168.1.100
IPv6-Adresse: fe80::1a2b:3c4d:5e6f:7g8h

Netzwerkadapterstatus:
Wi-Fi-Verbindung Verbunden

Ping anzeigen:
Antwort von 8.8.8.8: Zeit=12ms TTL=118
```

## Anpassungen

Wenn du die Zeit vor dem automatischen Schließen ändern möchtest, bearbeite diese Zeile im Skript:

```batch
timeout /t 10 >nul
```

Ändere die Zahl `10` auf die gewünschte Zeit in Sekunden.

## Voraussetzungen

- Betriebssystem: **Windows**.
- Die Datei muss mit der Endung `.bat` gespeichert sein.
- Stelle sicher, dass du die Berechtigungen hast, das Skript auszuführen.

## Lizenz

Dieses Projekt steht unter der **MIT-Lizenz**. Siehe die Datei [LICENSE](LICENSE) für weitere Details.
```

### Wie füge ich die README.md hinzu?

1. Erstelle ein neues Repository auf GitHub.
2. Lade dein `.bat`-Skript hoch.
3. Erstelle eine Datei mit dem Namen `README.md`.
4. Kopiere den obigen Text in die `README.md` und speichere sie.
5. Fertig! Dein GitHub-Repository ist jetzt gut dokumentiert.
