# 6 Gemensamma informationskomponenter - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Högkostnadsskydd**, tjänstekontraktbeskrivning version 1.0 (2024-03-25), [TKB_financial_patientfees_exemption.docx](TKB_financial_patientfees_exemption.docx).

TKB:n har inget kapitel om datatyper. Typerna nedan är genererade ur domänschemana [financial_patientfees_exemption_1.0.xsd](financial_patientfees_exemption_1.0.xsd) och [financial_patientfees_exemption_enum_1.0.xsd](financial_patientfees_exemption_enum_1.0.xsd).

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| ActorType (`ActorTypeEnum`) | CITIZEN, GUARDIAN, CAREGIVER | [patientfees-exemption-actortype-cs](CodeSystem-patientfees-exemption-actortype-cs.md) | [patientfees-exemption-actortype-vs](ValueSet-patientfees-exemption-actortype-vs.md) |
| ResultCode (`ResultCodeEnum`) | OK, ERROR, INFO | [patientfees-exemption-resultcode-cs](CodeSystem-patientfees-exemption-resultcode-cs.md) | [patientfees-exemption-resultcode-vs](ValueSet-patientfees-exemption-resultcode-vs.md) |
| TypeOfExemption (`TypeOfExemptionEnum`) | CARE_VISIT, TECHNICAL_AID, TRANSPORTATION | [patientfees-exemption-typeofexemption-cs](CodeSystem-patientfees-exemption-typeofexemption-cs.md) | [patientfees-exemption-typeofexemption-vs](ValueSet-patientfees-exemption-typeofexemption-vs.md) |

### 6.2 Typer i domänschemat (XSD)

#### ActorType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| actorTypeEnum | ActorTypeEnum |   | 1..1 |
| actorId | IIType |   | 1..1 |
| careGiverId | IIType |   | 0..1 |

#### AmountType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| amount | decimal |   | 1..1 |
| currency | CVType |   | 1..1 |

#### CVType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| code | string |   | 0..1 |
| codeSystem | string |   | 0..1 |
| codeSystemName | string |   | 0..1 |
| codeSystemVersion | string |   | 0..1 |
| displayName | string |   | 0..1 |
| originalText | string |   | 0..1 |

#### DatePeriodType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| start | DateType |   | 0..1 |
| end | DateType |   | 0..1 |

#### ExemptionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| id | string |   | 1..1 |
| highCostProtectionPeriod | DatePeriodType |   | 1..1 |
| exemptionPeriod | DatePeriodType |   | 1..1 |
| typeOfExemption | TypeOfExemptionEnum |   | 1..1 |
| region | IIType |   | 1..1 |

#### FeeExemptionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| patientId | IIType |   | 1..1 |
| transactions | TransactionType |   | 0..* |
| exemptions | ExemptionType |   | 0..* |

#### IIType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### TransactionType

Domänschema `financial_patientfees_exemption_1.0.xsd` (namnrymd `urn:riv:financial:patientfees:exemption:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| fee | AmountType |   | 0..1 |
| dateOfVisit | DateType |   | 0..1 |
| timeOfRegistration | TimeStampType |   | 0..1 |
| typeOfFee | TypeOfExemptionEnum |   | 1..1 |
| careGiver | IIType |   | 0..1 |
| careUnit | IIType |   | 0..1 |

