# Entwicklungs-Kontext: Projekt dateoperations

## Kontext
Dieses Repository enthält den Quellcode für das Gem dateoperations, ein leichtgewichtiges Ruby-Gem, das darauf spezialisiert ist, Datumsberechnungen rund um Arbeits- und Feiertage zu vereinfachen. 

## Technologische Vorgaben
- **Sprache:** Ruby
- **Tests:** Minitest

## Architektur & Muster
- Wir folgen dem **Domain-Driven Design (DDD)**.
- Wir halten uns an **Clean Code Prinzipien**.

## Entwicklungs-Stil
- Das Gem erfindet das Rad bei den länderspezifischen Feiertagen nicht neu, sondern nutzt das etablierte holidays-Gem (https://github.com/holidays/holidays) als Kernabhängigkeit.
- Wir fügen keine Kommentare hinzu, die offensichtliche Dinge erklären.
- Grundsätzlich entwicklen wir objektorientiert (OOP), dabei orientieren wir uns insb. an den folgenden Werken:
  - Metz, Sandi, Practical Object-Oriented Design in Ruby
  - Metz, Sandi & Owen, Katrina, 99 Bottles of OOP
- Wir bevorzugen aber prägnante, funktionale und ideomatische Ruby-Lösungen gegenüber objektorientierten Boilerplate-Strukturen.
- Wir sichern unsere Codebasis und Änderungen mit Test ab.
- Wir entwicklen überwiegend aber nicht notwendigerweise test-getrieben (TDD).
- Wir versionieren unsere Änderungen mit git und entwickeln nicht auf dem Haupt-Branch (main), sondern auf entsprechenden Feature-, Debug-, Refactor-, usw. Branches.
- Änderungen halten wir mit semantischer Versionierung gem. https://semver.org/lang/de/ und einer Kommentarzeile, welche die Änderung
  zusammenfasst, in der Datei version.rb nach.

## Release-Prozess
- Nach Abschluss eines Features und Aktualisierung der Version in `version.rb`:
  1. Synchronisieren wir die Abhängigkeiten mit `bundle install`.
  2. Bauen wir das Gem mit `gem build colmis.gemspec` neu.
  3. Entfernen wir veraltete `.gem`-Dateien aus dem Stammverzeichnis.

## KI-Anweisungen
- Antworte immer auf Deutsch; wir duzen uns.
- Bevor Du etwas umsetzt, zeigst Du den Plan.
- Wenn du Code generierst, hältst Du Dich an unseren o.g. Entwicklungs-Stil.
- Insbesondere beim Refacoring gilt:
  - Du wirst keine großen Blöcke ersetzen. Stattdessen machst Du mehrere kleine replace-Aufrufe, die jeweils nur 1–3 Zeilen betreffen. 
  - Vollständigkeits-Check: Nach jeder Änderung an Tests prüfst Du nicht nur, ob sie bestehen, sondern ob die Gesamtzahl der Tests identisch geblieben ist oder (bei neuen Features) logisch gestiegen ist.
  - Explizite Diff-Prüfung: Bevor Du mir sagst, dass Du fertig bist, wirst Du einen git diff machen, um sicherzustellen, dass keine Zeile fehlt, die dorthingehört.
  - Read-Before-Replace: Vor jedem Edit wirst Du den Zielbereich erneut mit read_file lesen, um sicherzustellen, dass die exakte aktuelle Version als Basis für den replace-Befehl genutzt wird.
- Du behältst immer das große Ganze im Blick und gleichst Anpassungen immer wieder mit der gesamten Codebasis auf Stringenz und den hier beschriebenen Entwicklungs-Stil hin ab.
