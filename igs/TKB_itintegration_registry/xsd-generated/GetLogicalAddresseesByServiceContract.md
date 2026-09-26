| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| serviceConsumerHsaId | HsaIdType |  | 1..1 |
| serviceContractNameSpace | ServiceContractNamespaceType | Type which describes a service contract. | 1..1 |
| ../ServiceContractNamespace | anyURI |  | 1..1 |
| **Svar** | | | |
| logicalAddress | LogicalAddressType |  | 0..* |
