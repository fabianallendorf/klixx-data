# klixx-data
Die große Datensammlung aller Schätzungen, Viewzahlen, Fischkarten von Florentin und Lars für die Show [Verflixxte Klixx](https://youtube.com/playlist?list=PLsksxTH4pR3LOfCR_dkGji6zzbhyk153b) auf YouTube. 

## Kann ich helfen?

JA! Ich bin überglücklich wenn du mir beim vervollständigen der Daten hilfst.
Prüfe aber zunächst dir ob nicht schon jemand zuvor gekommen ist.

https://github.com/fabianallendorf/klixx-data/pulls

Es ist von Vorteil wenn du bereits mit `git` und Github vertraut bist.
Wenn nicht, es gibt überall hilfreiche [Tutorials und Handbücher](https://try.github.io/).

### Aktuellen Stand herunterladen
- `git`
    ```
    $ git clone git@github.com:fabianallendorf/klixx-data.git
    ```
    Dieser Befehl wird dir einen Ordner `klixx-data` erstellen. 

- `gh` (GitHub CLI)
    ```
    gh repo clone fabianallendorf/klixx-data
    ```

Wenn du das bereits getan hast:

```
$ git checkout main && git pull
```

### Neuen Branch erstellen

Damit deine Änderungen nicht ungeprüft übernommen werden, erstelle bitte zuerst einen neuen Branch auf dem du dich austoben kannst. Achte darauf, dass du möglichst von `main` branchst.

Beispiel:
```
$ git checkout main && git pull && git branch -b episode-150
```

In diesem Beispiel erstelle ich einen branch Namens `episode-150`. Falls so ein Branch schon existiert, versuche es mit einem etwas eindeutigerem Namen (bspw. `episode-150-2021-04-24`).

### Daten eintragen und commits erstellen

Wenn du einen neuen Branch erstellt hast, kannst du anfangen deine Daten in die `klixx.csv` einzutragen. Die CSV Datei lässt sich mit Excel oder einem beliebigen Texteditor öffnen und bearbeiten. Ich persönlich nutze [vscode](https://code.visualstudio.com/) mit beim [Rainbow CSV](https://github.com/mechatroner/vscode_rainbow_csv) Plugin, für eine bessere Übersicht.

Die CSV (Comma Separated Values) Datei besteht aus Spalten die jeweils durch Kommata getrennt sind und Zeilen die durch Umbrüche getrennt sind. Jede Zeile entspricht einer Tipprunde (Florentin Tipp, Lars Tipp und Ergebnis). 

![grafik](https://user-images.githubusercontent.com/7349133/115950193-2d041480-a4da-11eb-9e7e-0814857ae1f5.png)

- `season` ist die Staffel. Die erste Staffel lief noch nicht auf rocketbeanstv. Ab jetzt wird glaube ich nicht mehr in Staffeln unterschieden
- `episode` ist die Folgenzahl. Steht in Videotitel und ist im Thumbnail zu sehen
- `first_bet` ist entweder `f` für Florentin oder `l` für Lars, je nachdem wer zuerst seinen Tipp abgegeben hat. Oftmals etwas tricky da die Regie die Werte nicht immer in der Reihenfolge eintippt in der die Tipps genannt wurden. Ich gehe danach wer zuerst seinen Tipp laut ausgesprochen hat
- `multiplicator` Normalerweise `1` wenn kein Multiplikator aktiviert ist. `2` für Telefonnummer im Video oder (veraltet) das Video ist nicht.abspielbar. Mehrere Multiplikatoren werden natürlich addiert
- `bonus` Normalerweise `0` wenn kein Bonus aktiviert ist. `2` für Video mit deutscher Sprache, `1` für Timecode im Video
- `lars_fish` Ein Flag `1` oder `0` je nachdem ob Lars in der Runde die Fischkarte gezückt hat
- `florentin_fish` Ein Flag `1` oder `0` je nachdem ob Florentin in der Runde die Fischkarte gezückt hat
- `lars_bet` Lars' Viewzahl-Tipp in der Runde
- `florentin_bet` Florentins Viewzahl-Tipp in der Runde
- `result` Die eigentliche Viewzahl des Videos in der Runde

Wenn du mit deinen Änderungen zufrieden bist, kannst du einen (oder mehrere) commit(s) erstellen.
```
$ git add klixx.csv && git commit -m "Tipps für Folge XYZ hinzugefügt"
```

### Pull request erstellen

Damit ich (und andere) die Daten prüfen können, erstellen wir einen [Pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests). 

Das funktioniert mit Hilfe des `create_pr.sh` Skriptes (geht nicht mit Windows PowerShell oder Windows Eigabeaufforderung).

```
$ ./create_pr.sh
```

Oder händisch auf Github im Reiter "Pull Requests".


Offene Pull Requests findet ebenfalls man [hier](https://github.com/fabianallendorf/klixx-data/pulls). Mit Hilfe von Pull requests kann man Änderungen sehr einfach einsehen und kommentieren. Wenn alles gut ist wird dein neuer Branch in den `main` Branch aufgenommen (*merged*). Wenn das passiert ist, sind deine Änderungen mit dabei und werden zeitnah auf http://klixx.allendorf.me/ zu sehen sein.

Vielen Dank für deine Hilfe!

Wenn dir etwas anderes an diesem Repository oder an der Website nicht gefällt, kannst du natürlich auch Pull requests eröffnen oder ein [Github Issue](https://github.com/fabianallendorf/klixx-data/issues) erstellen.