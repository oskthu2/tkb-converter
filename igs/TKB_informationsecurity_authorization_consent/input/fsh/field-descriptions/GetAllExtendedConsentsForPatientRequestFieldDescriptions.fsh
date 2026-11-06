// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllExtendedConsentsForPatientRequestFieldDescriptions
* patientId ^definition = "Personidentitet på patienten/brukaren vars samtycken skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1).

**Modellanteckning:** En universellt unik identifierare."
* patientId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* patientId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* getCancelledFlag ^definition = "Flagga som avgör om ogiltiga samtyckesintyg skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:Boolean`, kardinalitet 1..1)."
