# UnlinkPersonIdentity — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnlinkPersonIdentity — Response**

## Logical Model: UnlinkPersonIdentity — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:UnlinkPersonIdentity |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UnlinkPersonIdentity (urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-unlinkpersonidentity.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unlinkpersonidentity.csv), [Excel](StructureDefinition-unlinkpersonidentity.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unlinkpersonidentity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity",
  "version" : "4.0",
  "name" : "UnlinkPersonIdentity",
  "title" : "UnlinkPersonIdentity — Response",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unlinkpersonidentity",
      "path" : "unlinkpersonidentity",
      "short" : "UnlinkPersonIdentity — Response",
      "definition" : "Logisk modell för svaret i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityResponseType)."
    },
    {
      "id" : "unlinkpersonidentity.result",
      "path" : "unlinkpersonidentity.result",
      "short" : "ResultType",
      "definition" : "Result status för om tjänsten utfördes. För felkoder, se datatyp resultType",
      "comment" : "TKB-fält: `result` (`urn:riv:strategicresourcemanagement:persons:person:5:ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "unlinkpersonidentity.result.resultCode",
      "path" : "unlinkpersonidentity.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, ERROR.",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-resultcode-vs"
      }
    },
    {
      "id" : "unlinkpersonidentity.result.resultText",
      "path" : "unlinkpersonidentity.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
