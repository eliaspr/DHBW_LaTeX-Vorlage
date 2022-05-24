# Verwendung der Vorlage

Folgende Software muss **zwingend** installiert werden:
- LaTeX-Compiler, empfohlen: `MikTeX` ([Download-Link](https://miktex.org/download)). Bei der Installation wird gefragt, ob Dependencies ohne Nachfrage installiert werden dürfen. Hier wähle ich normalerweise `Ja`, dies ist aber mit einem gewissen Sicherheitsrisiko verbunden, falls nicht-vertraulicher LaTeX-Code kompiliert werden sollte.
- Perl-Interpreter, Linux- und Mac-User haben diesen anscheinend standardmäßig schon im System installiert. Windows-Nutzern ist StrawberryPerl zu empfehlen ([Download-Link](https://strawberryperl.com/)).

Folgende Software ist empfohlen:
- Citavi zur Literaturverwaltung. Dort können Quellen hinzugefügt werden, und anschließend können diese in die Datei `bibliographie.bib` gespeichert werden ([Download-Link](https://www.citavi.com/de)). Mit der DHBW-Email ist eine kostenlose Registrierung möglich.
- Visual Studio Code um die Dateien zu bearbeiten. Hier ist eine Extension für LaTeX verfügbar [Link](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). Wenn diese verwendet wird, ist es sehr zu empfehlen das automatische kompilieren zu **deaktivieren** (`VS Settings > Latex-workshop > Latex > Auto-Build: Run` auf `never` setzen), da die Extension nicht wirklich mit dieser Vorlage kompatibel ist.
- Git zur Versionskontrolle der LaTeX-Dateien.

Folgende Angaben müssen angepasst werden:

- `ads/abstract.tex`: Zusammenfassung in Deutscher und ggf. englischer Sprache
- `ads/acronyms.tex`: Abkürzungsverzeichnis
- `ads/appendix.tex`: Anhänge
- `ads/erklaerung.tex`: Ehrenwörtliche Erklärung
- `ads/glossary.tex`: Glossareinträge
- `ads/sperrvermerk.tex`: Sperrvermerk
- `images/company.png`: Ersetzen durch das eigene Firmenlogo
- `dokumentation.tex`, Angaben zur Arbeit im "Konfigurationsbereich"

Falls Sperrvermerk oder Anhang nicht notwendig sind, können die entsprechenden Abschnitte in der `dokumentation.tex` (Zeilen 34/35 bzw. 88/89) auskommentiert werden.

Die LaTeX-Dateien für die Kapitel befinden sich in `content/`, sämtliche Bilder werden in `images/` abgelegt.

Mit den folgenden Befehlen kann der LaTeX-Compiler aufgerufen werden:

- Bauen des Projektes bzw. Erstellung der PDF-Datei: `latexmk`  
  Die erstellte Datei wird als `dokumentation.pdf` abgelegt
- Löschen von temporären Dateien: `latexmk -c`

**Alternativ** kann das Kompilieren auch durch einen Doppelklick auf `compile.bat` angestoßen werden (Wichtig: *nicht* `compile.ps1`). Das Skript stellt sicher, dass die `dokumentation.pdf` nicht noch irgendwo geöffnet ist.

# Quellen aus Citavi in LaTeX exportieren

Um die Quellen aus Citavi in das LaTeX Projekt zu exportieren werden folgende Schritte befolgt:

1) Mit geöffnetem Projekt `Datei` > `Exportieren` > `Exportieren`
2) `Alle xx Titel in diesem Projekt` selektieren, dann `Weiter`
3) Als Format `BibTeX` selektieren, dann `Weiter`
4) `Eine Textdatei erstellen` selektieren, dann mit `Durchsuchen` die `bibliographie.bib`-Datei aus dem LaTeX-Ordner auswählen. Dann `Weiter`
5) Optional: `Ja` selektieren und einen Namen für die Export-Vorlage eingeben → Dann können beim zukünftigen Exportieren Schritte 2) bis 4) übersprungen werden indem die erstellte Vorlage dann im Menü `Datei` > `Exportieren` ausgewählt wird.
6) Durch klicken auf `Weiter` wird der Export durchgeführt.

