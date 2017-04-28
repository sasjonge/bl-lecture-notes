# README #

Hier soll ein kurzes (inoffizielles) Skript zur Vorlesung [Beschreibungslogik](http://www.informatik.uni-bremen.de/tdki/lehre/ss16/bl/) von Thomas Schneider an der Universität Bremen entstehen.  

Wenn ihr dieses Dokument erweitern oder verbessern wollt, schreibt mir und ich füge euch als Collaborator hinzu.

# PDF bauen #

Fertige PDFs von findet ihr in den [Github Releases](https://github.com/sasjonge/bl-lecture-notes/releases). Diese entsprechen nicht unbedingt dem aktuellen Stand.

Um das Dokument zu kompilieren reicht es im Hauptverzeichnis 

```
make
```

aufzurufen. Dies wurde zumindest auf Ubuntu mit TeX Live Full getestet. Es kann sein, dass ihr Packete nachinstallieren müsst.

# Hinweise zum Lesen #

Beweise und Beispiele sind oftmals entsprechend der [Folien](http://www.informatik.uni-bremen.de/tdki/lehre/ss16/bl/) mit TX.X markiert. Nicht alle TX.X von den Folien sind im Dokument zu finden, es sollten aber mindestens die Beweise vollständig vorhanden sein.

Absätze die mit "Erklärung:" beginnen, sind meist Zusammenfassungen vom vorherigen Inhalt in eigenen Worten.

# Für Collaborator: #

Die Struktur dieses Repos sieht wie folgt aus:

* **bibtex**: Hier befinden sich die bibtex Dateien
* **chapters**: Hier findet man die tex-Files der einzelnen Kapitel. Bearbeitungen vom Inhalt des Skript sollten hier stattfinden. Die Dateien sind nach den Kapiteln der Vorlesung sortiert.
* **media**: Hier befinden sich Bilder die im Skript eingebunden wurden.
* **settings**: Hier befinden sich die einzelnen Dateien die das Aussehen der Tex definieren.
  - newcommands.tex Hier werden neue Kommandos definiert.
  - pagelayout.tex: Hier wird das Layout des Dokuments definiert.
  - template.cls: Hier werden die benutzten Packages definiert, Formatierungen definiert und auch neue Umgebungen für Definitionen, Theoreme, etc. angelegt.

Für das Dokument stehen also verschiedene Commands bereit. Einige nützliche davon sind:

* \MT - Das mathematische T für TBoxen
* \MI - Das mathematische I für Interpretationen
* \MJ - Das mathematische J für Interpretationen
* \EL
* \ALC
* \ALCI
* \ALCQ
* \ALCQI

Zudem sind Umgebungen für Definitionen, Theoreme, Lemma, Propositionen und Korollare definiert. Diese nutzt man wie folgt:

```
\begin{definition}[Name]
Eure Definition
\end{definition}
```

Statt definition könnt ihr einsetzten: theorem, lemma, proposition, korollar oder proof.

Tafelabschnitte werden in der tafel-Umgebung geschrieben.

```
\begin{tafel}[Name]
Tafel
\end{tafel}
```

Die Namen der Definitionen und Tafelabschnitte sollten ausdrucksstark genug,
sein, damit man im entsprechenden Verzeichnis finden kann, was man sucht.

Folgende Struktur für Abschnitte sollte eingehalten werden

* \section - für Foliensätze
* \subsection - für Kapitel innerhalb eines Foliensatzes
* \subsubsection - für eine oder mehrere Folien. Generell ist es nicht sinnvoll
  für eine Folie, die nur eine Definition enthält eine neue subsubsection
  anzulegen.

# TO-DO #

Mögliche Verbesserungspunkte:

* Kapitel zu ABoxen schreiben
* Graphen digitalisieren
