// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListMessagesFieldDescriptions
* result ^definition = "Resultat"
* result ^comment = "TKB-fält: `result` (kardinalitet 1..1)."
* result.code ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.code ^comment = "TKB-fält: `result.code` (`string`, kardinalitet 1..1)."
* result.errorId ^definition = "Enda möjliga är 1=INTERNAL"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`int`, kardinalitet 0..1)."
* result.errorMessage ^definition = "Text som ytterliggare beskriver felet"
* result.errorMessage ^comment = "TKB-fält: `result.errorMessage` (`string`, kardinalitet 0..1)."
* messageMetas ^comment = "TKB-fält: `messageMetas` (kardinalitet 0..n)."
* messageMetas.messageId ^definition = "Meddelandeidentitet"
* messageMetas.messageId ^comment = "TKB-fält: `messageMetas.messageId` (`long`, kardinalitet 1..1)."
* messageMetas.targetOrganization ^definition = "Verksamhet"
* messageMetas.targetOrganization ^comment = "TKB-fält: `messageMetas.targetOrganization` (`logicalAdressType`, kardinalitet 1..1)."
* messageMetas.serviceContractType ^definition = "Tjänstekontrakt"
* messageMetas.serviceContractType ^comment = "TKB-fält: `messageMetas.serviceContractType` (`ServiceContractType`, kardinalitet 1..1)."
* messageMetas.messageSize ^definition = "Meddelandestorlek (bytes)"
* messageMetas.messageSize ^comment = "TKB-fält: `messageMetas.messageSize` (`long`, kardinalitet 1..1)."
* messageMetas.arrivalTime ^definition = "Ankomsttid för meddelandet"
* messageMetas.arrivalTime ^comment = "TKB-fält: `messageMetas.arrivalTime` (`dateTime`, kardinalitet 1..1)."
* messageMetas.status ^definition = "Status på meddelandet"
* messageMetas.status ^comment = "TKB-fält: `messageMetas.status` (`MessageStatusType`, kardinalitet 1..1).

**Modellanteckning:** status Tillåtna värden: RECEIVED, RETRIEVED, DELETED."
