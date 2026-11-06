# Artifacts Summary - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetImagingOutcome](StructureDefinition-getimagingoutcome.md) | Logisk modell för tjänstekontraktet GetImagingOutcome 1.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.4. |
| [GetImagingOutcome — Begäran](StructureDefinition-getimagingoutcome-request.md) | Logisk modell för tjänstekontraktet GetImagingOutcome 1.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.4. |
| [GetLaboratoryOrderOutcome](StructureDefinition-getlaboratoryorderoutcome.md) | Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3. |
| [GetLaboratoryOrderOutcome — Begäran](StructureDefinition-getlaboratoryorderoutcome-request.md) | Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.3. |
| [GetMaternityMedicalHistory](StructureDefinition-getmaternitymedicalhistory.md) | Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2. |
| [GetMaternityMedicalHistory — Begäran](StructureDefinition-getmaternitymedicalhistory-request.md) | Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2. |
| [GetReferralOutcome](StructureDefinition-getreferraloutcome.md) | Logisk modell för tjänstekontraktet GetReferralOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.1. |
| [GetReferralOutcome — Begäran](StructureDefinition-getreferraloutcome-request.md) | Logisk modell för tjänstekontraktet GetReferralOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.1. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DeliveryCode — ValueSet](ValueSet-deliverycode-vs.md) | Tillåtna värden enligt DeliveryCodeEnum. |
| [ErrorCode — ValueSet](ValueSet-errorcode-vs.md) | Tillåtna värden enligt ErrorCodeEnum. |
| [ExaminationStatusCode — ValueSet](ValueSet-examinationstatuscode-vs.md) | Tillåtna värden enligt ExaminationStatusCodeEnum. |
| [FetalPositionCode — ValueSet](ValueSet-fetalpositioncode-vs.md) | Tillåtna värden enligt FetalPositionCodeEnum. |
| [FetalPresentationCode — ValueSet](ValueSet-fetalpresentationcode-vs.md) | Tillåtna värden enligt FetalPresentationCodeEnum. |
| [MediaType — ValueSet](ValueSet-mediatype-vs.md) | Tillåtna värden enligt MediaTypeEnum. |
| [ReferralOutcomeTypeCode — ValueSet](ValueSet-referraloutcometypecode-vs.md) | Tillåtna värden enligt ReferralOutcomeTypeCodeEnum. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna värden enligt ResultCodeEnum. |
| [SexCode — ValueSet](ValueSet-sexcode-vs.md) | Tillåtna värden enligt SexCodeEnum. |
| [TypeOfLeaveCode — ValueSet](ValueSet-typeofleavecode-vs.md) | Tillåtna värden enligt TypeOfLeaveCodeEnum. |
| [TypeOfResultCode — ValueSet](ValueSet-typeofresultcode-vs.md) | Tillåtna värden enligt TypeOfResultCodeEnum. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DeliveryCode](CodeSystem-deliverycode-cs.md) | Förlossningsutfall (DeliveryCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. |
| [ErrorCode](CodeSystem-errorcode-cs.md) | Felkod vid logiskt fel (ErrorCodeEnum), se kapitel 4.4. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |
| [ExaminationStatusCode](CodeSystem-examinationstatuscode-cs.md) | Undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |
| [FetalPositionCode](CodeSystem-fetalpositioncode-cs.md) | Fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. |
| [FetalPresentationCode](CodeSystem-fetalpresentationcode-cs.md) | Föregående fosterdel (FetalPresentationCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. |
| [MediaType](CodeSystem-mediatype-cs.md) | Typ av multimedia, MIME-typ (MediaTypeEnum). Används i GetReferralOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |
| [ReferralOutcomeTypeCode](CodeSystem-referraloutcometypecode-cs.md) | Typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |
| [ResultCode](CodeSystem-resultcode-cs.md) | Resultatkod för begäran (ResultCodeEnum). Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |
| [SexCode](CodeSystem-sexcode-cs.md) | Kön (SexCodeEnum), enligt TKB:n kodverk med OID 1.2.752.129.2.2.1.1. Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. |
| [TypeOfLeaveCode](CodeSystem-typeofleavecode-cs.md) | Typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory. Koder enligt clinicalprocess_healthcond_actoutcome_enum_2.0.xsd. |
| [TypeOfResultCode](CodeSystem-typeofresultcode-cs.md) | Typ av svar (TypeOfResultCodeEnum). Används i GetLaboratoryOrderOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. |

