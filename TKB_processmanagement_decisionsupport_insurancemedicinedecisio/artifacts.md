# Artifacts Summary - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetDiagnosInformation](StructureDefinition-getdiagnosinformation.md) | Logisk modell för tjänstekontraktet GetDiagnosInformation (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1). Representerar responsens informationsstruktur — generell information om diagnoser. Sådan information kan gälla för en eller flera diagnoser samtidigt. |
| [GetDiagnosInformation — Request](StructureDefinition-getdiagnosinformation-request.md) | Logisk modell för requestparametrar i GetDiagnosInformation. (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1). Anges ej parametern diagnosKod returneras diagnosinformation för alla diagnoskoder. |
| [GetFmb](StructureDefinition-getfmb.md) | Logisk modell för tjänstekontraktet GetFmb (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1). Representerar responsens informationsstruktur — beslutsunderlag från FMB (Försäkringsmedicinskt beslutsstöd). |
| [GetFmb — Request](StructureDefinition-getfmb-request.md) | Logisk modell för requestparametrar i GetFmb. (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1). Anges inga parametrar returneras samtliga aktiva underlag. |
| [GetVersions](StructureDefinition-getversions.md) | Logisk modell för tjänstekontraktet GetVersions (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1). Returnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades, respektive senast ändrades. Begäran har inga inparametrar. |

