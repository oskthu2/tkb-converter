# GetEmployee — Request - infrastructure: directory: employee v4.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployee — Request**

## Logical Model: GetEmployee — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee-request | *Version*:4.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetEmployeeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetEmployee (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4). Är identisk med GetEmployeeIncludingProtectedPersonRequest förutom att skyddade personer aldrig returneras. OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-employee|current/StructureDefinition/StructureDefinition-getemployee-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getemployee-request.csv), [Excel](StructureDefinition-getemployee-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getemployee-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee-request",
  "version" : "4.0.0",
  "name" : "GetEmployeeRequest",
  "title" : "GetEmployee — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:59:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetEmployee\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).\nÄr identisk med GetEmployeeIncludingProtectedPersonRequest förutom att\nskyddade personer aldrig returneras.\nOBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployee-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployee-request",
      "path" : "getemployee-request",
      "short" : "GetEmployee — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetEmployee\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).\nÄr identisk med GetEmployeeIncludingProtectedPersonRequest förutom att\nskyddade personer aldrig returneras.\nOBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1)."
    },
    {
      "id" : "getemployee-request.personHsaId",
      "path" : "getemployee-request.personHsaId",
      "short" : "Sökt persons HSA-id",
      "definition" : "Sökt persons HSA-id. Ref. HSA-id (hsaIdentity) [R5].\nKardinalitet: Villkorlig (*1) — exakt ett av personHsaId/personalIdentityNumber ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee-request.personalIdentityNumber",
      "path" : "getemployee-request.personalIdentityNumber",
      "short" : "Sökt persons Person-id (personnummer eller samordningsnummer)",
      "definition" : "Sökt persons Person-id. Ref. person-id (personalIdentityNumber) [R5].\nKardinalitet: Villkorlig (*1) — exakt ett av personHsaId/personalIdentityNumber ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee-request.searchBase",
      "path" : "getemployee-request.searchBase",
      "short" : "Sökbas (DN)",
      "definition" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployee-request.includeFeignedObject",
      "path" : "getemployee-request.includeFeignedObject",
      "short" : "Inkludera fingerade objekt",
      "definition" : "true: om metoden ska leverera svar med fingerade objekt. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getemployee-request.profile",
      "path" : "getemployee-request.profile",
      "short" : "Profilval för returnerade attribut (BASIC, TITLE, CONTACT, FULL, extended1)",
      "definition" : "Anger vilka attribut som returneras i svaret.\nOm värdet utelämnas antas FULL. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
