// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeletePrescriptionReasonRequestFieldDescriptions
* activityId ^definition = "Aktivitets-id för den aktivitet med tillhörande information som ska raderas. Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax)."
* activityId ^comment = "TKB-fält: `activityId` (`IIType`, kardinalitet 0..1)."
* conditionId ^definition = "Tillstånds-id för det tillstånd/diagnos med tillhörande information som ska raderas. Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion). Någon av aktivitets-id eller tillstånds-id ska anges men ej båda."
* conditionId ^comment = "TKB-fält: `conditionId` (`IIType`, kardinalitet 0..1)."
