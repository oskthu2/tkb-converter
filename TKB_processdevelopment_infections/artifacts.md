# Artifacts Summary - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [DeleteActivity](StructureDefinition-deleteactivity.md) | Logisk modell för tjänstekontraktet DeleteActivity (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessActivity. Representerar responsens informationsstruktur.Request innehåller endast två filterfält (logicalAddress, activityId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [DeleteCareEncounter](StructureDefinition-deletecareencounter.md) | Logisk modell för tjänstekontraktet DeleteCareEncounter (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessCareEncounter. Representerar responsens informationsstruktur.Request innehåller endast två filterfält (logicalAddress, careEncounterId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [DeleteCondition](StructureDefinition-deletecondition.md) | Logisk modell för tjänstekontraktet DeleteCondition (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessCondition. Representerar responsens informationsstruktur.Request innehåller endast två filterfält (logicalAddress, conditionId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [DeleteLaboratoryReport](StructureDefinition-deletelaboratoryreport.md) | Logisk modell för tjänstekontraktet DeleteLaboratoryReport (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessLaboratoryReport. Representerar responsens informationsstruktur.Request innehåller endast två filterfält (logicalAddress, laboratoryReportId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [DeletePrescription](StructureDefinition-deleteprescription.md) | Logisk modell för tjänstekontraktet DeletePrescription (RIV-TA processdevelopment:infections). Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason (ordinationsorsaken för ordinationen tas inte bort). Representerar responsens informationsstruktur.Request innehåller endast två filterfält (logicalAddress, prescriptionId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [DeletePrescriptionReason](StructureDefinition-deleteprescriptionreason.md) | Logisk modell för tjänstekontraktet DeletePrescriptionReason (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessPrescriptionReason. Representerar responsens informationsstruktur.Request innehåller endast tre filterfält (logicalAddress, activityId, conditionId — exakt ett av activityId/conditionId ska anges) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. |
| [ProcessActivity](StructureDefinition-processactivity.md) | Logisk modell för tjänstekontraktet ProcessActivity (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av en aktivitet. |
| [ProcessActivity — Request](StructureDefinition-processactivity-request.md) | Logisk modell för requestparametrar i ProcessActivity. Registrerar en eller flera aktiviteter som utförts på en patient på en viss enhet. En befintlig aktivitet kan uppdateras genom att ett nytt meddelande med samma aktivitetsid skickas in. |
| [ProcessCareEncounter](StructureDefinition-processcareencounter.md) | Logisk modell för tjänstekontraktet ProcessCareEncounter (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av en patientplacering (vårdkontakt). |
| [ProcessCareEncounter — Request](StructureDefinition-processcareencounter-request.md) | Logisk modell för requestparametrar i ProcessCareEncounter. Registrerar en ny patientplacering med information om patient, organisatorisk enhet och period för placeringen. En befintlig patientplacering kan uppdateras genom att ett nytt meddelande med samma vårdkontaktid skickas in. |
| [ProcessCondition](StructureDefinition-processcondition.md) | Logisk modell för tjänstekontraktet ProcessCondition (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av ett bedömt hälsorelaterat tillstånd. |
| [ProcessCondition — Request](StructureDefinition-processcondition-request.md) | Logisk modell för requestparametrar i ProcessCondition. Registrerar ett eller flera nya bedömt hälsorelaterat tillstånd med information om patient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan uppdateras genom att ett nytt meddelande med samma tillståndsid skickas in. |
| [ProcessLaboratoryReport](StructureDefinition-processlaboratoryreport.md) | Logisk modell för tjänstekontraktet ProcessLaboratoryReport (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av ett laboratoriesvar. |
| [ProcessLaboratoryReport — Request](StructureDefinition-processlaboratoryreport-request.md) | Logisk modell för requestparametrar i ProcessLaboratoryReport. Registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. |
| [ProcessPrescriptionReason](StructureDefinition-processprescriptionreason.md) | Logisk modell för tjänstekontraktet ProcessPrescriptionReason (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av en ordinationsorsak. |
| [ProcessPrescriptionReason — Request](StructureDefinition-processprescriptionreason-request.md) | Logisk modell för requestparametrar i ProcessPrescriptionReason. Registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuell aktivitet eller ordination som ordinationsorsaken kopplas till. En befintlig ordinationsorsak uppdateras genom att ett nytt meddelande med samma id (aktivitetsid eller tillståndsid) skickas in. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna värden för resultatkod (OK/ERROR/INFO) enligt ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](CodeSystem-resultcode-cs.md) | Resultatkod för registrerings-/raderingsoperationer i Infektionsverktyget. Anger utfallet av anropet. |

