// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestConfirmationFieldDescriptions
* requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestId ^comment = "TKB-fält: `requestConfirmation.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestConfirmationId ^definition = "Remissbekräftelse id

Unik identifierare för remissbekräftelsen.

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#456"
* requestConfirmationId ^comment = "TKB-fält: `requestConfirmation.requestConfirmationId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Unik identifierare för remissbekräftelsen. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestConfirmation ^definition = "Typ av remissbekräftelse

Anger typ av svar."
* typeOfRequestConfirmation ^comment = "TKB-fält: `requestConfirmation.typeOfRequestConfirmation` (`CodeRequestConfirmationType`).

**Modellanteckning:** BEK bekräftelse, VID besked om vidareskickning, KOM kompletteringsbegäran, AVB avbruten remiss, AVV avvisad remiss."