# Nützliche Quellen und Software

- **LaTeX-Grundlagen** | Die Basics der Sprache erklärt von Overleaf (Online-Editor für LaTeX-Dokumente) [*[Overleaf-Doku](https://www.overleaf.com/learn)*].
- **Grundwissen: Mathematische Formeln** | Zusammenfassung/Merkblatt für mathematische Formeln und Symbole und eine Auflistung aller mathematischen Symbole, die in LaTeX enthalten sind [*[Zusammenfassung](https://www.grund-wissen.de/informatik/latex/mathematischer-formelsatz.html)*] [*[Auflistung Symbole](https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols)*].
- **Equation Editor** | Grafischer Editor für das Erstellen von Gleichungen o.ä.. Beinhaltet eine Live-Vorschau und einige Standard-Funktionen [*[Link](https://latex.codecogs.com/eqneditor/editor.php)*].
- **Tables Generator** | Erstellen von LaTeX-Tabellen in einer Webanwendung. Diese erstellt den notwendigen Code, der dann eingefüht werden kann [*[Link](https://www.tablesgenerator.com/)*].
- **siunitx** | LaTeX-Paket um numerische Werte inklusive Einheiten übersichtlicher schreiben zu können sowie eine einheitliche Formatierung zu gewährleisten [*[Link](https://www.namsu.de/Extra/pakete/Siunitx.html)*].
- **TikZ** und **pgfplots** | Sehr umfangreiche LaTeX-Pakete zum Erstellen von allen denkbaren Abbildungen. Dies sind bspw. Beschriftungen, Schemata, Funktionsgraphen [*[Overleaf-Tutorial](https://de.overleaf.com/learn/latex/Pgfplots_package)*] [*[Präsentation](https://docs.freitagsrunde.org/Veranstaltungen/techtalk/2016/slides-plotting-2016-02-12.pdf)*] [*[TikZ & PGF Handbuch](https://texample.net/media/pgf/builds/pgfmanualCVS2012-11-04.pdf)*] [*[pgfplots-Dokumentation](https://mirrors.rit.edu/CTAN/graphics/pgf/contrib/pgfplots/doc/pgfplots.pdf)*].
- **TikzEdt** | Grafischer Editor für das Erstellen von TikZ-Abbildung mit Live-Vorschau und diversen nützlichen Funktionen [*[Webseite](http://www.tikzedt.org/)*]

# Troubleshooting und Hinweise

Bei Problemen mit der Vorlage gilt: *Google ist euer Freund*

Bei manchen PDF-Readern, kann LaTeX die Datei **nicht** neu kompilieren, während die PDF geöffnet ist. Also: Erst die Datei schließen und dann neu kompilieren.

Fehlermeldungen von LaTeX sind teilweise sehr kryptisch. Es kann manchmal hilfreich sein, die letzten Änderungen nochmal sorgfältig anzuschauen, dann findet man meistens Syntax-Fehler, falls sich welche einschleichen. Oft kann auch ein Clean-Befehl (`latexmk -c`) plötzlich aufgetretende oder unverständliche Fehler auflösen.

Der LaTeX-Compiler führt beim Bauen gerne mehrere Durchgänge durch, ich weiß nicht warum habe aber auch nicht nach einem Weg gesucht, dies zu umgehen oder zu verhindern. Das Bauen kann allgemein relativ lange dauern, profitiert aber defintiv von mehr verfügbarer CPU-Leistung.

Die wesentliche Konfiguration der Pakete befindet sich in `header.tex`. Die Datei ist ein absolutes Durcheinander und es gilt: Alle Änderungen dort sind auf eigene Gefahr. Ich habe immer nach dem Prinzip *never touch a running system* gehendelt.

