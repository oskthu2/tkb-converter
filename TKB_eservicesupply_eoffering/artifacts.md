# Artifacts Summary - eservicesupply: eoffering v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAvailableEServices](StructureDefinition-getavailableeservices.md) | Logisk modell för tjänstekontraktet GetAvailableEServices (RIV-TA urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1). Representerar responsens informationsstruktur.Tjänsten redovisar vilka e-tjänster en vårdenhet (identifierad via HSA-ID) erbjuder (stödtjänst Erbjuden e-tjänst). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Gender (eOffering) — ValueSet](ValueSet-gender-eoffering-vs.md) | Tillåtna värden för kön (gender) i GetAvailableEServices. 1 = Man, 2 = Kvinna. |
| [SecurityLevel — ValueSet](ValueSet-securitylevel-vs.md) | Tillåtna värden för autentiseringsnivå (securitylevel) i GetAvailableEServices, enligt ISO/IEC 29115. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Gender (eOffering)](CodeSystem-gender-eoffering-cs.md) | Kodverk för kön i tjänstekontraktet GetAvailableEServices. Anger om en e-tjänst riktar sig till ett visst kön. |
| [SecurityLevel](CodeSystem-securitylevel-cs.md) | Kodverk för autentiseringsnivåer (Assurance Level, ISO/IEC 29115) i tjänstekontraktet GetAvailableEServices. |

