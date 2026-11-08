// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterBlockRequestFieldDescriptions
* blockId ^definition = "Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et."
* blockId ^comment = "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* blockType ^definition = "Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare)."
* blockType ^comment = "TKB-fält: `blockType` (`urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType`, kardinalitet 1..1).

**Modellanteckning:** blockType Tillåtna värden: Inner, Outer."
* patientId ^definition = "Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1)."
* informationStartDate ^definition = "Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt."
* informationStartDate ^comment = "TKB-fält: `informationStartDate` (`xs:DateTime`, kardinalitet 0..1)."
* informationEndDate ^definition = "Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt."
* informationEndDate ^comment = "TKB-fält: `informationEndDate` (`xs:DateTime`, kardinalitet 0..1)."
* informationCareUnitId ^definition = "Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för."
* informationCareUnitId ^comment = "TKB-fält: `informationCareUnitId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 0..1)."
* informationCareProviderId ^definition = "Obligatoriskt HSA-id för den vårdgivare spärren gäller för."
* informationCareProviderId ^comment = "TKB-fält: `informationCareProviderId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 1..1)."
* excludedInformationTypes ^definition = "Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'."
* excludedInformationTypes ^comment = "TKB-fält: `excludedInformationTypes` (`urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue`, kardinalitet 0..*)."
* temporaryRevokeRegistration ^definition = "Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet."
* temporaryRevokeRegistration ^comment = "TKB-fält: `temporaryRevokeRegistration` (`urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType`, kardinalitet 0..*)."
* temporaryRevokeRegistration.temporaryRevokeId ^comment = "TKB-fält: `../temporaryRevokeId` (`Id`, kardinalitet 1..1)."
* temporaryRevokeRegistration.blockId ^comment = "TKB-fält: `../blockId` (`Id`, kardinalitet 1..1)."
* temporaryRevokeRegistration.endDate ^comment = "TKB-fält: `../endDate` (`dateTime`, kardinalitet 1..1)."
* temporaryRevokeRegistration.revokedForCareUnitId ^comment = "TKB-fält: `../revokedForCareUnitId` (`HsaId`, kardinalitet 1..1)."
* temporaryRevokeRegistration.revokedForEmployeeId ^comment = "TKB-fält: `../revokedForEmployeeId` (`HsaId`, kardinalitet 0..1)."
