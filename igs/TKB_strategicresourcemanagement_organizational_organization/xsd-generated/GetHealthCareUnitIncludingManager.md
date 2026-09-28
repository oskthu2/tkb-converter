| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| healthCareUnitMemberHsaId | string |  | 1..1 |
| searchBase | DNType |  | 0..1 |
| includeFeignedObject | boolean |  | 0..1 |
| **Svar** | | | |
| healthCareUnit | HealthCareUnitIncludingManagerType |  | 0..1 |
| ../healthCareUnitMemberHsaId | string |  | 0..1 |
| ../healthCareUnitMemberName | string |  | 0..1 |
| ../healthCareUnitMemberStartDate | dateTime |  | 0..1 |
| ../healthCareUnitMemberEndDate | dateTime |  | 0..1 |
| ../healthCareUnitHsaId | string |  | 1..1 |
| ../unitIsHealthCareUnit | boolean |  | 0..1 |
| ../healthCareUnitName | string |  | 1..1 |
| ../healthCareUnitManagerHsaId | string |  | 0..1 |
| ../healthCareUnitStartDate | dateTime |  | 0..1 |
| ../healthCareUnitEndDate | dateTime |  | 0..1 |
| ../healthCareProviderHsaId | string |  | 1..1 |
| ../healthCareProviderName | string |  | 1..1 |
| ../healthCareProviderOrgNo | string |  | 1..1 |
| ../healthCareProviderStartDate | dateTime |  | 0..1 |
| ../healthCareProviderEndDate | dateTime |  | 0..1 |
| ../feignedHealthCareUnitMember | boolean |  | 0..1 |
| ../feignedHealthCareUnit | boolean |  | 0..1 |
| ../feignedHealthCareProvider | boolean |  | 0..1 |
| ../feignedHealthCareUnitManager | boolean |  | 0..1 |
| ../archivedHealthCareUnitMember | boolean |  | 0..1 |
| ../archivedHealthCareUnit | boolean |  | 0..1 |
| ../archivedHealthCareProvider | boolean |  | 0..1 |
