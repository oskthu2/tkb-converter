# Artifacts Summary - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [DeleteCareEncounter — Request](StructureDefinition-deletecareencounter-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1). Raderar information som tidigare registrerats via ProcessCareEncounter. |
| [DeleteCareEncounter — Response](StructureDefinition-deletecareencounter-response.md) | Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1). |
| [DeleteLaboratoryReport — Request](StructureDefinition-deletelaboratoryreport-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1). Raderar information som tidigare registrerats via ProcessLaboratoryReport. |
| [DeleteLaboratoryReport — Response](StructureDefinition-deletelaboratoryreport-response.md) | Logisk modell för responsen från tjänstekontraktet DeleteLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1). |
| [DeletePrescription — Request](StructureDefinition-deleteprescription-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1). Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort. |
| [DeletePrescription — Response](StructureDefinition-deleteprescription-response.md) | Logisk modell för responsen från tjänstekontraktet DeletePrescription (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1). |
| [DeletePrescriptionReason — Request](StructureDefinition-deleteprescriptionreason-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1). Raderar information som tidigare registrerats via ProcessPrescriptionReason. Antingen activityId eller conditionId ska anges, men inte båda. |
| [DeletePrescriptionReason — Response](StructureDefinition-deleteprescriptionreason-response.md) | Logisk modell för responsen från tjänstekontraktet DeletePrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1). |
| [ProcessCareEncounter — Request](StructureDefinition-processcareencounter-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1). Skriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras genom att ett nytt meddelande med samma vårdkontaktsid skickas in. |
| [ProcessCareEncounter — Response](StructureDefinition-processcareencounter-response.md) | Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1). |
| [ProcessLaboratoryReport — Request](StructureDefinition-processlaboratoryreport-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1). Registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. |
| [ProcessLaboratoryReport — Response](StructureDefinition-processlaboratoryreport-response.md) | Logisk modell för responsen från tjänstekontraktet ProcessLaboratoryReport (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1). |
| [ProcessPrescriptionReason — Request](StructureDefinition-processprescriptionreason-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1). Registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuellt aktivitet, ordination och ordinerad substans. |
| [ProcessPrescriptionReason — Response](StructureDefinition-processprescriptionreason-response.md) | Logisk modell för responsen från tjänstekontraktet ProcessPrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1). |

