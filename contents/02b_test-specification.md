
## Testspezifikationen {#sec:test-specification}

Testspezifikationen geben vor, was ein Benutzer von einer Anwendung erwartet. Wird agil, etwa nach SCRUM, vorgegangen, finden sie sich als Akzeptanzkriterien der User-Stories wieder. Testspezifikationen sollen von allen Fachanwendern formulierbar sein, weshalb der Test-Editor nahezu keine Einschränkungen oder Vorgaben bezüglich der Struktur von Testspezifikationen macht. Lediglich eine Unterteilung in Spezifikationsschritte ist vorgesehen, die jeweils durch ein Sternchen eingeleitet werden – die Testschritte selbst können frei in Prosa formuliert werden. Auf dieser Ebene unterscheidet sich der Test-Editor also noch kaum von anderen Akzeptanztestwerkzeugen.

![Beispiel für eine Testspezifikation](figures/test-specification.png){#fig:test-specification}

[@fig:test-specification] zeigt ein Beispiel für eine Testspezifikation. Die zu testende Anwendung stammt aus dem [Angular Tour of Heroes Tutorial](https://angular.io/tutorial) und stellt eine Liste fiktiver Superhelden dar, die um weitere Einträge ergänzt werden kann. Die abgebildete Testspezifikation fordert, dass, wenn auf der Übersichtsseite ein Held hinzugefügt wird, dieser anschließend in der Liste erscheint. Das hier verwendete _Given-When-Then_-Schema ist lediglich eine Konvention, die verwendet werden kann, aber nicht muss.

Die Testspezifikation wird als Datei mit der Endung _tsl_ (_Test-Specification-Language_) abgelegt, und dient im nächsten Schritt dem Tester als Vorlage zur Konkretisierung als Testfall.