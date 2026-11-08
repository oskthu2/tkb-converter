// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterTemporaryRevokeRequestFieldDescriptions
* temporaryRevokeRegistration ^definition = "Registreringsuppgifter för tillfällig hävning."
* temporaryRevokeRegistration ^comment = "TKB-fält: `temporaryRevokeRegistration` (`urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType`, kardinalitet 1..1)."
* temporaryRevokeRegistration.temporaryRevokeId ^comment = "TKB-fält: `../temporaryRevokeId` (`Id`, kardinalitet 1..1)."
* temporaryRevokeRegistration.blockId ^comment = "TKB-fält: `../blockId` (`Id`, kardinalitet 1..1)."
* temporaryRevokeRegistration.endDate ^comment = "TKB-fält: `../endDate` (`dateTime`, kardinalitet 1..1)."
* temporaryRevokeRegistration.revokedForCareUnitId ^comment = "TKB-fält: `../revokedForCareUnitId` (`HsaId`, kardinalitet 1..1)."
* temporaryRevokeRegistration.revokedForEmployeeId ^comment = "TKB-fält: `../revokedForEmployeeId` (`HsaId`, kardinalitet 0..1)."
