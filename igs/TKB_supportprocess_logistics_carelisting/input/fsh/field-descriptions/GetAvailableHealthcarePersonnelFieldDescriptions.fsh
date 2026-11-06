// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableHealthcarePersonnelFieldDescriptions
* healthcarePersonnel ^definition = "Lista med vårdpersonal som kan väljas för listningen för den valda mottagningen i begäran."
* healthcarePersonnel ^comment = "TKB-fält: `healthcarePersonnel` (`HealthcarePersonnelType`, kardinalitet 0..*)."
* healthcarePersonnel.healthcarePersonnelId ^definition = "HsaId för vårdpersonal"
* healthcarePersonnel.healthcarePersonnelId ^comment = "TKB-fält: `healthcarePersonnel.id` (`HSAIdType / (string)`, kardinalitet 1..1).

**Modellanteckning:** healthcarePersonnelId Heter id i schemat."
* healthcarePersonnel.healthcarePersonnelName ^definition = "Namn (för- och efternamn) för vårdpersonal"
* healthcarePersonnel.healthcarePersonnelName ^comment = "TKB-fält: `healthcarePersonnel.name` (`string`, kardinalitet 1..1).

**Modellanteckning:** healthcarePersonnelName Heter name i schemat."
* healthcarePersonnel.title ^definition = "Vårdpersonals titel"
* healthcarePersonnel.title ^comment = "TKB-fält: `healthcarePersonnel.title` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
