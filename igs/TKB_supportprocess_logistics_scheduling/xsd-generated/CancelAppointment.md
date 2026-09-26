| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | SnomedCtType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string | Tillåtna värden: 1.2.752.116.2.1.1. | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| appointmentId | uuidType |  | 1..1 |
| personId | PersonIdType |  | 1..1 |
| ../root | string | Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3. | 1..1 |
| ../extension | string |  | 1..1 |
| reasonText | string |  | 0..1 |
| reasonCode | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
