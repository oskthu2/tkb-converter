| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| originalAppointmentId | uuidType |  | 0..1 |
| personId | PersonIdType |  | 0..1 |
| ../root | string | Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3. | 1..1 |
| ../extension | string |  | 1..1 |
| timeTypeCode | string |  | 0..1 |
| healthcareServiceCode | string |  | 0..1 |
| **Svar** | | | |
| healthcareFacility | OrgUnitType |  | 0..* |
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
