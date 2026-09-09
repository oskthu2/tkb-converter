# Artifacts Summary - ehr: commission v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetCommissionsForPerson](StructureDefinition-getcommissionsforperson.md) | Logisk modell för tjänstekontraktet GetCommissionsForPerson (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1). Representerar responsens informationsstruktur (GetCommissionsForPersonResult).Tjänsten hämtar alla medarbetaruppdrag som personen är kopplad till, returnerar det senast valda uppdraget och anger om ett uppdrag valts inom de senaste 12 timmarna. |
| [GetCommissionsForPerson — Request](StructureDefinition-getcommissionsforperson-request.md) | Logisk modell för requestparametrar i GetCommissionsForPerson (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).Exakt ett av fälten personalHsaId och personalIdentityNumber ska anges. Om inget av dessa anges, eller om värdet är ogiltigt, returneras statuskod VALIDATIONERROR. |
| [SetSelectedCommissionForPerson](StructureDefinition-setselectedcommissionforperson.md) | Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1). Representerar responsens informationsstruktur (Result).Tjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person. Valet är aktuellt under nästkommande 12 timmar. Möjlighet finns att nollställa valet genom att utelämna commissionHsaId. |
| [SetSelectedCommissionForPerson — Request](StructureDefinition-setselectedcommissionforperson-request.md) | Logisk modell för requestparametrar i SetSelectedCommissionForPerson (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).Exakt ett av fälten personalHsaId och personalIdentityNumber ska anges. commissionHsaId är valfritt — om det utelämnas nollställs valet (t.ex. vid utloggning). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna svarskoder för ResultType.ResultCode i ehr:commission-tjänsterna. Inkluderar alla koder från ResultCodeCS-kodverket. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](CodeSystem-resultcode-cs.md) | Enumerationsvärden för svarskoder som används i ehr:commission-tjänsterna. Kodverket definierar möjliga utfall av ett tjänsteanrop (ResultType.ResultCode). Källa: TKB ehr:commission v1.0, avsnitt Datatyper — commissionservice:ResultCode. XSD: urn:riv:ehr:commission:1, typ ResultCodeType. |

