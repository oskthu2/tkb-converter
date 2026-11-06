// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestOutcomeFieldDescriptions
* requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestId ^comment = "TKB-fält: `requestOutcome.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestOutcomeId ^definition = "Svar id

Id för remissvar, enligt format:

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE162321000451-0001#456"
* requestOutcomeId ^comment = "TKB-fält: `requestOutcome.requestOutcomeId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Id för remissvaret. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestOutcome ^definition = "Svarstyp

Anger typen av remissvar."
* typeOfRequestOutcome ^comment = "TKB-fält: `requestOutcome.typeOfRequestOutcome` (`CodeRequestOutcomeType`).

**Modellanteckning:** DSV delsvar, PSV preliminärt svar, SSV slutsvar."
