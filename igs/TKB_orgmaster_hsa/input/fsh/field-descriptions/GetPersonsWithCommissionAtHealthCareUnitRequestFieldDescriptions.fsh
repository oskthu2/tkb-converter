// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPersonsWithCommissionAtHealthCareUnitRequestFieldDescriptions
* hsaIdentity ^comment = "TKB-fält: `hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1)."
* searchBase ^comment = "TKB-fält: `searchBase` (`SearchBaseType`, kardinalitet 0..1)."
* paTitleCodes ^comment = "TKB-fält: `paTitleCodes` (`PaTitleCodesType`, kardinalitet 1..1)."
* paTitleCodes.paTitleCode ^comment = "TKB-fält: `../paTitleCode` (`string`, kardinalitet 0..*)."
* hsaTitles ^comment = "TKB-fält: `hsaTitles` (`HsaTitlesType`, kardinalitet 1..1)."
* hsaTitles.hsaTitle ^comment = "TKB-fält: `../hsaTitle` (`string`, kardinalitet 0..*)."
