// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UnlinkPersonIdentityFieldDescriptions
* result ^definition = "Result status för om tjänsten utfördes. För felkoder, se datatyp resultType"
* result ^comment = "TKB-fält: `result` (`urn:riv:strategicresourcemanagement:persons:person:5:ResultType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
