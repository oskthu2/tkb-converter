# LegalAuthenticatorType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LegalAuthenticatorType**

## Logical Model: LegalAuthenticatorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/LegalAuthenticatorType | *Version*:1.0.0 |
| Active as of 2026-11-06 | *Computable Name*:LegalAuthenticatorType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Signatur och uppgifter om signerande person. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-LegalAuthenticatorType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LegalAuthenticatorType.csv), [Excel](StructureDefinition-LegalAuthenticatorType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LegalAuthenticatorType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/LegalAuthenticatorType",
  "version" : "1.0.0",
  "name" : "LegalAuthenticatorType",
  "title" : "LegalAuthenticatorType",
  "status" : "active",
  "date" : "2026-11-06T20:56:47+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Signatur och uppgifter om signerande person. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/LegalAuthenticatorType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LegalAuthenticatorType",
      "path" : "LegalAuthenticatorType",
      "short" : "LegalAuthenticatorType",
      "definition" : "Signatur och uppgifter om signerande person. (xs:complexType.)"
    },
    {
      "id" : "LegalAuthenticatorType.signatureTime",
      "path" : "LegalAuthenticatorType.signatureTime",
      "short" : "signatureTime",
      "definition" : "signatureTime Typ i schemat: TimeStampType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "LegalAuthenticatorType.legalAuthenticatorHSAId",
      "path" : "LegalAuthenticatorType.legalAuthenticatorHSAId",
      "short" : "legalAuthenticatorHSAId",
      "definition" : "legalAuthenticatorHSAId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "LegalAuthenticatorType.legalAuthenticatorName",
      "path" : "LegalAuthenticatorType.legalAuthenticatorName",
      "short" : "legalAuthenticatorName",
      "definition" : "legalAuthenticatorName Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LegalAuthenticatorType.legalAuthenticatorRoleCode",
      "path" : "LegalAuthenticatorType.legalAuthenticatorRoleCode",
      "short" : "legalAuthenticatorRoleCode",
      "definition" : "legalAuthenticatorRoleCode Typ i schemat: CVType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    }]
  }
}

```
