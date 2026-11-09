# BirthRegistration — Response - healthcertificate: lifeline v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthRegistration — Response**

## Logical Model: BirthRegistration — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:BirthRegistration |
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
  "version" : "1.0",
  "name" : "BirthRegistration",
  "title" : "BirthRegistration — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:33:43+00:00",
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
      "definition" : "Logisk modell för svaret i BirthRegistration\n(urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE).",
      "constraint" : [{
        "key" : "birthregistration-choice-1",
        "severity" : "error",
        "human" : "Exakt ett av PersonNummer, Meddelande ska anges (xs:choice i schemat).",
        "expression" : "PersonNummer.exists() xor Meddelande.exists()",
        "source" : "https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration"
      },
      {
        "key" : "birthregistration-personnummer-or-meddelande",
        "severity" : "error",
        "human" : "Exakt ett av PersonNummer och Meddelande ska anges i svaret (xs:choice i schemat).",
        "expression" : "PersonNummer.exists() xor Meddelande.exists()",
        "source" : "https://fhir.inera.se/ig/healthcertificate-lifeline/StructureDefinition/birthregistration"
      }]
    },
    {
      "id" : "birthregistration.FodelsesvarId",
      "path" : "birthregistration.FodelsesvarId",
      "short" : "FodelsesvarId",
      "definition" : "Unikt id. Unikt id som sätts av tjänsteproducent",
      "comment" : "TKB-fält: `FodelsesvarId` (`string`, kardinalitet 1..1).",
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
      "definition" : "Det anmälnings-id som vården angett som identitet för den aktuella födelseanmälan. Max 80 tecken.",
      "comment" : "TKB-fält: `AnmalningsId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.PersonNummer",
      "path" : "birthregistration.PersonNummer",
      "short" : "Tilldelat personnummer",
      "definition" : "Barnets fullständiga personnummer som Skatteverket tilldelat det nyfödda barnet..\n\nSekel inkluderat. 12 tecken.\n\nÅÅÅÅMMDDXXXX.",
      "comment" : "TKB-fält: `PersonNummer` (`long`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.Meddelande",
      "path" : "birthregistration.Meddelande",
      "short" : "MeddelandeTYPE",
      "definition" : "I de fall ett personnummer inte kunde tilldelas barnet levererar Skatteverket ett orsaksmeddelande istället.",
      "comment" : "TKB-fält: `/BirthRegistrationResponse/Meddelande` (kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** Indikerar orsaken till att personnummer ej tilldelats.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "birthregistration.Meddelande.AnmalanMottagen",
      "path" : "birthregistration.Meddelande.AnmalanMottagen",
      "short" : "Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen.",
      "definition" : "\"JA\" anger att anmälan är mottagen av Skatteverket och \"NEJ\" att anmälan inte har mottagits.\n\nEn mottagen anmälan ska INTE sändas in igen. En anmälan som Skatteverket inte kunnat ta emot får sändas om.\n\nFår endast ha värde\n\n\"JA\"\n\n\"NEJ\"",
      "comment" : "TKB-fält: `AnmalanMottagen` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.Meddelande.MeddelandeKod",
      "path" : "birthregistration.Meddelande.MeddelandeKod",
      "short" : "Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number",
      "definition" : "MeddelandeKod indikerar orsaken till att ett personnummer inte returnerats.\n\nFörteckning över förekommande koder och beskrivning, se rubrik \"Lista över meddelandekoder\".\n\nVärde inom intervallet givet av tabell med meddlandekoder.",
      "comment" : "TKB-fält: `MeddelandeKod` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "birthregistration.Meddelande.MeddelandeText",
      "path" : "birthregistration.Meddelande.MeddelandeText",
      "short" : "Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning",
      "definition" : "Text som ger ytterligare information utöver MeddelandeKod om felorsak. Endast avsedd att nyttjas vid utveckling/felsökning.",
      "comment" : "TKB-fält: `MeddelandeText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "birthregistration.result",
      "path" : "birthregistration.result",
      "short" : "ResultOfCallType",
      "definition" : "Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error.",
      "comment" : "TKB-fält: `result` (`ResultOfCallType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "birthregistration.result.resultCode",
      "path" : "birthregistration.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, ERROR, INFO.",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnumType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO.",
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
      "comment" : "TKB-fält: `../infoText` (`string`, kardinalitet 0..1).",
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
      "definition" : "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR.",
      "comment" : "TKB-fält: `../errorId` (`ErrorIdEnumType`, kardinalitet 0..1).\n\n**Modellanteckning:** errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR.",
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
      "comment" : "TKB-fält: `../errorText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
