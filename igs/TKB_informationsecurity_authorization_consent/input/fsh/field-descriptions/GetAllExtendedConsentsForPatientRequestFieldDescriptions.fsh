// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllExtendedConsentsForPatientRequestFieldDescriptions
* patientId ^definition = "Personidentitet på patienten/brukaren vars samtycken skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1)."
* getCancelledFlag ^definition = "Flagga som avgör om ogiltiga samtyckesintyg skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:Boolean`, kardinalitet 1..1)."
