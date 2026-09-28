| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | ActorTypeEnum |  | 1..1 |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| listingCounties | IIType |  | 0..* |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
