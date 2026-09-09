# Artifacts Summary - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAlertInformation](StructureDefinition-getalertinformation.md) | Logisk modell för tjänstekontraktet GetAlertInformation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2). Representerar responsens informationsstruktur: uppmärksamhetsinformation för en patient, exempelvis överkänslighet mot läkemedel, allvarlig sjukdom eller vårdbegränsningar. |
| [GetAlertInformation — Request](StructureDefinition-getalertinformation-request.md) | Logisk modell för requestparametrar i GetAlertInformation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2). Söker uppmärksamhetsinformation för en patient med valfri filtrering. |
| [GetCareDocumentation](StructureDefinition-getcaredocumentation.md) | Logisk modell för tjänstekontraktet GetCareDocumentation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3). Representerar responsens informationsstruktur: journalanteckningar för en patient. Anteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning. Meddelandeformatet är kompatibelt med HL7 v3 CDA v2. |
| [GetCareDocumentation — Request](StructureDefinition-getcaredocumentation-request.md) | Logisk modell för requestparametrar i GetCareDocumentation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3). Söker journalanteckningar för en patient med valfri filtrering. |
| [GetDiagnosis](StructureDefinition-getdiagnosis.md) | Logisk modell för tjänstekontraktet GetDiagnosis (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2). Representerar responsens informationsstruktur: registrerade diagnoser för en patient inklusive diagnoskod per ursprungligt diagnosticeringstillfälle. |
| [GetDiagnosis — Request](StructureDefinition-getdiagnosis-request.md) | Logisk modell för requestparametrar i GetDiagnosis (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2). Söker diagnoser för en patient med valfri filtrering. |
| [GetFunctionalStatus](StructureDefinition-getfunctionalstatus.md) | Logisk modell för tjänstekontraktet GetFunctionalStatus (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2). Representerar responsens informationsstruktur: dokumenterade bedömningar av funktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient. Bedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning). En tjänsteproducent måste använda samma värde för categorization i engagemangsindex som för assessmentCategory i svaret. |
| [GetFunctionalStatus — Request](StructureDefinition-getfunctionalstatus-request.md) | Logisk modell för requestparametrar i GetFunctionalStatus (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2). Söker funktionsstatusbedömningar för en patient med valfri filtrering. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssessmentCategory — ValueSet](ValueSet-assessmentcategory-vs.md) | Tillåtna värden för fältet assessmentCategory i GetFunctionalStatus. |
| [DiagnosisType — ValueSet](ValueSet-diagnosistype-vs.md) | Tillåtna värden för fältet typeOfDiagnosis i GetDiagnosis. |
| [KV Anteckningstyp — ValueSet](ValueSet-clinicaldocumentnotecode-vs.md) | Tillåtna värden för fältet clinicalDocumentNoteCode i GetCareDocumentation enligt KV Anteckningstyp (OID: 1.2.752.129.2.2.2.11). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssessmentCategory](CodeSystem-assessmentcategory-cs.md) | Bedömningskategori för funktionsstatus. Tillåtna värden är 'pad-pad' (PADL-bedömning) och 'fun-fun' (funktionsnedsättningsbedömning). Definierat i enum XSD v2.1 för domänen. |
| [DiagnosisType](CodeSystem-diagnosistype-cs.md) | Kodverk för typ av diagnos (huvud- respektive bidiagnos). Definierat i XSD för domänen. |
| [KV Anteckningstyp](CodeSystem-clinicaldocumentnotecode-cs.md) | Kodverk för typ av journalanteckning enligt KV Anteckningstyp. OID: 1.2.752.129.2.2.2.11. |

