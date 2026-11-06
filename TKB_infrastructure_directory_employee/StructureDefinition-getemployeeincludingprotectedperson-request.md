# GetEmployeeIncludingProtectedPerson — Request - infrastructure: directory: employee v4.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployeeIncludingProtectedPerson — Request**

## Logical Model: GetEmployeeIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployeeincludingprotectedperson-request | *Version*:4.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetEmployeeIncludingProtectedPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetEmployeeIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4). OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-employee|current/StructureDefinition/StructureDefinition-getemployeeincludingprotectedperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getemployeeincludingprotectedperson-request.csv), [Excel](StructureDefinition-getemployeeincludingprotectedperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getemployeeincludingprotectedperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployeeincludingprotectedperson-request",
  "version" : "4.0",
  "name" : "GetEmployeeIncludingProtectedPersonRequest",
  "title" : "GetEmployeeIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:29:37+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetEmployeeIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4).\nOBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployeeincludingprotectedperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployeeincludingprotectedperson-request",
      "path" : "getemployeeincludingprotectedperson-request",
      "short" : "GetEmployeeIncludingProtectedPerson — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetEmployeeIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4).\nOBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1).",
      "constraint" : [{
        "key" : "getemployeeincludingprotectedperson-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId och personalIdentityNumber ska anges.",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getemployeeincludingprotectedperson-request"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.personHsaId",
      "path" : "getemployeeincludingprotectedperson-request.personHsaId",
      "short" : "Sökt persons HSA-id",
      "definition" : "Sökt persons HSA-id.\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.personalIdentityNumber",
      "path" : "getemployeeincludingprotectedperson-request.personalIdentityNumber",
      "short" : "Sökt persons Person-id (personnummer eller samordningsnummer)",
      "definition" : "Sökt persons Person-id (personnummer eller samordningsnummer). Ref. person-id (personalIdentityNumber) [R5]",
      "comment" : "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.searchBase",
      "path" : "getemployeeincludingprotectedperson-request.searchBase",
      "short" : "Sökbas (DN)",
      "definition" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "comment" : "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.includeFeignedObject",
      "path" : "getemployeeincludingprotectedperson-request.includeFeignedObject",
      "short" : "Inkludera fingerade objekt",
      "definition" : "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.",
      "comment" : "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.profile",
      "path" : "getemployeeincludingprotectedperson-request.profile",
      "short" : "Profilval för returnerade attribut (BASIC, TITLE, CONTACT, FULL, extended1)",
      "definition" : "Anger vilka attribut som returneras i svaret. Värde kan skrivas med både stora och/eller små bokstäver. Om värdet utelämnas antas värdet vara FULL. Följande värden kan användas: BASIC, TITLE, CONTACT, FULL, extended1.",
      "comment" : "TKB-fält: `profile` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Anger vilka attribut som returneras i svaret.\nBASIC: personHsaId, givenName, middleAndSurName, nickname, dn, protectedPerson, feignedPerson.\nTITLE: Alla BASIC-attribut samt description, title, healthCareProfessionalLicence, m.fl.\nCONTACT: Alla BASIC-attribut samt mail, telefonnummer, adress m.fl.\nFULL: Alla BASIC-, TITLE- och CONTACT-attribut.\nextended1: Alla FULL-attribut samt age och gender.\nOm värdet utelämnas antas FULL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
