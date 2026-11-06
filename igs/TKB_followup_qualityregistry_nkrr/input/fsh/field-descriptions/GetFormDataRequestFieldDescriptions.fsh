// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFormDataRequestFieldDescriptions
* formId ^definition = "Identifierare av mallen."
* formId ^comment = "TKB-fält: `formId` (`string`, kardinalitet 1..1)."
* subjectOfCareId ^definition = "Identifierare av patienten."
* subjectOfCareId ^comment = "TKB-fält: `subjectOfCareId` (`SubjectOfCareIdType`, kardinalitet 1..1)."
* careEncounterStartDate ^definition = "Datum för start av vårdhändelse.

Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterStartDate i en informationsspecifikation eller annan tillämpad specifikation."
* careEncounterStartDate ^comment = "TKB-fält: `careEncounterStartDate` (`Iso8601DateType`, kardinalitet 0..1)."
* careEncounterEndDate ^definition = "Datum för slut av vårdhändelse.

Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterEndDate i en informationsspecifikation eller annan tillämpad specifikation."
* careEncounterEndDate ^comment = "TKB-fält: `careEncounterEndDate` (`Iso8601DateType`, kardinalitet 0..1)."
* careUnitHSAId ^definition = "Vårdenheter inom vilka underlag ska hämtas."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HsaIdType`, kardinalitet 0..*)."
* employeeId ^definition = "Identifierare av medarbetare."
* employeeId ^comment = "TKB-fält: `employeeId` (`HsaIdType`, kardinalitet 0..1).

**Modellanteckning:** Identifierare av medarbetare (HSA-ID).
Vid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller
employeePersonId anges (R3 – Registrator måste anges).
I ett helautomatiserat förlopp efter en notifiering ska fälten inte anges."
* employeePersonId ^definition = "Medarbetares personnummer. Anges med 12 tecken utan avskiljare."
* employeePersonId ^comment = "TKB-fält: `employeePersonId` (`string`, kardinalitet 0..1).

**Modellanteckning:** Medarbetares personnummer. Anges med 12 tecken utan avskiljare.
Vid interaktivt förlopp (registrator loggar in) måste antingen employeeId eller
employeePersonId anges (R3 – Registrator måste anges).
I ett helautomatiserat förlopp efter en notifiering ska fälten inte anges."
