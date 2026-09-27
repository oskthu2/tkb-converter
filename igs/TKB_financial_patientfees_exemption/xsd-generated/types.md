### ActorType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| actorTypeEnum | ActorTypeEnum |  | 1..1 |
| actorId | IIType |  | 1..1 |
| careGiverId | IIType |  | 0..1 |

### AmountType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| amount | decimal |  | 1..1 |
| currency | CVType |  | 1..1 |

### CVType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 0..1 |
| codeSystem | string |  | 0..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### DatePeriodType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType |  | 0..1 |
| end | DateType |  | 0..1 |

### ExemptionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string |  | 1..1 |
| highCostProtectionPeriod | DatePeriodType |  | 1..1 |
| exemptionPeriod | DatePeriodType |  | 1..1 |
| typeOfExemption | TypeOfExemptionEnum |  | 1..1 |
| region | IIType |  | 1..1 |

### FeeExemptionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType |  | 1..1 |
| transactions | TransactionType |  | 0..* |
| exemptions | ExemptionType |  | 0..* |

### IIType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### TransactionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fee | AmountType |  | 0..1 |
| dateOfVisit | DateType |  | 0..1 |
| timeOfRegistration | TimeStampType |  | 0..1 |
| typeOfFee | TypeOfExemptionEnum |  | 1..1 |
| careGiver | IIType |  | 0..1 |
| careUnit | IIType |  | 0..1 |
