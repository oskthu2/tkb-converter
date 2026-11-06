// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogsByOrderRequestFieldDescriptions
* careProviderId ^definition = "Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på"
* careProviderId ^comment = "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:auditing:log:2:HsaId`, kardinalitet 1..1)."
* careUnitId ^definition = "Vårdenhet som är ägare till loggposter och som urvalet av loggposter baseras på"
* careUnitId ^comment = "TKB-fält: `careUnitId` (`urn:riv:informationsecurity:auditing:log:2:HsaId`, kardinalitet 0..500).

Obs: modellen anger 0..* där TKB:n anger 0..500."
* patientId ^definition = "Patientens personnummer, samordningsnummer, alternativt reservnummer"
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:auditing:log:2:IIType`, kardinalitet 0..500).

Obs: modellen anger 0..* där TKB:n anger 0..500.

**Modellanteckning:** En universellt unik identifierare."
* patientId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* patientId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* userId ^definition = "Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts."
* userId ^comment = "TKB-fält: `userId` (`urn:riv:informationsecurity:auditing:log:2:Id`, kardinalitet 0..500).

Obs: modellen anger 0..* där TKB:n anger 0..500."
* fromDate ^definition = "Obligatoriskt startdatum för att begränsa rapportuttaget."
* fromDate ^comment = "TKB-fält: `fromDate` (`xs:dateTime`, kardinalitet 1..1)."
* toDate ^definition = "Obligatoriskt slutdatum för att begränsa rapportuttaget."
* toDate ^comment = "TKB-fält: `toDate` (`xs:dateTime`, kardinalitet 1..1)."
* maxResultsPerFile ^definition = "Antal loggposter/fil (max 10000/zipfil)"
* maxResultsPerFile ^comment = "TKB-fält: `maxResultsPerFile` (`xs:int`, kardinalitet 0..1)."
