| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| **Svar** | | | |
| healthcareFacility | OrgUnitType |  | 1..1 |
| ../HSAId | HSAIdType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 1..1 |
| ../name | string |  | 0..1 |
| ../alternativeLocation | string |  | 0..1 |
| ../information | InformationType |  | 0..* |
| ../../header | string |  | 1..1 |
| ../../description | string |  | 0..1 |
| ../../link | anyURI |  | 0..1 |
| ../conditionToConfirm | InformationType |  | 0..* |
| ../../header | string |  | 1..1 |
| ../../description | string |  | 0..1 |
| ../../link | anyURI |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
