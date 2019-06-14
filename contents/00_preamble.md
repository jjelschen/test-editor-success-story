---
secPrefix: "Section"
figPrefix: "Figure"
secLabels: "roman"
documentclass: "scrartcl"
title: Der Test-Editor
subtitle: Akzeptanztests wie sie sein sollten
...

**Zusammenfassung.** Akzeptanztests dienen im Softwareentwicklungsprozess dazu sicherzustellen, dass die umgesetzte Lösung die fachlichen Anforderungen wie gewünscht abdecken. Sie stellen damit einen essentiellen Baustein zur Projektsteuerung und zur Qualitätssicherung dar. Für die Erstellung von Akzeptanztests ergibt sich allerdings häufig das Dilemma, dass einerseits nur die Anwender über das jeweilige Fachwissen verfügen, um die Tests entsprechend der Anforderungen zu formulieren, andererseits aber nur die Entwickler über die Programmierkenntnisse verfügen, um die Tests zu automatisieren. Werden die Testautomatisierung also von Entwicklern vorgenommen, birgt dies die Gefahr, dass sich bei der Implementierung von Testspezifikationen durch Mißverständnisse Fehler einschleichen. In der Praxis wird stattdessen auf die Automatisierung ganz oder teilweise verzichtet, was der Qualitätssicherung schadet und dem Entwicklungsprozess generell Agilität raubt.

In diesem Beitrag wird der **Test-Editor** vorgestellt, der Fachanwender, im Gegensatz zu anderen Tools am Markt ([Cucumber](https://cucumber.io/), [Gauge](https://gauge.org/) u.ä.), in die Lage versetzt, Akzeptanztests selbst zu automatisieren. Der Test-Editor präsentiert sich dem Benutzer als leicht zugängliche Web-Anwendung, in der Tests in natürlicher Sprache spezifiziert und mit in fachlichem bzw. anwendungsspezifischen Vokabular gehaltenen Testschritten untermauert werden können. Diese Testsprache ist somit für den Fachanwender verständlich, ist aber gleichzeitig Grundlage für die Generierung von Test-Code, und somit automatisch ausführbar. Derzeit wird der Test-Editor bereits erfolgreich bei einem großen deutschen Versicherer und Finanzdienstleister eingesetzt, und wird als Open-Source-Projekt aktiv weiterentwickelt.
