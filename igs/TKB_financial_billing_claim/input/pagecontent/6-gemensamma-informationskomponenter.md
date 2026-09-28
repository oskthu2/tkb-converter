# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning Utomlänsfakturering*, version 1.1 (2025-10-13), [TKB_financial_billing_claim.docx](TKB_financial_billing_claim.docx).

*SAKNAS I KÄLLDOKUMENT*: TKB:n har inget kapitel om gemensamma informationskomponenter. Meddelandemodellen beskrivs i [avsnitt 5](5-tjanstedomanens-meddelandemodeller.html). Kodverken och typerna nedan är hämtade ur domänschemana.

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Resultatkod (`ResultCodeEnum`) | OK, ERROR, INFO | [financial-billing-claim-resultcode-cs](CodeSystem-financial-billing-claim-resultcode-cs.html) | [financial-billing-claim-resultcode-vs](ValueSet-financial-billing-claim-resultcode-vs.html) |

### 6.2 Typer i domänschemat (XSD)

Genererat ur [financial_billing_claim_1.1.xsd](financial_billing_claim_1.1.xsd).

#### ActivityType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| medicalFieldCode | string |  | 1..1 |
| businessClassification | CVType |  | 0..1 |
| careLevel | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### AmountType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| amount | decimal |  | 1..1 |
| currency | CVType |  | 1..1 |

#### CVType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 0..1 |
| codeSystem | string |  | 0..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

#### CategorizationType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| productCategory | string |  | 0..1 |
| priceList | string |  | 0..1 |
| DRGCost | DRGCostType |  | 0..1 |
| patientSpecificCare | PatientSpecificCareType |  | 0..* |

#### ContactType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | string |  | 0..1 |
| telephone | string |  | 0..1 |
| electronicMail | string |  | 0..1 |

#### CustomerPartyType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| identification | IIType |  | 1..2 |
| buyerContact | ContactType |  | 0..1 |

#### DRGCostType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| DRGCode | CVType |  | 0..1 |
| DRGPrice | AmountType |  | 0..1 |
| extendedAllowanceCareTime | AmountType |  | 0..1 |
| extendedAllowanceCost | AmountType |  | 0..1 |

#### DatePeriodType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType |  | 0..1 |
| end | DateType |  | 0..1 |

#### DiagnosisCodeType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| diagnosisCode | CVType |  | 1..1 |

#### DiagnosisType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| inpatientCareDiagnosis | PatientDiagnosisType |  | 0..1 |
| outpatientCareDiagnosis | PatientDiagnosisType |  | 0..1 |

#### HealthcareCategoryType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfCare | CVType |  | 1..1 |
| publicCare | boolean |  | 0..1 |
| plannedHealthcare | boolean |  | 1..1 |
| typeOfVisit | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### HealthcareDischargeDateType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careDischargeDate | DateType |  | 1..1 |
| careDischargeTime | TimeType |  | 0..1 |

#### HealthcarePerformedType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| lineId | positiveInteger |  | 1..1 |
| careContactId | string |  | 0..1 |
| referenceToLineId | positiveInteger |  | 0..1 |
| reasonForCredit | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |
| paymentCommitment | PaymentCommitmentType |  | 0..1 |
| healthcareCategory | HealthcareCategoryType |  | 1..1 |
| timespan | TimespanType |  | 1..1 |
| healthcareUnit | HealthcareUnitType |  | 1..1 |
| categorization | CategorizationType |  | 0..1 |
| invoicedAmountDetails | InvoicedAmountDetailsType |  | 1..1 |
| activity | ActivityType |  | 1..1 |
| diagnosis | DiagnosisType |  | 0..1 |
| treatment | TreatmentType |  | 0..1 |

#### HealthcareServicesSpecificationLineType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientInformation | PatientInformationType |  | 1..1 |
| healthcarePerformed | HealthcarePerformedType |  | 1..* |

