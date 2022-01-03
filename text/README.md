# Verwendung der Vorlage

Folgende Software muss **zwingend** installiert werden:
- $\LaTeX$-Compiler, empfohlen: `MikTeX` ([Download-Link](https://miktex.org/download)).
- Perl-Interpreter, Linux- und Mac-User haben diesen anscheinend standardmäßig schon im System installiert. Windows-Nutzern ist StrawberryPerl zu empfehlen ([Download-Link](https://strawberryperl.com/)).

Folgende Software ist empfohlen:
- Citavi zur Literaturverwaltung. Dort können Quellen hinzugefügt werden, und anschließend können diese in die Datei `bibliographie.bib` gespeichert werden ([Download-Link](https://www.citavi.com/de)). Mit der DHBW-Email ist eine kostenlose Registrierung möglich.
- Visual Studio Code um die Dateien zu bearbeiten. Hier ist eine Extension für $\LaTeX$ verfügbar [Link](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). Wenn diese verwendet wird, ist es sehr zu empfehlen das automatische kompilieren zu **deaktivieren** (`VS Settings > Latex-workshop > Latex > Auto-Build: Run` auf `never` setzen), da die Extension nicht wirklich mit dieser Vorlage kompatibel ist.
- Git zur Versionskontrolle der $\LaTeX$-Dateien.

Folgende Angaben müssen angepasst werden:

- `images/company.png`: Ersetzen durch das eigene Firmenlogo
- `dokumentation.tex`, Zeilen 1-9: Angaben zur Arbeit

Die $\LaTeX$-Dateien für die Kapitel befinden sich in `content/`, sämtliche Bilder werden in `images/` abgelegt.

Mit den folgenden Befehlen kann der $\LaTeX$-Compiler aufgerufen werden:

- Bauen des Projektes bzw. Erstellung der PDF-Datei: `latexmk`  
  Die erstellte Datei wird als `dokumentation.pdf` abgelegt
- Löschen von temporären Dateien: `latexmk -c`

# Troubleshooting und Hinweise

Bei Problemen mit der Vorlage gilt: *Google ist euer Freund*

Bei manchen PDF-Readern, kann $\LaTeX$ die Datei **nicht** neu kompilieren, während die PDF geöffnet ist. Also: Erst die Datei schließen und dann neu kompilieren.

Fehlermeldungen von $\LaTeX$ sind teilweise sehr kryptisch. Es kann manchmal hilfreich sein, die letzten Änderungen nochmal sorgfältig anzuschauen, dann findet man meistens Syntax-Fehler, falls sich welche einschleichen. Oft kann auch ein Clean-Befehl (`latexmk -c`) plötzlich aufgetretende oder unverständliche Fehler auflösen.

Der $\LaTeX$-Compiler führt beim Bauen gerne mehrere Durchgänge durch, ich weiß nicht warum habe aber auch nicht nach einem Weg gesucht, dies zu umgehen oder zu verhindern. Das Bauen kann allgemein relativ lange dauern, profitiert aber defintiv von mehr verfügbarer CPU-Leistung.

Die wesentliche Konfiguratoin der Pakete befindet sich in `header.tex`. Die Datei ist ein absolutes Durcheinander und es gilt: Alle Änderungen dort sind auf eigene Gefahr. Ich habe immer nach dem Prinzip *never touch a running system* gehendelt.

