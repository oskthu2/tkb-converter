// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterBlockRequestFieldDescriptions
* block.blockId ^definition = "Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et."
* block.blockId ^comment = "TKB-fält: `blockId` (`blocking:Id`, kardinalitet 1..1)."
* block.blockType ^definition = "Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare)."
* block.blockType ^comment = "TKB-fält: `blockType` (`blocking:BlockType`, kardinalitet 1..1)."
* block.patientId ^definition = "Patientens personnummer, 12 tecken."
* block.patientId ^comment = "TKB-fält: `patientId` (`blocking:PersonIdValue`, kardinalitet 1..1)."
* block.informationStartDate ^definition = "Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt."
* block.informationStartDate ^comment = "TKB-fält: `informationStartDate` (`xs:dateTime`, kardinalitet 0..1)."
* block.informationEndDate ^definition = "Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt."
* block.informationEndDate ^comment = "TKB-fält: `informationEndDate` (`xs:dateTime`, kardinalitet 0..1)."
* block.informationCareUnitId ^definition = "Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för."
* block.informationCareUnitId ^comment = "TKB-fält: `informationCareUnitId` (`blocking:HsaId`, kardinalitet 0..1)."
* block.informationCareProviderId ^definition = "Obligatoriskt HSA-id för den vårdgivare spärren gäller för."
* block.informationCareProviderId ^comment = "TKB-fält: `informationCareProviderId` (`blocking:HsaId`, kardinalitet 1..1)."
* block.excludedInformationTypes ^definition = "Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'."
* block.excludedInformationTypes ^comment = "TKB-fält: `excludedInformationTypes` (`blocking:InformationTypeIdValue`, kardinalitet 0..*)."
