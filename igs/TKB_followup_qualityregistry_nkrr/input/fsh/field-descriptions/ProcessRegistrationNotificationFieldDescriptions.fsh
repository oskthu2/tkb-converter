// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRegistrationNotificationFieldDescriptions
* referenceId ^definition = "Identifierare som kan lämnas som referens.

Ska specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret."
* referenceId ^comment = "TKB-fält: `referenceId` (`string`, kardinalitet 0..1)."
* result ^definition = "Information om mottagningen av notifieringen lyckades."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Anger resultatet av notifieringen.

Kan endast vara OK, INFO eller ERROR."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.resultText ^definition = "En beskrivande text som kan anges vid INFO eller ERROR."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
