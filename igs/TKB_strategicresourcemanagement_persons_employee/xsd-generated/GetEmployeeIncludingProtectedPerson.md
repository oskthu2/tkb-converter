| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personHsaId | string |  | 0..1 |
| personalIdentityNumber | string |  | 0..1 |
| searchBase | DNType |  | 0..1 |
| includeFeignedObject | boolean |  | 0..1 |
| **Svar** | | | |
| personInformation | PersonInformationType |  | 0..* |
| ../personHsaId | string |  | 1..1 |
| ../givenName | string |  | 0..1 |
| ../middleAndSurName | string |  | 1..1 |
| ../nickName | string |  | 0..1 |
| ../mail | string |  | 0..1 |
| ../telephoneNumber | TelephoneNumberType |  | 0..* |
| ../switchboardNumber | TelephoneNumberType |  | 0..1 |
| ../nonPublicTelephoneNumber | TelephoneNumberType |  | 0..* |
| ../mobileNumber | TelephoneNumberType |  | 0..* |
| ../smsTelephoneNumber | TelephoneNumberType |  | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |  | 0..* |
| ../telephoneHour | TimeSpanType |  | 0..* |
| ../../fromDay | string |  | 1..1 |
| ../../fromTime | time |  | 1..1 |
| ../../toDay | string |  | 1..1 |
| ../../toTime | time |  | 1..1 |
| ../../comment | string |  | 0..1 |
| ../postalAddress | AddressType |  | 0..1 |
| ../../addressLine | string |  | 1..* |
| ../description | string |  | 0..1 |
| ../languageKnowledgeCode | string |  | 0..* |
| ../title | string |  | 0..1 |
| ../healthCareProfessionalLicence | string |  | 0..* |
| ../paTitle | PaTitleType |  | 0..* |
| ../../paTitleName | string |  | 0..1 |
| ../../paTitleCode | string |  | 0..1 |
| ../specialityName | string |  | 0..* |
| ../specialityCode | string |  | 0..* |
| ../dn | DNType |  | 1..1 |
| ../protectedPerson | boolean |  | 0..1 |
| ../personStartDate | dateTime |  | 0..1 |
| ../personEndDate | dateTime |  | 0..1 |
| ../feignedPerson | boolean |  | 0..1 |
