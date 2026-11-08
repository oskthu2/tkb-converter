// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteEhrExtractRequestFieldDescriptions
* ehr_system ^definition = "Det värde som skickades för patientinformationen då anrop till tjänsten ReceiveEhrExtract gjordes."
* ehr_system ^comment = "TKB-fält: `ehr_system` (`II`, kardinalitet 1..1)."
* subject_of_care ^definition = "Id för patienten. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes."
* subject_of_care ^comment = "TKB-fält: `subject_of_care` (`II`, kardinalitet 1..1)."
* deletion ^definition = "Innehåller par av rcId och meaning.

rcId:

Globalt unikt id för posten som ska tas bort. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. (Värdet hittas i ”ehr_extract.all_compositions.rc_id”.)

meaning:

Den huvudinformationstyp som posten (som ska tas bort) gäller för."
* deletion ^comment = "TKB-fält: `deletion` (`DeletionType`, kardinalitet 1..*)."
* deletion.rc_id ^comment = "TKB-fält: `../rc_id` (`II`, kardinalitet 1..1)."
* deletion.meaning ^comment = "TKB-fält: `../meaning` (`CD`, kardinalitet 1..1)."
* parameters ^definition = "Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten DeleteEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken."
* parameters ^comment = "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).

Obs: modellen anger 0..* där TKB:n anger 1..1."
* parameters.code ^comment = "TKB-fält: `../code` (`CD`, kardinalitet 0..1)."
* parameters.name ^comment = "TKB-fält: `../name` (`ST`, kardinalitet 1..1)."
* parameters.value ^comment = "TKB-fält: `../value` (`ST`, kardinalitet 1..1)."
