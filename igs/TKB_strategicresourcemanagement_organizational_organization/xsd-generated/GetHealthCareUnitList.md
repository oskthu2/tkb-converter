| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| healthCareProviderHsaId | string |  | 1..1 |
| searchBase | DNType |  | 0..1 |
| includeFeignedObject | boolean |  | 0..1 |
| **Svar** | | | |
| healthCareUnitList | HealthCareUnitListType |  | 0..1 |
| ../healthCareProviderHsaId | string |  | 1..1 |
| ../healthCareProviderName | string |  | 1..1 |
| ../healthCareProviderOrgNo | string |  | 1..1 |
| ../healthCareProviderStartDate | dateTime |  | 0..1 |
| ../healthCareProviderEndDate | dateTime |  | 0..1 |
| ../healthCareUnit | HealthCareUnitType |  | 0..* |
| ../../healthCareUnitHsaId | string |  | 1..1 |
| ../../healthCareUnitName | string |  | 1..1 |
| ../../healthCareUnitStartDate | dateTime |  | 0..1 |
| ../../healthCareUnitEndDate | dateTime |  | 0..1 |
| ../../feignedHealthCareUnit | boolean |  | 0..1 |
| ../../archivedHealthCareUnit | boolean |  | 0..1 |
| ../feignedHealthCareProvider | boolean |  | 0..1 |
| ../archivedHealthCareProvider | boolean |  | 0..1 |
