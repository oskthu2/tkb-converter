# Artifacts Summary - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetMedicationHistory](StructureDefinition-getmedicationhistory.md) | Logisk modell för tjänstekontraktet GetMedicationHistory (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2). Representerar responsens informationsstruktur — läkemedelshistorik per patient.OBS: Kontraktet är tämligen omfattande. Se tillämpningsanvisningen (AB_clinicalprocess_activityprescription_actoutcome.docx) för implementationsdetaljer. |
| [GetMedicationHistory — Request](StructureDefinition-getmedicationhistory-request.md) | Logisk modell för requestparametrar i GetMedicationHistory. |
| [GetVaccinationHistory](StructureDefinition-getvaccinationhistory.md) | Logisk modell för tjänstekontraktet GetVaccinationHistory (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2). Representerar responsens informationsstruktur — vaccinationsjournal per patient. |
| [GetVaccinationHistory — Request](StructureDefinition-getvaccinationhistory-request.md) | Logisk modell för requestparametrar i GetVaccinationHistory. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ErrorCode — ValueSet](ValueSet-errorcode-vs.md) | Tillåtna värden för errorCode i svar. |
| [PrescriptionStatus — ValueSet](ValueSet-prescriptionstatus-vs.md) | Tillåtna värden för prescriptionStatus i GetMedicationHistory. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna värden för resultCode i svar. |
| [TypeOfPrescription — ValueSet](ValueSet-typeofprescription-vs.md) | Tillåtna värden för typeOfPrescription i GetMedicationHistory. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ErrorCode](CodeSystem-errorcode-cs.md) | Kodverk för felkoder i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome. |
| [NonReplaceable](CodeSystem-nonreplaceable-cs.md) | Kodverk för aktör som har angett att ett läkemedel inte är utbytbart i GetMedicationHistory (DispensationAuthorizationType). |
| [PrescriptionStatus](CodeSystem-prescriptionstatus-cs.md) | Kodverk för ordinationsstatus i GetMedicationHistory. Anger om en ordination är aktiv eller inaktiv. |
| [ResultCode](CodeSystem-resultcode-cs.md) | Kodverk för resultatkod i svar från tjänstekontrakten i domänen clinicalprocess:activityprescription:actoutcome. |
| [TypeOfPrescription](CodeSystem-typeofprescription-cs.md) | Kodverk för ordinationstyp i GetMedicationHistory. Anger om en ordination är en insättnings- eller utsättningsordination. |

