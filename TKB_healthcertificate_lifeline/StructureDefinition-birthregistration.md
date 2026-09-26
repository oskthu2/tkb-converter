# BirthRegistration — Response - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthRegistration — Response**

## Logical Model: BirthRegistration — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:BirthRegistration |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i BirthRegistration (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.healthcertificate-lifeline|current/StructureDefinition/StructureDefinition-birthregistration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-birthregistration.csv), [Excel](StructureDefinition-birthregistration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "birthregistration",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration",
  "version" : "1.0.0",
  "name" : "BirthRegistration",
  "title" : "BirthRegistration — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:27:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i BirthRegistration\n(urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "birthregistration",
      "path" : "birthregistration",
      "short" : "BirthRegistration — Response",
      "definition" : "Logisk modell för svaret i BirthRegistration\n(urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE)."
    },
    {
      "id" : "birthregistration.FodelsesvarId",
      "path" : "birthregistration.FodelsesvarId",
      "short" : "FodelsesvarId",
      "definition" : "FodelsesvarId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.AnmalningsId",
      "path" : "birthregistration.AnmalningsId",
      "short" : "AnmalningsId",
      "definition" : "AnmalningsId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.PersonNummer",
      "path" : "birthregistration.PersonNummer",
      "short" : "PersonNummer",
      "definition" : "Tilldelat personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.Meddelande",
      "path" : "birthregistration.Meddelande",
      "short" : "Meddelande",
      "definition" : "Indikerar orsaken till att personnummer ej tilldelats.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "birthregistration.Meddelande.AnmalanMottagen",
      "path" : "birthregistration.Meddelande.AnmalanMottagen",
      "short" : "AnmalanMottagen",
      "definition" : "Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/healthcertificate-lifeline/ValueSet/lifeline-anmalanmottagen-vs"
      }
    },
    {
      "id" : "birthregistration.Meddelande.MeddelandeKod",
      "path" : "birthregistration.Meddelande.MeddelandeKod",
      "short" : "MeddelandeKod",
      "definition" : "Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "birthregistration.Meddelande.MeddelandeText",
      "path" : "birthregistration.Meddelande.MeddelandeText",
      "short" : "MeddelandeText",
      "definition" : "Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.result",
      "path" : "birthregistration.result",
      "short" : "result",
      "definition" : "Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "birthregistration.result.resultCode",
      "path" : "birthregistration.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/healthcertificate-lifeline/ValueSet/lifeline-resultcodeenum-vs"
      }
    },
    {
      "id" : "birthregistration.result.infoText",
      "path" : "birthregistration.result.infoText",
      "short" : "infoText",
      "definition" : "infoText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.result.errorId",
      "path" : "birthregistration.result.errorId",
      "short" : "errorId",
      "definition" : "errorId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/healthcertificate-lifeline/ValueSet/lifeline-erroridenum-vs"
      }
    },
    {
      "id" : "birthregistration.result.errorText",
      "path" : "birthregistration.result.errorText",
      "short" : "errorText",
      "definition" : "errorText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
