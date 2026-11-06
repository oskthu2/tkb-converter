// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeviceObservationConsumerRequestFieldDescriptions
* logicalAddress ^definition = "Logisk adress enligt WS-Addressing (WSDL-meddelandet CommunicatePCDData_Message)."
* logicalAddress ^comment = "TKB-fält: `LogicalAddress (SOAP-huvud `wsa:To`)` (`string`, kardinalitet 1..1).

**Modellanteckning:** SOAP-huvud wsa:To (WS-Addressing). Tjänstekonsumentens (Device Observation Consumer) logiska adress, se TKB avsnitt 3.2."
* communicatePCDData ^definition = "ihe-pcd-01 enligt Interoperability design guidelines for

personal health systems samt de fältregler som beskrivs nedan."
* communicatePCDData ^comment = "TKB-fält: `CommunicatePCDData` (`xs:string`, kardinalitet 1..1).

**Modellanteckning:** HL7 v2.6-meddelande ORU^R01^ORU_R01 i ER7-format enligt IHE PCD-01 och Continua Design Guidelines (H.812), med de förtydliganden för segmenten MSH, PID, OBR och OBX som TKB:n anger. Reserverade XML-tecken ska ersättas med entiteter."
