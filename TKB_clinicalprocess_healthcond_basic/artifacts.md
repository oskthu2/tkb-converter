# Artifacts Summary - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetObservations](StructureDefinition-getobservations.md) | Logisk modell för tjänstekontraktet GetObservations 1.2 (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse). Representerar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient, utförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer (TKB avsnitt 5.1) motsvarar svarsmeddelandet. |
| [GetObservations — Request](StructureDefinition-getobservations-request.md) | Logisk modell för begäran i tjänstekontraktet GetObservations 1.2 (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations). Den enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1). En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AddressPartTypeEnum — ValueSet](ValueSet-addressparttype-vs.md) | Tillåtna värden enligt AddressPartTypeEnum. |
| [PostalAddressUseEnum — ValueSet](ValueSet-postaladdressuse-vs.md) | Tillåtna värden enligt PostalAddressUseEnum. |
| [TelTypeEnum — ValueSet](ValueSet-teltype-vs.md) | Tillåtna värden enligt TelTypeEnum. |
| [TimeStampTypeFormatEnum — ValueSet](ValueSet-timestamptypeformat-vs.md) | Tillåtna värden enligt TimeStampTypeFormatEnum. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AddressPartTypeEnum](CodeSystem-addressparttype-cs.md) | Typ av adressdel (AddressPartType.type), baserat på ISO 21090. Källa: AddressPartTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. |
| [PostalAddressUseEnum](CodeSystem-postaladdressuse-cs.md) | Användningskod för adress (AddressType.use). Källa: PostalAddressUseEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. |
| [TelTypeEnum](CodeSystem-teltype-cs.md) | Typ av elektronisk adress (TelType.use). Källa: TelTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. |
| [TimeStampTypeFormatEnum](CodeSystem-timestamptypeformat-cs.md) | Precision för en tidpunkt med varierande precision (PartialTimeStampType.format). Källa: TimeStampTypeFormatEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. |

