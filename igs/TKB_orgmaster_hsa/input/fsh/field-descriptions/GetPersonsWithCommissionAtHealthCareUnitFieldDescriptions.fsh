// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonsWithCommissionAtHealthCareUnitFieldDescriptions
* PersonList ^comment = "TKB-fält: `PersonList` (`PersonList`, kardinalitet 0..1)."
* PersonList.personListPerson ^comment = "TKB-fält: `../personListPerson` (`PersonListPerson`, kardinalitet 0..*)."
* PersonList.personListPerson.hsaIdentity ^comment = "TKB-fält: `../../hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1)."
* PersonList.personListPerson.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 1..1)."
* PersonList.personListPerson.sn ^comment = "TKB-fält: `../../sn` (`string`, kardinalitet 1..1)."
* PersonList.personListPerson.personalPrescriptionCode ^comment = "TKB-fält: `../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* PersonList.personListPerson.paTitleCodes ^comment = "TKB-fält: `../../paTitleCodes` (`PaTitleCodesType`, kardinalitet 1..1)."
* PersonList.personListPerson.paTitleCodes.paTitleCode ^comment = "TKB-fält: `../../../paTitleCode` (`string`, kardinalitet 0..*)."
* PersonList.personListPerson.paTitleNames ^comment = "TKB-fält: `../../paTitleNames` (`PaTitleNamesType`, kardinalitet 1..1)."
* PersonList.personListPerson.paTitleNames.paTitleName ^comment = "TKB-fält: `../../../paTitleName` (`string`, kardinalitet 0..*)."
* PersonList.personListPerson.hsaTitles ^comment = "TKB-fält: `../../hsaTitles` (`HsaTitlesType`, kardinalitet 1..1)."
* PersonList.personListPerson.hsaTitles.hsaTitle ^comment = "TKB-fält: `../../../hsaTitle` (`string`, kardinalitet 0..*)."
