// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessCareEncounterRequestFieldDescriptions
* careEncounter ^comment = "TKB-fält: `careEncounter` (`CareEncounterType`, kardinalitet 1..1)."
* careEncounter.time.start ^definition = "Startdatum. Format ÅÅÅÅMMDDttmmss."
* careEncounter.time.start ^comment = "TKB-fält: `CareEncounterType.time.start` (`TimeStampType`, kardinalitet 0..1)."
* careEncounter.time.end ^definition = "Slutdatum. Format ÅÅÅÅMMDDttmmss."
* careEncounter.time.end ^comment = "TKB-fält: `CareEncounterType.time.end` (`TimeStampType`, kardinalitet 0..1)."
* careEncounter.location ^comment = "TKB-fält: `location` (`LocationType`, kardinalitet 0..1)."
* careEncounter.patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
* careEncounter.sourceSystem ^comment = "TKB-fält: `sourceSystem` (`SourceSystemType`, kardinalitet 0..1).

**Modellanteckning:** Root: OID för HSA-id: 1.2.752.129.2.1.4.1"
* careEncounter.performerRole ^comment = "TKB-fält: `performerRole` (`PerformerRoleType`, kardinalitet 1..1)."
