| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| newListingCounty | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| homeCounty | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| listingType | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
