// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMessagesFieldDescriptions
* result ^definition = "Resultat"
* result ^comment = "TKB-fält: `result` (kardinalitet 1..1)."
* result.code ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.code ^comment = "TKB-fält: `result.code` (`string`, kardinalitet 1..1)."
* result.errorId ^definition = "Enda möjliga är 1=INTERNAL"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`int`, kardinalitet 0..1)."
* result.errorMessage ^definition = "Text som ytterliggare beskriver felet"
* result.errorMessage ^comment = "TKB-fält: `result.errorMessage` (`string`, kardinalitet 0..1)."
* responses ^definition = "Svar"
* responses ^comment = "TKB-fält: `responses` (kardinalitet 0..n)."
* responses.messageId ^comment = "TKB-fält: `../messageId` (`long`, kardinalitet 1..1)."
* responses.targetOrganization ^comment = "TKB-fält: `../targetOrganization` (`LogicalAddressType`, kardinalitet 1..1)."
* responses.serviceContractType ^definition = "Type which describes a service contract. Used in interaction GetSupportedServiceContracts."
* responses.serviceContractType ^comment = "TKB-fält: `../serviceContractType` (`ServiceContractType`, kardinalitet 1..1)."
* responses.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 1..1)."
