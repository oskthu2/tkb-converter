| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| targetOrganizations | LogicalAddressType |  | 0..* |
| serviceContractTypes | ServiceContractType | Type which describes a service contract. Used in interaction GetSupportedServiceContracts. | 0..* |
| ../ServiceContractNamespace | anyURI |  | 1..1 |
| **Svar** | | | |
| result | ResultType | Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage. | 1..1 |
| ../code | ResultCodeEnum |  | 1..1 |
| ../errorId | int |  | 0..1 |
| ../errorMessage | string |  | 0..1 |
| messageMetas | MessageMetaType |  | 0..* |
| ../messageId | long |  | 1..1 |
| ../targetOrganization | LogicalAddressType |  | 1..1 |
| ../serviceContractType | string |  | 1..1 |
| ../messageSize | long |  | 1..1 |
| ../arrivalTime | dateTime |  | 1..1 |
| ../status | MessageStatusType |  | 1..1 |