#### HealthcareUnitType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careUnitId | IIType |  | 0..1 |
| careUnitName | string |  | 1..1 |
| professionCodeForHealthcare | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### HealthcareVisitDateTimeType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careVisitDate | DateType |  | 1..1 |
| careVisitTime | TimeType |  | 0..1 |

#### IIType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 1..1 |

#### InvoicedAmountDetailsType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientCareInvoiceGrossAmount | AmountType |  | 1..1 |
| patientCareInvoiceNetAmount | AmountType |  | 1..1 |
| patientCareAllowance | AmountType |  | 0..1 |
| patientCareDiscount | AmountType |  | 0..1 |
| patientCareCharge | AmountType |  | 0..1 |
| outPatientCareFee | AmountType |  | 0..1 |
| outPatientCareFeePaid | AmountType |  | 0..1 |
| patientFeeReducedCategory | string |  | 0..1 |
| patientFreePassCauseIndicator | boolean |  | 0..1 |
| inpatientCareFee | AmountType |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### NumberOfDaysType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| onLeave | positiveInteger |  | 0..1 |
| inCare | positiveInteger |  | 0..1 |

#### PatientDiagnosisType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| mainDiagnosis | DiagnosisCodeType |  | 1..1 |
| biDiagnosis | DiagnosisCodeType |  | 0..* |

#### PatientInformationType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientIdentity | IIType |  | 1..1 |
| patientOtherInformation | PatientOtherInformationType |  | 1..1 |

#### PatientOtherInformationType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| county | CVType |  | 1..1 |
| municipality | CVType |  | 1..1 |
| listingLocalAuthoritiesNumber | IIType |  | 0..1 |
| LMACardNumber | string |  | 0..1 |
| gender | CVType |  | 0..1 |
| EUCardNumber | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### PatientSpecificCareType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientSpecificCareCode | string |  | 0..1 |
| patientSpecificCareCodeName | string |  | 0..1 |
| numberOfPatientSpecificCare | integer |  | 0..1 |
| patientSpecificCarePrice | AmountType |  | 0..1 |
| patientSpecificCareTotalAmount | AmountType |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### PaymentCommitmentType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| remittanceNumber | string |  | 0..1 |
| paymentCommitmentNumber | string |  | 0..1 |
| typeOfAgreement | string |  | 0..1 |
| typeOfChapter | string |  | 0..1 |
| agreementInRiksavtalet | string |  | 0..1 |
| typeOfReimbursement | string |  | 0..1 |
| unspecified | UnspecifiedType |  | 0..* |

#### ProcessClaimSpecificationType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string |  | 1..1 |
| issueDate | DateType |  | 1..1 |
| issueTime | TimeType |  | 0..1 |
| typeOfInvoice | string |  | 1..1 |
| invoiceId | string |  | 0..1 |
| invoiceDateOfIssue | DateType |  | 0..1 |
| referenceToInvoice | string |  | 0..1 |
| referenceToProcessClaimSpecificationId | string |  | 0..1 |
| payableAmount | AmountType |  | 1..1 |
| unspecified | UnspecifiedType |  | 0..* |
| supplierParty | SupplierPartyType |  | 1..1 |
| customerParty | CustomerPartyType |  | 1..1 |
| healthCareServicesSpecificationLine | HealthcareServicesSpecificationLineType |  | 0..* |

#### SupplierPartyType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| identification | IIType |  | 1..2 |
| sellerContact | ContactType |  | 0..1 |

#### TimespanType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthcareVisitDateTime | HealthcareVisitDateTimeType |  | 1..1 |
| healthcareDischargeDateTime | HealthcareDischargeDateType |  | 0..1 |
| invoicePeriod | DatePeriodType |  | 0..1 |
| numberOfDays | NumberOfDaysType |  | 0..1 |

#### TreatmentType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfTreatment | CVType |  | 0..* |
| ATC | CVType |  | 0..* |
| unspecified | UnspecifiedType |  | 0..* |

#### UnspecifiedType

Domänschema `financial_billing_claim_1.1.xsd` (namnrymd `urn:riv:financial:billing:claim:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| text | string |  | 1..1 |
| type | string |  | 0..1 |
