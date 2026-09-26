| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 0..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | SnomedCtType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string | Tillåtna värden: 1.2.752.116.2.1.1. | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| healthcareServiceCode | string |  | 0..1 |
| practitionerId | HSAIdType |  | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 1..1 |
| personId | PersonIdType |  | 0..1 |
| ../root | string | Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3. | 1..1 |
| ../extension | string |  | 1..1 |
| **Svar** | | | |
| timeType | TimeTypeType |  | 0..* |
| ../code | string |  | 1..1 |
| ../hidden | boolean |  | 0..1 |
| ../careContactCode | CVType |  | 0..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../healthcareService | HealthcareServiceType |  | 0..* |
| ../../code | SnomedCtType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string | Tillåtna värden: 1.2.752.116.2.1.1. | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../information | InformationType |  | 0..* |
| ../../../header | string |  | 1..1 |
| ../../../description | string |  | 0..1 |
| ../../../link | anyURI |  | 0..1 |
| ../../conditionsToConfirm | InformationType |  | 0..* |
| ../../../header | string |  | 1..1 |
| ../../../description | string |  | 0..1 |
| ../../../link | anyURI |  | 0..1 |
| ../healthcareTeam | boolean |  | 0..1 |
| ../patientGroup | boolean |  | 0..1 |
| ../cancelAppointmentAllowed | boolean |  | 1..1 |
| ../updateAppointmentAllowed | boolean |  | 1..1 |
| ../appointmentRule | TimeTypeRulesType |  | 0..3 |
| ../../type | ProcessEnum |  | 1..1 |
| ../../reasonTextRequired | ReasonRequiredEnum |  | 1..1 |
| ../../reasonCodeRequired | ReasonRequiredEnum |  | 1..1 |
| ../../reasonCodes | CVType |  | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../information | InformationType |  | 0..* |
| ../../../header | string |  | 1..1 |
| ../../../description | string |  | 0..1 |
| ../../../link | anyURI |  | 0..1 |
| ../../conditionToConfirm | InformationType |  | 0..* |
| ../../../header | string |  | 1..1 |
| ../../../description | string |  | 0..1 |
| ../../../link | anyURI |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
