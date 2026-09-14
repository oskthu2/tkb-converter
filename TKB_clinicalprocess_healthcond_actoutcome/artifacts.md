# Artifacts Summary - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetImagingOutcome](StructureDefinition-getimagingoutcome.md) | Logisk modell för tjänstekontraktet GetImagingOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1). Representerar responsens informationsstruktur — bilddiagnostiska resultat för en patient. Baseras på NPÖ RIV 2.2.0-specifikation. |
| [GetImagingOutcome — Request](StructureDefinition-getimagingoutcome-request.md) | Logisk modell för requestparametrar i GetImagingOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1). |
| [GetLaboratoryOrderOutcome](StructureDefinition-getlaboratoryorderoutcome.md) | Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4). Representerar responsens informationsstruktur — multidisciplinära laboratoriesvar för en patient. |
| [GetLaboratoryOrderOutcome — Request](StructureDefinition-getlaboratoryorderoutcome-request.md) | Logisk modell för requestparametrar i GetLaboratoryOrderOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4). Representerar de sökparametrar som tjänstekonsumenten skickar in. |
| [GetMaternityMedicalHistory](StructureDefinition-getmaternitymedicalhistory.md) | Logisk modell för tjänstekontraktet GetMaternityMedicalHistory (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistory:2). Representerar responsens informationsstruktur — mödravårdsjournal för en patient. |
| [GetMaternityMedicalHistory — Request](StructureDefinition-getmaternitymedicalhistory-request.md) | Logisk modell för requestparametrar i GetMaternityMedicalHistory (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistory:2). |
| [GetReferralOutcome](StructureDefinition-getreferraloutcome.md) | Logisk modell för tjänstekontraktet GetReferralOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3). Representerar responsens informationsstruktur — svar på konsultationsremiss och begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt med HL7v3 CDA v.2. |
| [GetReferralOutcome — Request](StructureDefinition-getreferraloutcome-request.md) | Logisk modell för requestparametrar i GetReferralOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DeliveryCode — ValueSet](ValueSet-deliverycode-vs.md) | Tillåtna värden för förlossningssätt i GetMaternityMedicalHistory. |
| [ExaminationStatusCode — ValueSet](ValueSet-examinationstatuscode-vs.md) | Tillåtna värden för examinationStatus i GetImagingOutcome. |
| [ReferralOutcomeTypeCode — ValueSet](ValueSet-referraloutcometypecode-vs.md) | Tillåtna värden för referralOutcomeTypeCode i GetReferralOutcome. |
| [SexCode — ValueSet](ValueSet-sexcode-vs.md) | Tillåtna värden för kön i GetMaternityMedicalHistory. |
| [TypeOfResultCode — ValueSet](ValueSet-typeofresultcode-vs.md) | Tillåtna värden för typeOfResult i GetImagingOutcome. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DeliveryCode](CodeSystem-deliverycode-cs.md) | Kodverk för förlossningssätt (DeliveryCodeEnum). Används i GetMaternityMedicalHistory. |
| [ExaminationStatusCode](CodeSystem-examinationstatuscode-cs.md) | Kodverk för undersökningsstatus (ExaminationStatusCodeEnum). Används i GetImagingOutcome. |
| [FetalPositionCode](CodeSystem-fetalpositioncode-cs.md) | Kodverk för fosterläge (FetalPositionCodeEnum). Används i GetMaternityMedicalHistory. |
| [ReferralOutcomeTypeCode](CodeSystem-referraloutcometypecode-cs.md) | Kodverk för typ av remissvar (ReferralOutcomeTypeCodeEnum). Används i GetReferralOutcome. |
| [SexCode](CodeSystem-sexcode-cs.md) | Kodverk för kön (SexCodeEnum). Används i GetMaternityMedicalHistory för barnets kön. OBS: Överväg att använda HL7 AdministrativeGender istället. |
| [TypeOfLeaveCode](CodeSystem-typeofleavecode-cs.md) | Kodverk för typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory. |
| [TypeOfResultCode](CodeSystem-typeofresultcode-cs.md) | Kodverk för typ av resultat (TypeOfResultCodeEnum). Används i GetImagingOutcome och GetReferralOutcome. |

