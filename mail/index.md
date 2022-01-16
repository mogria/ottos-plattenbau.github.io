# Vereinsmail

Damit die Mitglieder des Vereins die Moeglichkeit haben effizient informationen auszutauschen gibt es ein Vereinsmail.
Das Vereinsmail ist eine Mailingliste und ist das offizielle Kommunikationssystem für formelle Tätigkeiten am & rund um den Verein.
Dieses Vereinsmail soll erst aussliesslich ueber die Issues & Tickets auf codeberg.org basieren. Denn bei Issues & Pull Requests etc wird ein Mail versandt, mittels dem Notification System.

Zudem soll es in Zukunft eine interne Mailinglist sowie ein Archiv geben, um die Transparenz und Speicherdauer von Nachrichten im verein zu erhoehen.

Siehe auch die Webpage: https://otto.gleet.ch/mail
Infos zum Verein: https://otto.gleet.ch/verein

Das Vereinsmail ist nötig um Vorstösse und Initiativen im Verein zu starten.
Es gibt Grundsätzlich die folgenden vier verschiedenen Typen von Vereinsmail:

## Rundmail Typen und Vorgaben

Das System soll verschieden Nachrichtentypen unterstuetzen.

Eine davon ist die Initiative (so wie dieses Issue hier).
Bei einer Initiative wird wie bei einem RFC, eine entscheidung dokumentiert.
Anschliessend soll diskutiert werden ob diese auch so vom Verein getragen wird, oder weitere neuernungen aenderungen oder erweiterungen benoetigt werden, um dem Konsenssystem gerecht zu werden.

* `[GENERAL]`: Meist verwendete Vereinsmail-Typus. Für jedgliche Art von Vereinsinternen Diskussionen.
* `[INTERN]`: Alle Vorstösse und Initiativen, Projekte und Traktanden und Protokolle von Meetings vom Verein.
* `[PUBLIC]`: Mails die als [PUBLIC] gekenntzeichnet werden, können unter umständen im öffentlichen Mail Archiv veröffentlicht werden, sofern alle Beteiligten damit einverstanden sind, was es erst abzuklären gilt.
* `[ANNOUNCE]`: Öffentliche Ankündigungen. Bitte Ankündigungen erst vereinsintern abklären!

## Aufbau des Vereinmailssystems v1

Das Vereinsmail bestehta aus folgenden Komponenten und bietet eine gemeinsame Basis fuer Kommunikation im und Rund um den Verein:

* Benutzer Account auf codeberg.org mit der Email Adresse der fuer den Verein verwendet werden soll. [Regiser](https://codeberg.org/user/sing_up)
* Issue-Tracker von [Ottos Plattenbau Collective](https://codeberg.org/ottos-plattenbau-collective/issues)
  Es ist nicht zwingend Notwendig e-Mail direkt zu verwenden, sondern
  vieles ist auch moglich, wenn ein Account einfach ein Issue oder
  eine [Pull Request](https://codeberg.org/mkuettel/ottos-plattenbau-collective/pulls) mit dem Anliegen erstellt.

Verschiedene Teilprojekte koennen aber auch unterschiedliche Issue-Trackers auf codeberg haben.
Das Mail System der Zukunft vereinigt diesen Ansatz.

## Zukunft

In Kunft soll es folgendes geben:

* Email-Verteiler
  * Public
  * Private
  * Announce
* Mail-Archiv
* Mail Admin
* GPG
