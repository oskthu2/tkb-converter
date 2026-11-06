// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationDispenseAuthorizationsFieldDescriptions
* medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationStatus ^definition = "Filtrerar ut endast de expedieringsunderlag som har den angivna statusen. Möjliga val är kopplade i NOD, ej kopplade i NOD, eller alla."
* medicationDispenseCase.medicationDispenseAuthorization.dispenseAuthorizationStatus ^comment = "TKB-fält: `dispenseAuthorizationStatus` (`DispenseAuthorizationStatusEnum`, kardinalitet 1..1)."
