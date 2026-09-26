| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 0..1 |
| personalIdentityNumber | string |  | 0..1 |
| searchBase | SearchBaseType |  | 0..1 |
| **Svar** | | | |
| MiuInformation | MiuInformationType |  | 0..* |
| ../miuName | string |  | 1..1 |
| ../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../miuPurpose | string |  | 1..1 |
| ../careUnitHsaIdentity | HsaIdentityType |  | 1..1 |
| ../careUnitName | string |  | 0..1 |
| ../careGiver | string |  | 1..1 |
| ../careGiverName | string |  | 1..1 |
| ../careGiverOrgNo | orgNo |  | 1..1 |
| ../personalPrescriptionCode | string |  | 0..1 |
| ../hsaTitles | HsaTitlesType |  | 1..1 |
| ../../hsaTitle | string |  | 0..* |
| ../miuRights | MiuRightsType |  | 1..1 |
| ../../miuRight | string |  | 0..* |
| ../hsaSystemRoles | HsaSystemRolesType |  | 1..1 |
| ../../hsaSystemRole | string |  | 0..* |
| ../hsaIdentityPerson | HsaIdentityType |  | 1..1 |
| ../paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../../paTitleCode | string |  | 0..* |
| ../givenName | string |  | 1..1 |
| ../middleAndSurName | string |  | 1..1 |
