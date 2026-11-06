# Artifacts Summary - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ActorType](StructureDefinition-ActorType.md) | Medarbetare i vård och omsorg (xs:complexType.) |
| [CVType](StructureDefinition-CVType.md) | Referens till ett begrepp i ett externt kodverk. (xs:complexType.) |
| [DatePeriodType](StructureDefinition-DatePeriodType.md) | Datumintervall med minst ett start- eller slutdatum. (xs:complexType.) |
| [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md) | Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.) |
| [IIType](StructureDefinition-IIType.md) | Unik identifierare för ett objekt eller en entitet. (xs:complexType.) |
| [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.md) | Signatur och uppgifter om signerande person. (xs:complexType.) |
| [MultimediaType](StructureDefinition-MultimediaType.md) | Multimediaobjekt som binärdata eller extern referens. (xs:complexType.) |
| [OrgUnitType](StructureDefinition-OrgUnitType.md) | Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.) |
| [PQIntervalType](StructureDefinition-PQIntervalType.md) | Intervall av mätbara värden med enhet. (xs:complexType.) |
| [PQType](StructureDefinition-PQType.md) | Mätbart värde med enhet. (xs:complexType.) |
| [PartialDateType](StructureDefinition-PartialDateType.md) | Datum med variabel noggrannhet. (xs:complexType.) |
| [PersonIdType](StructureDefinition-PersonIdType.md) | Identifierare för en person och typ av identifierare. (xs:complexType.) |
| [ResultType](StructureDefinition-ResultType.md) | Resultatkod och valfri text för logiska fel. (xs:complexType.) |
| [TimePeriodType](StructureDefinition-TimePeriodType.md) | Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.) |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DateType](StructureDefinition-DateType.md) | Datum på formatet YYYYMMDD utan tidszon. (xs:simpleType, restriktion av xs:string.) |
| [DecimalPrimitiveType](StructureDefinition-DecimalPrimitiveType.md) | Decimaltal som bevarar signifikanta avslutande nollor. (xs:simpleType, restriktion av xs:string.) |
| [HSAIdType](StructureDefinition-HSAIdType.md) | HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. (xs:simpleType, restriktion av xs:string.) |
| [PartialDateValueType](StructureDefinition-PartialDateValueType.md) | Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. (xs:simpleType, restriktion av xs:string.) |
| [TimeStampType](StructureDefinition-TimeStampType.md) | Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. (xs:simpleType, restriktion av xs:string.) |
| [UUIDType](StructureDefinition-UUIDType.md) | Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. (xs:simpleType, restriktion av xs:string.) |

