# Artifacts Summary - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelExtendedPatientRelation](StructureDefinition-cancelextendedpatientrelation.md) | Logisk modell för tjänstekontraktet CancelExtendedPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1). Representerar responsens informationsstruktur — status för om återkallelsen utfördes. |
| [CancelExtendedPatientRelation — Request](StructureDefinition-cancelextendedpatientrelation-request.md) | Logisk modell för requestparametrar i CancelExtendedPatientRelation. |
| [CheckPatientRelation](StructureDefinition-checkpatientrelation.md) | Logisk modell för tjänstekontraktet CheckPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1). Representerar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör. |
| [CheckPatientRelation — Request](StructureDefinition-checkpatientrelation-request.md) | Logisk modell för requestparametrar i CheckPatientRelation. |
| [DeleteExtendedPatientRelation](StructureDefinition-deleteextendedpatientrelation.md) | Logisk modell för tjänstekontraktet DeleteExtendedPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1). Representerar responsens informationsstruktur — status för om makuleringen utfördes. |
| [DeleteExtendedPatientRelation — Request](StructureDefinition-deleteextendedpatientrelation-request.md) | Logisk modell för requestparametrar i DeleteExtendedPatientRelation. |
| [GetExtendedPatientRelationsForPatient](StructureDefinition-getextendedpatientrelationsforpatient.md) | Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient (RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1). Representerar responsens informationsstruktur — patientrelationer med utökad information (registrerings-, återkallelse- och makuleringsinformation). |
| [GetExtendedPatientRelationsForPatient — Request](StructureDefinition-getextendedpatientrelationsforpatient-request.md) | Logisk modell för requestparametrar i GetExtendedPatientRelationsForPatient. |
| [GetPatientRelationsForCareProvider](StructureDefinition-getpatientrelationsforcareprovider.md) | Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1). Representerar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare, med stöd för paginering via HasMore/MoreOnOrAfter. |
| [GetPatientRelationsForCareProvider — Request](StructureDefinition-getpatientrelationsforcareprovider-request.md) | Logisk modell för requestparametrar i GetPatientRelationsForCareProvider. |
| [GetPatientRelationsForPatient](StructureDefinition-getpatientrelationsforpatient.md) | Logisk modell för tjänstekontraktet GetPatientRelationsForPatient (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1). Representerar responsens informationsstruktur — lista med giltiga patientrelationer för en patient. |
| [GetPatientRelationsForPatient — Request](StructureDefinition-getpatientrelationsforpatient-request.md) | Logisk modell för requestparametrar i GetPatientRelationsForPatient. |
| [RegisterExtendedPatientRelation](StructureDefinition-registerextendedpatientrelation.md) | Logisk modell för tjänstekontraktet RegisterExtendedPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1). Representerar responsens informationsstruktur — status för om registreringen utfördes. |
| [RegisterExtendedPatientRelation — Request](StructureDefinition-registerextendedpatientrelation-request.md) | Logisk modell för requestparametrar i RegisterExtendedPatientRelation. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna svarskoder för tjänstekontrakt i ehr:patientrelationship. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](CodeSystem-resultcode-cs.md) | Svarskoder för tjänstekontrakt i ehr:patientrelationship. Anger status för utförda operationer. |

