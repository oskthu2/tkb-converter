| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| serviceConsumerHsaId | HsaIdType |  | 1..1 |
| logicalAdress | LogicalAddressType |  | 1..1 |
| **Svar** | | | |
| serviceContractNamespace | ServiceContractNamespaceType | Type which describes a service contract. | 0..* |
| ../ServiceContractNamespace | anyURI |  | 1..1 |
