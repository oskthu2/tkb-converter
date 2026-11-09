# HandleHospCertificationPerson - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HandleHospCertificationPerson**

## Logical Model: HandleHospCertificationPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:HandleHospCertificationPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet HandleHospCertificationPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1). Representerar responsens informationsstruktur. Används för att lägga till eller ta bort personobjekt från kommande utlämningsförfrågningar av HOSP-information till Socialstyrelsen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-handlehospcertificationperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-handlehospcertificationperson.csv), [Excel](StructureDefinition-handlehospcertificationperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "handlehospcertificationperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson",
  "version" : "1.0",
  "name" : "HandleHospCertificationPerson",
  "title" : "HandleHospCertificationPerson",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet HandleHospCertificationPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1).\nRepresenterar responsens informationsstruktur. Används för att lägga till eller ta bort\npersonobjekt från kommande utlämningsförfrågningar av HOSP-information till Socialstyrelsen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "handlehospcertificationperson",
      "path" : "handlehospcertificationperson",
      "short" : "HandleHospCertificationPerson",
      "definition" : "Logisk modell för tjänstekontraktet HandleHospCertificationPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1).\nRepresenterar responsens informationsstruktur. Används för att lägga till eller ta bort\npersonobjekt från kommande utlämningsförfrågningar av HOSP-information till Socialstyrelsen."
    },
    {
      "id" : "handlehospcertificationperson.resultCode",
      "path" : "handlehospcertificationperson.resultCode",
      "short" : "resultCode",
      "definition" : "Resultat av ett \"add\" eller \"remove\"-anrop (OK eller ERROR).",
      "comment" : "TKB-fält: `resultCode` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "handlehospcertificationperson.resultText",
      "path" : "handlehospcertificationperson.resultText",
      "short" : "resultText",
      "definition" : "Beskrivning av fel vid resultCode=ERROR.",
      "comment" : "TKB-fält: `resultText` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
