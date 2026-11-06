// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CheckBlocksFieldDescriptions
* checkBlocksResult ^definition = "Lista med resultat motsvarande den informationslista som angavs som inparameter."
* checkBlocksResult ^comment = "TKB-fält: `checkBlocksResult` (`urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som innehåller resultatet från tjänsten CheckBlocks. Datatypen utökar datatypen Result."
* checkBlocksResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* checkBlocksResult.result ^comment = "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1)."
* checkBlocksResult.result.resultCode ^comment = "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* checkBlocksResult.result.resultText ^comment = "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1)."
* checkBlocksResult.checkResults ^definition = "Datatyp som representerar ett svar från kontrollen av åtkomst till information."
* checkBlocksResult.checkResults ^comment = "TKB-fält: `../checkResults` (`CheckResultType`, kardinalitet 0..*)."
* checkBlocksResult.checkResults.checkResultStatus ^comment = "TKB-fält: `../../status` (`CheckStatusType`, kardinalitet 1..1).

**Modellanteckning:** checkResultStatus Heter status i schemat."
* checkBlocksResult.checkResults.rowNumber ^comment = "TKB-fält: `../../rowNumber` (`int`, kardinalitet 1..1)."
