// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HandleHospCertificationPersonRequestFieldDescriptions
* personalIdentityNumber ^definition = "Person-id för den person vars HoSp-uppgifter ska begäras utlämnade från Socialstyrelsen. Ref. person-id (personalIdentityNumber) [R5]"
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber` (`String`, kardinalitet 1..1)."
* operation ^definition = "\"add\" för att lägga till personen, \"remove\" för att ta bort personen från utlämningsförfrågningar."
* operation ^comment = "TKB-fält: `operation` (`String`, kardinalitet 1..1)."
* certificationId ^definition = "Frivillig uppgift. Alternativ id för personposten"
* certificationId ^comment = "TKB-fält: `certificationId` (`String`, kardinalitet 0..1)."
* reason ^definition = "Frivillig uppgift om anledning till avregistrering. Uppgiften sparas inte utan kommer bara loggas i tjänstekontraktets logg."
* reason ^comment = "TKB-fält: `reason` (`String`, kardinalitet 0..1)."
