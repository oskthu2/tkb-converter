| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| healthCareUnitHsaId | string |  | 1..1 |
| searchBase | DNType |  | 0..1 |
| includeFeignedObject | boolean |  | 0..1 |
| **Svar** | | | |
| healthCareUnitMembers | HealthCareUnitMembersType |  | 0..1 |
| ../healthCareUnitName | string |  | 1..1 |
| ../healthCareUnitHsaId | string |  | 1..1 |
| ../healthCareUnitStartDate | dateTime |  | 0..1 |
| ../healthCareUnitEndDate | dateTime |  | 0..1 |
| ../healthCareUnitPrescriptionCode | string |  | 0..* |
| ../telephoneNumber | TelephoneNumberType |  | 0..* |
| ../postalAddress | AddressType |  | 0..1 |
| ../../addressLine | string |  | 1..* |
| ../postalCode | string |  | 0..1 |
| ../feignedHealthCareUnit | boolean |  | 0..1 |
| ../archivedHealthCareUnit | boolean |  | 0..1 |
| ../healthCareProvider | HealthCareProviderType |  | 1..1 |
| ../../healthCareProviderName | string |  | 1..1 |
| ../../healthCareProviderHsaId | string |  | 1..1 |
| ../../healthCareProviderOrgNo | string |  | 1..1 |
| ../../healthCareProviderStartDate | dateTime |  | 0..1 |
| ../../healthCareProviderEndDate | dateTime |  | 0..1 |
| ../../healthCareProviderPrescriptionCode | string |  | 0..* |
| ../../telephoneNumber | TelephoneNumberType |  | 0..* |
| ../../postalAddress | AddressType |  | 0..1 |
| ../../../addressLine | string |  | 1..* |
| ../../postalCode | string |  | 0..1 |
| ../../feignedHealthCareProvider | boolean |  | 0..1 |
| ../../archivedHealthCareProvider | boolean |  | 0..1 |
| ../healthCareUnitMember | HealthCareUnitMemberType |  | 0..* |
| ../../healthCareUnitMemberName | string |  | 1..1 |
| ../../healthCareUnitMemberHsaId | string |  | 1..1 |
| ../../healthCareUnitMemberStartDate | dateTime |  | 0..1 |
| ../../healthCareUnitMemberEndDate | dateTime |  | 0..1 |
| ../../healthCareUnitMemberPrescriptionCode | string |  | 0..* |
| ../../healthCareUnitMemberTelephoneNumber | TelephoneNumberType |  | 0..* |
| ../../healthCareUnitMemberpostalAddress | AddressType |  | 0..1 |
| ../../../addressLine | string |  | 1..* |
| ../../healthCareUnitMemberpostalCode | string |  | 0..1 |
| ../../feignedHealthCareUnitMember | boolean |  | 0..1 |
| ../../archivedHealthCareUnitMember | boolean |  | 0..1 |
