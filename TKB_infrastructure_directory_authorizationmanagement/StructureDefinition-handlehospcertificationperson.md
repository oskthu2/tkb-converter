# HandleHospCertificationPerson - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HandleHospCertificationPerson**

## Logical Model: HandleHospCertificationPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:HandleHospCertificationPerson |
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
  "version" : "2.4.4",
  "name" : "HandleHospCertificationPerson",
  "title" : "HandleHospCertificationPerson",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
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
      "short" : "Resultat av add eller remove-anrop (OK eller ERROR)",
      "definition" : "Resultat av add eller remove-anrop (OK eller ERROR)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "handlehospcertificationperson.resultText",
      "path" : "handlehospcertificationperson.resultText",
      "short" : "Beskrivning av fel vid resultCode=ERROR",
      "definition" : "Beskrivning av fel vid resultCode=ERROR",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
