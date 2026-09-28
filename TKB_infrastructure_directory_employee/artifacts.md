# Artifacts Summary - infrastructure: directory: employee v4.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetCommissionMembers](StructureDefinition-getcommissionmembers.md) | Logisk modell för tjänstekontraktet GetCommissionMembers (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembers:3). Representerar responsens informationsstruktur. Är identisk med GetCommissionMembersIncludingProtectedPerson förutom att skyddade personer aldrig returneras — fältet protectedPerson returneras alltså aldrig. |
| [GetCommissionMembers — Request](StructureDefinition-getcommissionmembers-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetCommissionMembers (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembers:3). Är identisk med GetCommissionMembersIncludingProtectedPersonRequest förutom att skyddade personer aldrig returneras. |
| [GetCommissionMembersIncludingProtectedPerson](StructureDefinition-getcommissionmembersincludingprotectedperson.md) | Logisk modell för tjänstekontraktet GetCommissionMembersIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3). Representerar responsens informationsstruktur. Returnerar information om personer kopplade till vårdmedarbetaruppdrag för angiven vårdenhet, inklusive skyddade personer. |
| [GetCommissionMembersIncludingProtectedPerson — Request](StructureDefinition-getcommissionmembersincludingprotectedperson-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetCommissionMembersIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3). |
| [GetEmployee](StructureDefinition-getemployee.md) | Logisk modell för tjänstekontraktet GetEmployee (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4). Representerar responsens informationsstruktur. Är identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer aldrig returneras — fältet protectedPerson returneras alltså aldrig. |
| [GetEmployee — Request](StructureDefinition-getemployee-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetEmployee (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4). Är identisk med GetEmployeeIncludingProtectedPersonRequest förutom att skyddade personer aldrig returneras. OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1). |
| [GetEmployeeIncludingProtectedPerson](StructureDefinition-getemployeeincludingprotectedperson.md) | Logisk modell för tjänstekontraktet GetEmployeeIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4). Representerar responsens informationsstruktur (PersonInformationType). Returnerar information om en angiven person inklusive skyddade personer. |
| [GetEmployeeIncludingProtectedPerson — Request](StructureDefinition-getemployeeincludingprotectedperson-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetEmployeeIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4). OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1). |

