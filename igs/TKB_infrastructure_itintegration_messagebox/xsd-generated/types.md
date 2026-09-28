### MessageMetaType

Domänschema `infrastructure_itintegration_messagebox_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| messageId | long |  | 1..1 |
| targetOrganization | LogicalAddressType |  | 1..1 |
| serviceContractType | string |  | 1..1 |
| messageSize | long |  | 1..1 |
| arrivalTime | dateTime |  | 1..1 |
| status | MessageStatusType |  | 1..1 |

### ResponseType

Domänschema `GetMessagesResponder_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| messageId | long |  | 1..1 |
| targetOrganization | LogicalAddressType |  | 1..1 |
| serviceContractType | ServiceContractType | Type which describes a service contract. Used in interaction GetSupportedServiceContracts. | 1..1 |
| message | string |  | 1..1 |

### ResultType

Domänschema `infrastructure_itintegration_messagebox_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:1`).

Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | ResultCodeEnum |  | 1..1 |
| errorId | int |  | 0..1 |
| errorMessage | string |  | 0..1 |

### ServiceContractType

Domänschema `itintegration_registry_1.0.xsd` (namnrymd `urn:riv:itintegration:registry:1`).

Type which describes a service contract. Used in interaction GetSupportedServiceContracts.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ServiceContractNamespace | anyURI |  | 1..1 |
