// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckConsentFieldDescriptions
* checkResult ^definition = "Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades."
* checkResult ^comment = "TKB-fält: `checkResult` (`urn:riv:informationsecurity:authorization:consent:2:CheckResultType`, kardinalitet 1..1)."
* checkResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* checkResult.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* checkResult.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* checkResult.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* checkResult.hasConsent ^comment = "TKB-fält: `../hasConsent` (`boolean`, kardinalitet 1..1)."
* checkResult.assertionType ^comment = "TKB-fält: `../assertionType` (`AssertionTypeType`, kardinalitet 0..1).

**Modellanteckning:** assertionType Tillåtna värden: Consent, Emergency."
