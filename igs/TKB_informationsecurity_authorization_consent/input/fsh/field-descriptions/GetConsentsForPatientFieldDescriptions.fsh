// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConsentsForPatientFieldDescriptions
* getConsentsResult ^definition = "Lista med giltiga samtycken för patient/brukare."
* getConsentsResult ^comment = "TKB-fält: `getConsentsResult` (`urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result."
* getConsentsResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* getConsentsResult.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* getConsentsResult.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* getConsentsResult.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* getConsentsResult.pdlAssertions ^definition = "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg."
* getConsentsResult.pdlAssertions ^comment = "TKB-fält: `../pdlAssertions` (`PDLAssertionType`, kardinalitet 0..*)."
* getConsentsResult.pdlAssertions.assertionId ^comment = "TKB-fält: `../../assertionId` (`Id`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.assertionType ^comment = "TKB-fält: `../../assertionType` (`AssertionTypeType`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.scope ^comment = "TKB-fält: `../../scope` (`ScopeType`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.careProviderId ^comment = "TKB-fält: `../../careProviderId` (`HsaId`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.careUnitId ^comment = "TKB-fält: `../../careUnitId` (`HsaId`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 0..1)."
* getConsentsResult.pdlAssertions.startDate ^comment = "TKB-fält: `../../startDate` (`dateTime`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.endDate ^comment = "TKB-fält: `../../endDate` (`dateTime`, kardinalitet 0..1)."
* getConsentsResult.pdlAssertions.ownerId ^comment = "TKB-fält: `../../ownerId` (`OwnerId`, kardinalitet 0..1)."
* getConsentsResult.pdlAssertions.patientId ^definition = "En universellt unik identifierare."
* getConsentsResult.pdlAssertions.patientId ^comment = "TKB-fält: `../../patientId` (`IIType`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.patientId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* getConsentsResult.pdlAssertions.patientId.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
