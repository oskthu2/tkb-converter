// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckConsentRequestFieldDescriptions
* accessingActor ^definition = "Representerar den aktör/person som önskar åtkomst till informationen."
* accessingActor ^comment = "TKB-fält: `accessingActor` (`urn:riv:informationsecurity:authorization:consent:2:AccessingActorType`, kardinalitet 1..1)."
* accessingActor.employeeId ^comment = "TKB-fält: `../employeeId` (`HsaId`, kardinalitet 1..1)."
* accessingActor.careProviderId ^comment = "TKB-fält: `../careProviderId` (`HsaId`, kardinalitet 1..1)."
* accessingActor.careUnitId ^comment = "TKB-fält: `../careUnitId` (`HsaId`, kardinalitet 1..1)."
* patientId ^definition = "Personidentitet på patienten/brukaren vars samtycke skall kontrolleras."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1)."
