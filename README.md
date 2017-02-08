# README #

Hier soll ein kurzes (inoffizielles) Skript zur Vorlesung Beschreibungslogik von Thomas Schneider an der Universität Bremen entstehen.  

Wenn ihr dieses Dokument erweitern oder verbessern wollt, schreibt mir und ich füge euch als Collaborator hinzu.

# PDF bauen #

Eine [fertige PDF](main.pdf) liegt im Hauptverzeichnis. Es kann aber vorkommen, dass diese nicht dem aktuellsten Stand entspricht (schaut dazu auf das letzte Änderungsdatum.)

Um das Dokument zu kompilieren reicht es im Hauptverzeichnis 

```
make
```

aufzurufen. Dies wurde zumindest auf Ubuntu mit TeX Live Full getestet. Es kann sein, dass ihr Packete nachinstallieren müsst.


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
\begin{definition}
Eure Definition
\end{definition}
```

Statt definition könnt ihr einsetzten: theorem, lemma, proposition, korollar oder proof.