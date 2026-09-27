| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| healthcareFacilityHSAId | HSAIdType |  | 1..1 |
| listingTypes | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| healthcarePersonnel | HealthcarePersonnelType |  | 0..* |
| ../id | HSAIdType |  | 1..1 |
| ../name | string |  | 1..1 |
| ../title | string |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
