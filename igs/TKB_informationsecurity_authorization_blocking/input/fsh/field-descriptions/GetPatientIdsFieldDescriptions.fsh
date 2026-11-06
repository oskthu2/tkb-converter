// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPatientIdsFieldDescriptions
* getPatientIdResult ^definition = "Lista över unika patienter som har aktiva spärrar."
* getPatientIdResult ^comment = "TKB-fält: `getPatientIdResult` (`urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result."
* getPatientIdResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* getPatientIdResult.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* getPatientIdResult.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* getPatientIdResult.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* getPatientIdResult.patientIds ^definition = "En universellt unik identifierare."
* getPatientIdResult.patientIds ^comment = "TKB-fält: `../patientIds` (`IIType`, kardinalitet 0..*)."
* getPatientIdResult.patientIds.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* getPatientIdResult.patientIds.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
