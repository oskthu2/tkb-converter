| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| requestId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| patientId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| actor | ActorType |  | 1..1 |
| ../actorTypeEnum | ActorTypeEnum |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../careGiverId | IIType |  | 0..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| responseLogicalAddress | string |  | 1..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |
