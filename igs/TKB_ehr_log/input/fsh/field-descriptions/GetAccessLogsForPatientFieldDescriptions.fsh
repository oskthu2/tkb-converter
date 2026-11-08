// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAccessLogsForPatientFieldDescriptions
* AccessLogsResultType ^definition = "Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK.

Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande."
* AccessLogsResultType ^comment = "TKB-fält: `AccessLogsResultType` (`logquerying:AccessLogsResultType`, kardinalitet 1..1)."
