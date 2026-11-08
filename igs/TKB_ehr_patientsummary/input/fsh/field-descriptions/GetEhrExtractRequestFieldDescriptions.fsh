// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetEhrExtractRequestFieldDescriptions
* subject_of_care_id ^comment = "TKB-fält: `subject_of_care_id` (`II`, kardinalitet 1..1)."
* purpose ^definition = "Anger anledningen till anropet. Innehållet i detta fält kan användas/defineras per tjänstekonsument beroende på användningsområde. Vid användning av detta fält måste det finnas en överrenskommelse mellan tjästekonsumenten och tjänsteproducenten."
* purpose ^comment = "TKB-fält: `purpose` (`CD`, kardinalitet 0..1)."
* rc_ids ^comment = "TKB-fält: `rc_ids` (`II`, kardinalitet 0..*)."
* time_period ^definition = "Begränsning av sökningen i tid, baserat på kliniskt relevanta datum. Händelser anses ligga inom intervallet, om de till någon del ligger inom intervallet. (Start- och slutpunkt inkluderas i intervallet.) Formatet för start- respektive slutdatum är ÅÅÅÅMMDD. (Exempel på när tidsintervall används är om NPÖs frågetjänst blir anropad med tidsintervall - då propageras intervallet ner till källsystemen.)"
* time_period ^comment = "TKB-fält: `time_period` (`IVL_TS`, kardinalitet 0..1)."
* max_sensitivity ^comment = "TKB-fält: `max_sensitivity` (`INT`, kardinalitet 0..1)."
* all_versions ^comment = "TKB-fält: `all_versions` (`BL`, kardinalitet 0..1)."
* multimedia_included ^comment = "TKB-fält: `multimedia_included` (`BL`, kardinalitet 0..1)."
* archetype_ids ^comment = "TKB-fält: `archetype_ids` (`II`, kardinalitet 0..*)."
* meanings ^definition = "En av NPÖ definerad huvudinformationstyp."
* meanings ^comment = "TKB-fält: `meanings` (`CD`, kardinalitet 1..1).

Obs: modellen anger 0..* där TKB:n anger 1..1."
* max_records ^comment = "TKB-fält: `max_records` (`INT`, kardinalitet 0..1)."
* parameters ^definition = "Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken."
* parameters ^comment = "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).

Obs: modellen anger 0..* där TKB:n anger 1..1."
* parameters.code ^comment = "TKB-fält: `../code` (`CD`, kardinalitet 0..1)."
* parameters.name ^comment = "TKB-fält: `../name` (`ST`, kardinalitet 1..1)."
* parameters.value ^comment = "TKB-fält: `../value` (`ST`, kardinalitet 1..1)."
