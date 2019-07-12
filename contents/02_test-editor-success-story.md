
# Der Test-Editor {#sec:test-editor-success-story}

Der Test-Editor ist eine Webanwendung, um Nutzerakzeptanztests zu spezifizieren und durch automatisierte Testfälle zu realisieren. Das Alleinstellungsmerkmal des Test-Editors ist dabei, dass die Testfälle nicht in einer Programmiersprache wie Java, sondern durch in natürlicher Sprache ausgedrückte, und damit allgemeinverständliche Testschritte beschrieben werden.

![Rollenverteilung im Test-Editor](figures/layers-test-editor-de.svg){#fig:layers-test-editor}

Analog zu [@fig:layers-cucumber] stellt [@fig:layers-test-editor] den Ansatz des Test-Editors dar, der eine klare Trennung der Belange von Fachanwendern, Testern und Entwicklern vornimmt. Die technischen Aspekte, die die Testfallbeschreibung an die Anwendung binden und Programmierkenntnisse erfordern, sind als _Anwendungs-Mappings_ herausgetrennt worden.
Dies ermöglicht, die Testfälle in einer Weise zu formulieren, die von Fachanwendern nachvollzogen werden kann: sie werden in die Lage versetzt, selbst die Rolle des Testers auszufüllen.

Anwendungs-Mappings definieren das Interaktionsmodell der zu testenden Anwendung, und damit die zur Verfügung stehenden Testschritte. Sie müssen einmal pro Anwendung – nicht einmal pro Testfall – beschrieben werden; außerdem können generische, anwendungsübergreifende Teile herausgetrennt werden. Im Vergleich zum „herkömmlichen“ Modell, bei dem Entwickler die Tests schreiben, ist dies eine deutliche Aufwandsreduzierung.

Die Automatisierungslogik für die Testausführung wird in _Test-Fixtures_ gekapselt. Dies sind Java-Bibliotheken, die das Testen bestimmter Anwendungstypen ermöglichen. Vorhanden sind unter anderem bereits eine Web-Fixture (und zusätzlich eine diese erweiternde [Angular](https://angular.io/)-Fixture), eine Host-Fixture zum Testen von IBM-3270-Terminal-Anwendungen und eine Java-Swing-Fixture. Eine Erweiterung ist problemlos möglich.

Die folgenden Abschnitte stellen kurz die Benutzeroberfläche des Test-Editors vor ([@sec:user-interface]), und zeigen anhand von Beispielen, wie damit Testspezifikationen ([@sec:test-specification]) und Testfälle ([@sec:test-cases]) erstellt und bearbeitet werden, sowie Tests ausgeführt und die Ergebnisse analysiert werden können ([@sec:test-execution]). Da das Erstellen von Anwendungs-Mappings nicht Teil des eigentlichen Testprozesses ist, sondern eher als Teil der Anwendungsentwicklung gesehen werden sollte, wird dies in diesem Beitrag nicht weiter betrachtet. Einen guten Eindruck von Anwendungs-Mappings vermittelt ein entsprechendes [Tutorial auf den offiziellen Test-Editor-Webseiten](https://test-editor.github.io/te_markdown/heroes-create-aml/).
