# Artifacts Summary - informatics: terminology v1.4

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetTerminologySubset](StructureDefinition-getterminologysubset.md) | Logisk modell för tjänstekontraktet GetTerminologySubset (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1). Representerar responsens informationsstruktur.Tjänsten hämtar en delmängd (subset) av en terminologi (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbar i ett visst sammanhang. Stöder bl.a. dynamiskt urval av orsaker till antibiotikainsättning som rapporteras till Infektionsregistret. |
| [GetTerminologySubset — Request](StructureDefinition-getterminologysubset-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetTerminologySubset (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1). |

