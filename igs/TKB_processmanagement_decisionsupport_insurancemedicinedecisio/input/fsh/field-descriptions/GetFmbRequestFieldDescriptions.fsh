// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFmbRequestFieldDescriptions
* underlagsId ^definition = "Anger om endast ett eller ett antal underlag skall hämtas och i så fall vilka. Anges inget underlagsId returneras alla underlag."
* underlagsId ^comment = "TKB-fält: `underlagsId` (`IIType`, kardinalitet 0..*)."
* diagnosKod ^definition = "Anger om beslutsunderlag endast skall hämtas för en eller ett antal diagnoskoder. Anges med ICD-10-SE kodverket. Anges ingen diagnoskod returneras alla underlag."
* diagnosKod ^comment = "TKB-fält: `diagnosKod` (`CV`, kardinalitet 0..*)."
* avenEjAktiva ^definition = "Anger om även ej aktiva beslutsunderlag skall hämtas. Anges ej attributet hämtas endast aktiva."
* avenEjAktiva ^comment = "TKB-fält: `avenEjAktiva` (`Boolean`, kardinalitet 0..1)."
