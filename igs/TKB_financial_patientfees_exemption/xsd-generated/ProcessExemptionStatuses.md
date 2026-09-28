| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| requestId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| feeExemption | FeeExemptionType |  | 0..* |
| ../patientId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../transactions | TransactionType |  | 0..* |
| ../../fee | AmountType |  | 0..1 |
| ../../../amount | decimal |  | 1..1 |
| ../../../currency | CVType |  | 1..1 |
| ../../../../code | string |  | 0..1 |
| ../../../../codeSystem | string |  | 0..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../dateOfVisit | DateType |  | 0..1 |
| ../../timeOfRegistration | TimeStampType |  | 0..1 |
| ../../typeOfFee | TypeOfExemptionEnum |  | 1..1 |
| ../../careGiver | IIType |  | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../careUnit | IIType |  | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../exemptions | ExemptionType |  | 0..* |
| ../../id | string |  | 1..1 |
| ../../highCostProtectionPeriod | DatePeriodType |  | 1..1 |
| ../../../start | DateType |  | 0..1 |
| ../../../end | DateType |  | 0..1 |
| ../../exemptionPeriod | DatePeriodType |  | 1..1 |
| ../../../start | DateType |  | 0..1 |
| ../../../end | DateType |  | 0..1 |
| ../../typeOfExemption | TypeOfExemptionEnum |  | 1..1 |
| ../../region | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
