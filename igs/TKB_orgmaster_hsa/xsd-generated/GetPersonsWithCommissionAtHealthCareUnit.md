| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| searchBase | SearchBaseType |  | 0..1 |
| paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../paTitleCode | string |  | 0..* |
| hsaTitles | HsaTitlesType |  | 1..1 |
| ../hsaTitle | string |  | 0..* |
| **Svar** | | | |
| PersonList | PersonList |  | 0..1 |
| ../personListPerson | PersonListPerson |  | 0..* |
| ../../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../../givenName | string |  | 1..1 |
| ../../sn | string |  | 1..1 |
| ../../personalPrescriptionCode | string |  | 0..1 |
| ../../paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../../../paTitleCode | string |  | 0..* |
| ../../paTitleNames | PaTitleNamesType |  | 1..1 |
| ../../../paTitleName | string |  | 0..* |
| ../../hsaTitles | HsaTitlesType |  | 1..1 |
| ../../../hsaTitle | string |  | 0..* |
