// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckPatientRelationRequestFieldDescriptions
* accessingActor ^definition = "Representerar den aktör/person som önskar åtkomst till informationen."
* accessingActor ^comment = "TKB-fält: `accessingActor` (`patientrelationship:AccessingActor`, kardinalitet 1..1).

**Modellanteckning:** Identifierar medarbetaren vars patientrelation kontrolleras."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`patientrelationship:PersonIdValue`, kardinalitet 1..1)."
