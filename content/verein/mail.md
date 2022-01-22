+++
title = "Vereinsmail und Mailing-Liste"
+++


Damit die Mitglieder des Vereins die Möglichkeit haben effizient Informationen auszutauschen gibt es das Vereinsmail.
Das Vereinsmail ist das offizielle Kommunikationssystem für formelle Tätigkeiten am & rund um den Verein.
Das Vereinsmail z.B. ist nötig, um Vorstösse und Initiativen im Verein zu starten.
Das Vereinsmail besteht momentan aus mehreren Mailinglisten. 

Alle Nachrichten können direkt an die folgende Haupt-Mailingliste versendet werden, wo diese dann korrekt sortiert und verteilt werden:  
[ottos_plattenbau@fastmail.com](mailto:ottos_plattenbau@fastmail.com?subject=%5BOTTO%5D%20Vereinsbeitritt%20Ottos%20Plattenbau)

Zum einfachen Filtern, sollte jedes Vereinsmail die Zeichenkette `[OTTO]` im Betreff des Mails beinhalten.
Das Vereinsmail ist nötig um Vorstösse und Initiativen transparent im Verein zu starten und die Mitglieder zu informieren.
Es gibt Grundsätzlich die folgenden vier verschiedenen Typen von Vereinsmail welche klar am Betreff zu erkennen sind:

## Rundmail Typen und Vorgaben

Das System soll verschieden Nachrichtentypen unterstuetzen.

Eine davon ist die Initiative (so wie dieses Issue hier).
Bei einer Initiative wird wie bei einem RFC, eine entscheidung dokumentiert.
Anschliessend soll diskutiert werden ob diese auch so vom Verein getragen wird, oder weitere neuernungen aenderungen oder erweiterungen benoetigt werden, um dem Konsenssystem gerecht zu werden.

* [Ankündigungs Mail in `[OTTO][ANNOUNCE]`](mailto:ottos_plattenbau@fastmail.com?subject=%5bOTTO%5d%5bANNOUNCE%5d%20): Öffentliche Ankündigungen. Diese werden auch auf der Webseite unter den News erwähnt. Bitte Ankündigungen erst vereinsintern abklären!
* [Öffentliche Mailing-List in `[OTTO][PUBLIC]`](mailto:ottos_plattenbau@fastmail.com?subject=%5bOTTO%5d%5bPUBLIC%5d%20): Mails die als [PUBLIC] gekenntzeichnet werden, können unter Umständen im öffentlichen Mail Archiv oder auf der Webseite veröffentlicht werden, sofern alle Beteiligten damit Einverstanden sind (was es erst abzuklären gilt).
* [Allgemeines Vereinsinterne Diskussionsmail in `[OTTO][GENERAL]`](mailto:ottos_plattenbau@fastmail.com?subject=%5BOTTO%5D%5BGENERAL%5d%20): Meist verwendete Vereinsmail-Typus. Für jedgliche Art von Vereinsinternen Diskussionen.
* [Vereinsinternes Mail Mail in `[OTTO][INTERN]`](mailto:ottos_plattenbau@fastmail.com?subject=%5bOTTO%5d%5bINTERN%5d%20): Alle Vorstösse und Initiativen, Projekte und Traktanden, interne Diskussionen und Protokolle von Meetings vom Verein.
Zum Posten in die jeweiligen Mailing-Listen einfach auf gewünschten Mailtyp oben in der Liste klicken.
* [Vereinsinternes Mail Mail in `[OTTO][DEV]`](mailto:ottos_plattenbau@fastmail.com?subject=%5bOTTO%5d%5bDEV%5d%20): Vereinsinterne Mailingliste für Leute die an der Vereinsinfrastruktur entwickeln und am [Repository](https://codeberg.org/mkuettel/ottos-plattenbau-collective) auf CodeBerg.org arbeiten. 

## Posten in eine Mailinglist

Zum Posten in die jeweiligen Mailing-Listen einfach auf gewünschten Mailtyp oben in der Liste klicken.

*Hinweis:* Um Prozesse zu vereinfachen und automatische Posts auf gewisse Mailing-Listen zu erlauben, verwende die e-Mail Adresse zum senden des Mails, die du dem Verein auch angegeben hast.

## Aufbau des Vereinmailssystems

Das Vereinsmail besteht aus folgenden Komponenten und bietet eine gemeinsame Kommunikationsbasis im und Rund um den Verein:

* 3 Fastmail Aliases, welche als Mailingliste dienen, damit alles Mail auf einem Mail-Account korrekt sortiert und weiterverschickt werden kann.
* 3 Kontaktlisten an welche die E-Mails verteilt werden (Öffentlich, Intern & development)
* Issue-Tracker von [Ottos Plattenbau Collective](https://codeberg.org/ottos-plattenbau-collective/issues):  
  Bei Issues &  [Pull Request](https://codeberg.org/mkuettel/ottos-plattenbau-collective/pulls) etc wird von CodeBerg.Org ein Mail versandt, mittels dem Notification System, welche auch in dieser Mailing-Liste landen.
  d.h. Es ist nicht zwingend Notwendig e-Mail direkt zu verwenden, sondern
  die benötigten E-Mails können auch durch codeberg.org ausgelöst werden, z.B. durch erstellen eines Issue mit seinem Anliegen/Vorstoss.

Verschiedene Teilprojekte koennen aber auch unterschiedliche Issue-Trackers auf codeberg haben.
Das Mail System der Zukunft vereinigt diesen Ansatz.

## Zukunft

* bessere Mailinglist-Administration
* Es soll in Zukunft ein Vereinsmail Archiv geben für die Mailinglisten, um die Transparenz und Speicherdauer von Nachrichten im Verein zu erhoehen.
* GPG Keys für unterschriften und verschlüsseln von Nachrichten
