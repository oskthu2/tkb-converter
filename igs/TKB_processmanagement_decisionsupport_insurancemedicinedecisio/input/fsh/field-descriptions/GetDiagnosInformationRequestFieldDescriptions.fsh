// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetDiagnosInformationRequestFieldDescriptions
* diagnosKod ^definition = "Anger om endast diagnosinformation skall hämtas för en eller ett antal diagnoskoder. Anges ej parametern returneras diagnosinformation för alla diagnoskoder."
* diagnosKod ^comment = "TKB-fält: `diagnosKod` (`CV`, kardinalitet 0..*)."
* avenEjAktiva ^definition = "Anger om även ej aktiv diagnosinformation skall hämtas. Anges ej villkoret returneras endast aktiva."
* avenEjAktiva ^comment = "TKB-fält: `avenEjAktiva` (`Boolean`, kardinalitet 0..1)."
