| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| LogicalAddress (SOAP-huvud `wsa:To`) | string | Logisk adress enligt WS-Addressing (WSDL-meddelandet CommunicatePCDData_Message). | 1..1 |
| CommunicatePCDData | UnsolicitedObservationResult (string) | HL7 v2.6 ORU^R01 i ER7-format. | 1..1 |
| **Svar** | | | |
| CommunicatePCDDataResponse | GeneralAcknowledgement (string) | HL7 v2.6-kvittens i ER7-format. | 1..1 |
