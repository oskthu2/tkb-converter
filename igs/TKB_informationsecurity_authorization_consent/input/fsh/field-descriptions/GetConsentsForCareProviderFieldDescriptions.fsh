// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConsentsForCareProviderFieldDescriptions
* getAllAssertionsResult ^definition = "Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret."
* getAllAssertionsResult ^comment = "TKB-fält: `getAllAssertionsResult` (`urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType`, kardinalitet 1..1)."
* getAllAssertionsResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* getAllAssertionsResult.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* getAllAssertionsResult.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* getAllAssertionsResult.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* getAllAssertionsResult.moreOnOrAfter ^comment = "TKB-fält: `../moreOnOrAfter` (`dateTime`, kardinalitet 1..1)."
* getAllAssertionsResult.hasMore ^comment = "TKB-fält: `../hasMore` (`boolean`, kardinalitet 1..1)."
* getAllAssertionsResult.assertions ^definition = "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg."
* getAllAssertionsResult.assertions ^comment = "TKB-fält: `../assertions` (`PDLAssertionType`, kardinalitet 0..*)."
* getAllAssertionsResult.assertions.assertionId ^comment = "TKB-fält: `../../assertionId` (`Id`, kardinalitet 1..1)."
* getAllAssertionsResult.assertions.assertionType ^comment = "TKB-fält: `../../assertionType` (`AssertionTypeType`, kardinalitet 1..1).

**Modellanteckning:** assertionType Tillåtna värden: Consent, Emergency."
* getAllAssertionsResult.assertions.scope ^comment = "TKB-fält: `../../scope` (`ScopeType`, kardinalitet 1..1).

**Modellanteckning:** scope Tillåtna värden: NationalLevel."
* getAllAssertionsResult.assertions.careProviderId ^comment = "TKB-fält: `../../careProviderId` (`HsaId`, kardinalitet 1..1)."
* getAllAssertionsResult.assertions.careUnitId ^comment = "TKB-fält: `../../careUnitId` (`HsaId`, kardinalitet 1..1)."
* getAllAssertionsResult.assertions.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 0..1)."
* getAllAssertionsResult.assertions.startDate ^comment = "TKB-fält: `../../startDate` (`dateTime`, kardinalitet 1..1)."
* getAllAssertionsResult.assertions.endDate ^comment = "TKB-fält: `../../endDate` (`dateTime`, kardinalitet 0..1)."
* getAllAssertionsResult.assertions.ownerId ^comment = "TKB-fält: `../../ownerId` (`OwnerId`, kardinalitet 0..1)."
* getAllAssertionsResult.assertions.patientId ^definition = "En universellt unik identifierare."
* getAllAssertionsResult.assertions.patientId ^comment = "TKB-fält: `../../patientId` (`IIType`, kardinalitet 1..1)."
* getAllAssertionsResult.cancelledAssertions ^definition = "Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes."
* getAllAssertionsResult.cancelledAssertions ^comment = "TKB-fält: `../cancelledAssertions` (`CancelledAssertionType`, kardinalitet 0..*)."
* getAllAssertionsResult.cancelledAssertions.assertionId ^comment = "TKB-fält: `../../assertionId` (`Id`, kardinalitet 1..1)."
* getAllAssertionsResult.cancelledAssertions.cancellationDate ^comment = "TKB-fält: `../../cancellationDate` (`dateTime`, kardinalitet 1..1)."
