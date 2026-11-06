// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckConsentRequestFieldDescriptions
* accessingActor ^definition = "Representerar den aktör/person som önskar åtkomst till informationen."
* accessingActor ^comment = "TKB-fält: `accessingActor` (`patientconsent:AccessingActor`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till."
* patientId ^comment = "TKB-fält: `patientId` (`patientconsent:PersonIdValue`, kardinalitet 1..1).

**Modellanteckning:** PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken."
