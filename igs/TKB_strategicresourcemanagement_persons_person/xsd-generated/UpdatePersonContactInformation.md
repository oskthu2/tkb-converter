| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../updateTime | Timestamp |  | 0..1 |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| versionToUpdate | Timestamp |  | 0..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../contactType | CodedValue |  | 1..1 |
| ../use | CodedValue |  | 0..1 |
| ../value | string |  | 0..1 |
| ../rank | int |  | 0..1 |
| ../comment | string |  | 0..1 |
| ../period | DatePeriodType |  | 0..1 |
| ../../start | date |  | 0..1 |
| ../../end | date |  | 0..1 |
| ../digitalNotification | boolean |  | 0..1 |
| contactPerson | ContactPersonType |  | 0..* |
| ../contactRelationshipType | CodedValue |  | 1..1 |
| ../priorityOrder | int |  | 0..1 |
| ../givenName | String80 |  | 0..1 |
| ../surName | String80 |  | 0..1 |
| ../middleName | String80 |  | 0..1 |
| ../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../careOf | String40 |  | 0..1 |
| ../../postalAddress1 | String40 |  | 0..1 |
| ../../postalAddress2 | String40 |  | 0..1 |
| ../../postalCode | PostalCode |  | 0..1 |
| ../../city | String40 |  | 0..1 |
| ../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |  | 1..1 |
| ../../use | CodedValue |  | 0..1 |
| ../../value | string |  | 0..1 |
| ../../rank | int |  | 0..1 |
| ../../comment | string |  | 0..1 |
| ../../period | DatePeriodType |  | 0..1 |
| ../../../start | date |  | 0..1 |
| ../../../end | date |  | 0..1 |
| ../../digitalNotification | boolean |  | 0..1 |
| optoutPaperNotification | boolean |  | 0..1 |
| **Svar** | | | |
| updatePersonContactInformationResult | UpdatePersonContactInformationResultType |  | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |
| ../../version | Timestamp |  | 1..1 |
| ../../personId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |  | 1..1 |
| ../../../use | CodedValue |  | 0..1 |
| ../../../value | string |  | 0..1 |
| ../../../rank | int |  | 0..1 |
| ../../../comment | string |  | 0..1 |
| ../../../period | DatePeriodType |  | 0..1 |
| ../../../../start | date |  | 0..1 |
| ../../../../end | date |  | 0..1 |
| ../../../digitalNotification | boolean |  | 0..1 |
| ../../contactPerson | ContactPersonType |  | 0..* |
| ../../../contactRelationshipType | CodedValue |  | 1..1 |
| ../../../priorityOrder | int |  | 0..1 |
| ../../../givenName | String80 |  | 0..1 |
| ../../../surName | String80 |  | 0..1 |
| ../../../middleName | String80 |  | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |  | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../city | String40 |  | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |  | 1..1 |
| ../../../../use | CodedValue |  | 0..1 |
| ../../../../value | string |  | 0..1 |
| ../../../../rank | int |  | 0..1 |
| ../../../../comment | string |  | 0..1 |
| ../../../../period | DatePeriodType |  | 0..1 |
| ../../../../../start | date |  | 0..1 |
| ../../../../../end | date |  | 0..1 |
| ../../../../digitalNotification | boolean |  | 0..1 |
| ../../protectedPersonIndicator | boolean |  | 1..1 |
| ../../protectedPopulationRecord | boolean |  | 0..1 |
| ../../optoutPaperNotification | boolean |  | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../updateTime | Timestamp |  | 0..1 |
