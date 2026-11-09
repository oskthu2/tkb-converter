# Artifacts Summary - clinicalprocess: activity: actions v1.3.4

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetActivities](StructureDefinition-getactivities.md) | Logisk modell för tjänstekontraktet GetActivities (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1). Representerar responsens informationsstruktur — en lista av activityGroup-element. |
| [GetActivities — Request](StructureDefinition-getactivities-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetActivities (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1). Den enda obligatoriska sökparametern är patientId. Övriga parametrar är valfria filter (se Regel 1.1). |
| [IIType](StructureDefinition-IIType.md) | IIType enligt domänens schema: den gemensamma RIV-TA-typen IIType med snävare kardinalitet. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PartialTimeStampValueType](StructureDefinition-PartialTimeStampValueType.md) | YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss (xs:simpleType i domänens schema.) |
| [UUIDType](StructureDefinition-UUIDType.md) | UUIDType (xs:simpleType i domänens schema.) |

