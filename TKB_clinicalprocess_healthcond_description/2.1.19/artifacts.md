# Artifacts Summary - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAlertInformation](StructureDefinition-getalertinformation.md) | Logisk modell för svaret i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: uppmärksamhetsinformation för en patient samt resultat. |
| [GetAlertInformation — Request](StructureDefinition-getalertinformation-request.md) | Logisk modell för begäran i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. |
| [GetCareDocumentation](StructureDefinition-getcaredocumentation.md) | Logisk modell för svaret i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: hälso- och sjukvårdsdokument för en patient samt resultat. |
| [GetCareDocumentation — Request](StructureDefinition-getcaredocumentation-request.md) | Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. |
| [GetDiagnosis](StructureDefinition-getdiagnosis.md) | Logisk modell för svaret i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: diagnoser för en patient samt resultat. |
| [GetDiagnosis — Request](StructureDefinition-getdiagnosis-request.md) | Logisk modell för begäran i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. |
| [GetFunctionalStatus](StructureDefinition-getfunctionalstatus.md) | Logisk modell för svaret i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: funktionsstatusbedömningar för en patient samt resultat. |
| [GetFunctionalStatus — Request](StructureDefinition-getfunctionalstatus-request.md) | Logisk modell för begäran i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssessmentCategory — ValueSet](ValueSet-assessmentcategory-vs.md) | Tillåtna värden för assessmentCategory i GetFunctionalStatus 2.0. |
| [DiagnosisType — ValueSet](ValueSet-diagnosistype-vs.md) | Tillåtna värden för typeOfDiagnosis i GetDiagnosis 2.0. |
| [KV Anteckningstyp — ValueSet](ValueSet-clinicaldocumentnotecode-vs.md) | Tillåtna värden för clinicalDocumentNoteCode i GetCareDocumentation 2.1 (KV Anteckningstyp, OID 1.2.752.129.2.2.2.11). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssessmentCategory](CodeSystem-assessmentcategory-cs.md) | Bedömningskategori för funktionsstatus enligt AssessmentCategoryEnum i domänschemat 2.1. Värdet ska stämma överens med categorization i engagemangsposten (TKB avsnitt 4.1). |
| [DiagnosisType](CodeSystem-diagnosistype-cs.md) | Typ av diagnos (huvud- respektive bidiagnos) enligt DiagnosisTypeEnum i domänschemat 2.1. Används i typeOfDiagnosis i GetDiagnosis. |
| [KV Anteckningstyp](CodeSystem-clinicaldocumentnotecode-cs.md) | Kodverk för typ av hälso- och sjukvårdsdokument enligt KV Anteckningstyp (OID 1.2.752.129.2.2.2.11), med de värden som är tillåtna i ClinicalDocumentNoteCodeEnum i domänschemat 2.1. |

