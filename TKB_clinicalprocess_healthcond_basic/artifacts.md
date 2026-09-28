# Artifacts Summary - clinicalprocess: healthcond: basic v2.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetObservations](StructureDefinition-getobservations.md) | Logisk modell för tjänstekontraktet GetObservations (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2). Representerar responsens informationsstruktur — en samling observationer som matchar sökkriterier i begäran, inklusive header-information. Meddelandemodellen från avsnitt 5.1 V-MIM — Observationer i TKB motsvarar en observation i svarsmeddelandet. |
| [GetObservations — Request](StructureDefinition-getobservations-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetObservations (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2). Den enda alltid obligatoriska sökparametern är personPatientId. Minst en ytterligare sökparameter måste anges — annars ska producenten avvisa begäran med SOAP exception. |

